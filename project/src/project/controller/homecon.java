package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.dao.userdao;

@Controller
public class homecon {

	@RequestMapping(value="/introduce.do", method = RequestMethod.GET)
	public String introduce() {
		System.out.println("introduce RequestMapping");
		return "introduce";
	}

	@RequestMapping(value="/board.do", method = RequestMethod.GET)
	public String board() {
		System.out.println("board RequestMapping");
		return "board";
	}
	
	@RequestMapping(value="/contact.do", method = RequestMethod.GET)
	public String contact() {
		System.out.println("contact RequestMapping");
		return "contact";
	}
	
	@RequestMapping(value="/mypage.do", method = RequestMethod.GET)
	public String mypage() {
		System.out.println("mypage RequestMapping");
		return "mypage";
	}
	
	@RequestMapping(value="/mydoing.do", method = RequestMethod.GET)
	public String mydoing() {
		System.out.println("mydoing RequestMapping");
		return "mydoing";
	}
	
	@RequestMapping(value="/mycomplete.do", method = RequestMethod.GET)
	public String mycomplete() {
		System.out.println("mycomplete RequestMapping");
		return "mycomplete";
	}
	
	@RequestMapping(value="/content.do", method = RequestMethod.GET)
	public String content() {
		System.out.println("content RequestMapping");
		return "content";
	}
	
	@RequestMapping(value="/joinform.do", method = RequestMethod.GET)
	public String joinform() {
		System.out.println("joinform RequestMapping");
		return "joinform";
	}
	
	@RequestMapping(value="/loginform.do", method = RequestMethod.GET)
	public String loginform() {
		System.out.println("loginform RequestMapping");
		return "loginform";
	}
}
