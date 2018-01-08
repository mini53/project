package project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.biz.userBiz;
import project.dao.userdao;
import project.vo.uservo;

@Controller
public class jake_controller {
	@Autowired
	private userBiz ub;
	@RequestMapping(value = "/loginform.do", method = RequestMethod.GET)
	public String loginform(Model model) {
		System.out.println("È®ÀÎ¿ë");
		String str = "heool";
		model.addAttribute("first", str);
		return "loginform";
	}
	
	@RequestMapping(value ="/login.do", method = RequestMethod.GET)
	public ModelAndView loginexcute(uservo vo, HttpSession session) {
		System.out.println("login.do " + vo.toString());
		ModelAndView mav = new ModelAndView();
		boolean name = ub.loginCheck(vo, session);
		if(name == true) {
			mav.setViewName("index");
			mav.addObject("loginfo", "success");
			return mav;
		}else {
			mav.setViewName("index");
			mav.addObject("loginfo", "fail");
			return mav;
		}
	}
	
	@RequestMapping(value ="/register.do", method = RequestMethod.GET)
	public String registerexcute() {
		System.out.println("register execute");
		return "userRegister";
	}
	
	@RequestMapping(value ="/userRegister.do", method = RequestMethod.POST)
	public String userRegister(uservo vo) {
		System.out.println("userRegister");
		int num = ub.userInsert(vo);
		return "loginform";
	}
	
	@RequestMapping(value ="/test.do", method = RequestMethod.GET)
	public String test() {
		return "test";
	}
	
	
}	
