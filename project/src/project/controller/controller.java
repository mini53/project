package project.controller;


import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.biz.UserBiz;
import project.dao.UserDao;
import project.vo.UserVo;

@Controller
public class controller {
	@Autowired
	private UserBiz userbiz;
	
	@RequestMapping(value = "/index.do")
	public String index() {
		return "index";
	}
	
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

/*	@RequestMapping(value ="/login.do", method = RequestMethod.GET)
	public ModelAndView loginexcute(UserVo vo, HttpSession session) {
		System.out.println("login.do " + vo.toString());
		ModelAndView mav = new ModelAndView();
		boolean name = userbiz.loginCheck(vo, session);
		if(name == true) {
			mav.setViewName("index");
			mav.addObject("loginfo", "success");
			return mav;
		}else {
			mav.setViewName("index");
			mav.addObject("loginfo", "fail");
			return mav;
		}
	}*/
	
/*	@RequestMapping(value ="/register.do", method = RequestMethod.GET)
	public String registerexcute() {
		System.out.println("register execute");
		return "userRegister";
	}*/
	
	@RequestMapping(value ="/UserRegister.do", method = RequestMethod.POST)
	public String UserRegister(UserVo vo) {
		System.out.println("userRegister");
		System.out.println(vo.getCategory());
		int num = userbiz.UserRegister(vo);
		if (num != 0) {
			return "index";
		}else {
			return "joinform";
		}
	}
	
/*	@RequestMapping(value ="/test.do", method = RequestMethod.GET)
	public String test() {
		return "test";
	}*/
	
	// 로그인 기능
	@RequestMapping(value = "/UserLogin.do", method = RequestMethod.POST)
	public ModelAndView UserLogin(UserVo vo, HttpSession session) {
		String str = userbiz.UserLogin(vo, session);
		if(str != null ) {
			ModelAndView mv = new ModelAndView("index", "Check", "success");
			return mv;
		}else {
			ModelAndView mv = new ModelAndView("loginform", "Check", "fail");
			return mv;
		}
	}
	@RequestMapping(value = "/UserLogout.do")
	public String UserLogout(HttpSession session) {
		session.invalidate(); // 세션을 초기화 하고 넘긴다.
		return "index";
	}
	
	@RequestMapping(value = "/test.do")
	public ModelAndView test(@RequestParam("username") String username) {
		System.out.println("여기 옴 " + username);
		String res = userbiz.UserNameCheck(username);
		System.out.println(res);
		ModelAndView mv = new ModelAndView("joinform", "res", res);
		return mv;
	}
	
	@RequestMapping(value="/teammakeform.do", method = RequestMethod.GET)
	public String teammakeform() {
		System.out.println("teammakeform RequestMapping");
		return "teammakeform";
	}
}
