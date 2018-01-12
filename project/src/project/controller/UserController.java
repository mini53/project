package project.controller;


import java.beans.PropertyEditorSupport;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import project.biz.TeamBiz;
import project.biz.UserBiz;
import project.dao.UserDao;
import project.vo.TeamVo;
import project.vo.UserVo;

@Controller
public class UserController {
	@Autowired
	private UserBiz userbiz;

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
	
	@RequestMapping(value = "/UserNameCheck.do", method=RequestMethod.POST)
	public @ResponseBody ModelAndView test(@RequestParam("username") String username) {
		System.out.println("여기 옴 " + username);
		String res = userbiz.UserNameCheck(username);
		System.out.println("컨트롤러 중복 결과 " + res);
		ModelAndView mv = new ModelAndView("joinform", "res", res);
		return mv;
	}
}
