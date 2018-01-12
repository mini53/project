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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.biz.TeamBiz;
import project.biz.UserBiz;
import project.dao.UserDao;
import project.vo.TeamVo;
import project.vo.UserVo;

@Controller
public class TeamController {

	@Autowired
	private TeamBiz teambiz;
	
	@RequestMapping(value = "/TeamMakeForm.do")
	public String TeamMakeForm() {
		return "teammakeform";
	}
	
	@RequestMapping(value = "/TeamRegister.do", method = RequestMethod.POST)
	public ModelAndView TeamRegister(TeamVo vo, HttpSession session) {
		System.out.println("이것도 안되나");
		vo.setUserid((String)session.getAttribute("userid"));
		System.out.println("teamRegister" + vo.toString());
		ModelAndView mv = new ModelAndView();
		System.out.println("dd" + vo.getDdate());
		System.out.println("sd" + vo.getSdate());
		int num = teambiz.TeamRegister(vo);
		if(num != 0) {
			mv.setViewName("teammakeform");
			mv.addObject("Check", "ok");
			return mv;
		}else{
			mv.setViewName("teammakeform");
			mv.addObject("Check", "no");
			return mv;
		}
	}
}
