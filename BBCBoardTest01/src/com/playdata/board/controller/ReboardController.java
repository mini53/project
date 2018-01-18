package com.playdata.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.playdata.board.model.ReboardDto;
import com.playdata.board.service.ReboardService;
import com.playdata.common.service.CommonService;
import com.playdata.member.model.MemberDto;
import com.playdata.util.BoardConstance;
import com.playdata.util.PageNavigation;

@Controller
@RequestMapping("/reboard")
public class ReboardController {

	@Autowired
	private ReboardService reboardService;

	@Autowired
	private CommonService commonService;  //Common은 url이 없다

	@RequestMapping("/list.playdata")
	public ModelAndView list(@RequestParam Map<String, String> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<ReboardDto> list = reboardService.listArticle(map);
		map.put("listsize", BoardConstance.BOARD_LIST_SIZE + "");
		PageNavigation navigation = commonService.makePageNavigation(map);
		navigation.setRoot(request.getContextPath());
		navigation.setBcode(Integer.parseInt(map.get("bcode")));
		navigation.setKey(map.get("key"));
		navigation.setWord(map.get("word"));
		navigation.setNavigator();
		mav.addObject("articlelist", list);
		mav.addObject("navigator", navigation);
		mav.addObject("querystring", map);
		mav.setViewName("/WEB-INF/reboard/list");
		return mav;
	}
	//글쓰기 누를때 작동하는 부분
	@RequestMapping(value = "/write.playdata", method = RequestMethod.GET) //form의 데이러를 안가져간다(데이터 x) 
	public ModelAndView write(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("querystring", map);
		mav.setViewName("/WEB-INF/reboard/write");
		return mav;
	}

	@RequestMapping(value = "/write.playdata", method = RequestMethod.POST)
	public ModelAndView write(ReboardDto reboardDto, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if (memberDto != null) {
			int seq = commonService.getNextSeq();
			reboardDto.setSeq(seq);
			reboardDto.setId(memberDto.getId());
			reboardDto.setName(memberDto.getName());
			reboardDto.setEmail("aaa@aaa.com");
			reboardDto.setRef(seq);
			int cnt = reboardService.writeArticle(reboardDto);
			mav.addObject("querystring", map); //url 뒤에 오는 애들
			mav.addObject("seq", seq); //앞에 시퀀스
			mav.setViewName("/WEB-INF/reboard/writeOk"); //게시물이 등록되었습니다. 페이지
		} else {
			mav.setViewName("/login/login");
		}
		return mav;
	}

	@RequestMapping(value = "/view.playdata", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if (memberDto != null) {
			int seq = Integer.parseInt(map.get("seq"));
			ReboardDto reboardDto = reboardService.viewArticle(seq);
			mav.addObject("querystring", map);
			mav.addObject("article", reboardDto);
			mav.setViewName("/WEB-INF/reboard/view");
		} else {
			mav.setViewName("/login/login");
		}
		return mav;
	}

	@RequestMapping(value = "/reply.playdata", method = RequestMethod.GET)
	public ModelAndView reply(@RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if (memberDto != null) {
			int seq = Integer.parseInt(map.get("seq"));
			ReboardDto reboardDto = reboardService.viewArticle(seq);

			mav.addObject("querystring", map);
			mav.addObject("article", reboardDto);
			mav.setViewName("/WEB-INF/reboard/reply");
		} else {
			mav.setViewName("/login/login");
		}
		return mav;
	}

	@RequestMapping(value = "/reply.playdata", method = RequestMethod.POST)
	public ModelAndView reply(ReboardDto reboardDto, @RequestParam Map<String, String> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if (memberDto != null) {
			int seq = commonService.getNextSeq();
			reboardDto.setSeq(seq);
			reboardDto.setId(memberDto.getId());
			reboardDto.setName(memberDto.getName());
			reboardDto.setEmail("abc@com.test");
			int cnt = reboardService.replyArticle(reboardDto);
			mav.addObject("querystring", map);
			mav.addObject("seq", seq);
			mav.setViewName("/WEB-INF/reboard/writeOk");
		} else {
			mav.setViewName("/login/login");
		}
		return mav;
	}

}
