


package project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.biz.BoardBiz;
import project.vo.BoardVo;

@Controller
public class BoardController {

	@Autowired
	BoardBiz boardbiz;
	//자유게시판 리스트
	@RequestMapping(value="/board.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView BoardList(BoardVo vo) {
		System.out.println("board controller");
		List<BoardVo> boardlist = boardbiz.BoardListSelect(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board");
		mav.addObject("boardlist",boardlist);
		return mav;
	}
	//자유게시판 글쓰기
	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public String write(BoardVo vo) {
		int num = boardbiz.BoardWrite(vo);
		return "write";
	}
	//자유게시판 글보기
	@RequestMapping(value="/boarddetail.do", method=RequestMethod.GET)
	public ModelAndView boarddetail(int bid) {
		System.out.println("boarddetail RequestMapping");
		List<BoardVo> detail = boardbiz.BoardDetailSelect(bid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boarddetail");
		mav.addObject("detail",detail);
		return mav;
	}
}
