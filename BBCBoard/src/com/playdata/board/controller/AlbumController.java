package com.playdata.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.playdata.board.model.AlbumDto;
import com.playdata.board.service.AlbumService;
import com.playdata.common.service.CommonService;
import com.playdata.member.model.MemberDto;
import com.playdata.util.BoardConstance;
import com.playdata.util.PageNavigation;

@Controller
@RequestMapping("/album")
public class AlbumController {

	@Autowired
	private CommonService commonService;
	
	@Autowired
	private AlbumService albumService;
	//업로드할 경로를 심어버림
	private String upFolder;

	public AlbumController() {
		this.upFolder = "C:\\git\\BBCBoard\\WebContent\\upload";
	}

	@RequestMapping("/list.playdata")
	public ModelAndView list(@RequestParam Map<String, String> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<AlbumDto> list = albumService.listArticle(map);
		map.put("listsize", BoardConstance.ALBUM_LIST_SIZE + "");
		PageNavigation navigation = commonService.makePageNavigation(map);
		navigation.setRoot(request.getContextPath());
		navigation.setBcode(Integer.parseInt(map.get("bcode")));
		navigation.setKey(map.get("key"));
		navigation.setWord(map.get("word"));
		navigation.setNavigator();
		mav.addObject("articlelist", list);
		mav.addObject("navigator", navigation);
		mav.addObject("querystring", map);
		mav.setViewName("/WEB-INF/album/list");
		return mav;
	}
	//http://localhost:8787/BBCBoard/album/write.playdata?bcode=10&pg=1&key=&word=&seq=
	@RequestMapping(value="/write.playdata", method=RequestMethod.GET)
	public ModelAndView write(@RequestParam Map<String, String> map) {//주소줄에 오는 애들만 map으로 넘겨라
		//map이 아니면 변수 하나하나하나 받아줘야돼
		//querystring: bcode=10&pg=1&key=&word=&seq=
		/*map.put("bcode","10");
		map.put("pg","1");
		map.put("key",null);
		map.put("word",null);
		map.put("seq",null);*/
		ModelAndView mav = new ModelAndView();
		mav.addObject("querystring", map); 
		mav.setViewName("/WEB-INF/album/write"); //write.jsp에 히든에 각각에 값이 대입이 된다.
		return mav;
	}
	//파일의 내용을 다같이 가지고 세션도 줘야돼 사람정보도 가지고 가야돼
	@RequestMapping(value="/write.playdata", method=RequestMethod.POST)
	public ModelAndView write(AlbumDto albumDto, 
			@RequestParam Map<String, String> map,
			HttpSession session) throws IllegalStateException, IOException {
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			int seq = commonService.getNextSeq();
			albumDto.setSeq(seq);
			albumDto.setId(memberDto.getId());
			albumDto.setName(memberDto.getName());
		
			
			DateFormat df = new SimpleDateFormat("yyMMdd");//날짜 형식 지정
			String saveFolder = df.format(new Date());//20180103 //오늘 날짜로 맵핑
			String uploadPath = upFolder + File.separator + saveFolder;//경로를 만들고 File.separator 경로-->/이거  
			File folder = new File(uploadPath);//여기까지가 오늘날짜 폴더생김(지정)
			if(!folder.exists())
				folder.mkdirs(); //mkdirs로 폴더 생성
			albumDto.setSaveFolder(saveFolder);//dto를 통해 디비에 저장
			
			List<MultipartFile> list = albumDto.getUpfile(); //멀티파트파일
			for (MultipartFile multipartFile : list) {
				if(!multipartFile.isEmpty()) {//파일을 경로, 이름, 작성자?그걸로 자른다
					String ofile = multipartFile.getOriginalFilename();
					albumDto.setOriginPicture(ofile);
					String savePicture = UUID.randomUUID().toString() + ofile.substring(ofile.lastIndexOf("."));//12312312.jpg
					albumDto.setSavePicture(savePicture);
					multipartFile.transferTo(new File(uploadPath, savePicture));
				}
			}			
			
			int cnt = albumService.writeArticle(albumDto);
			mav.addObject("querystring", map); //쿼리스트링 반드시 줘야함
			mav.addObject("seq", seq);
			mav.setViewName("/WEB-INF/album/writeOk"); //이 뷰로 쿼리스트링 반드시 가져감
		} else {
			mav.setViewName("/login/login");
		}
		return mav;
	}
	
}
