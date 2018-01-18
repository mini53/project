package com.playdata.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.playdata.member.model.MemberDto;

import com.playdata.member.model.service.MemberService;


@Controller
@RequestMapping("/user")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/join.playdata", method=RequestMethod.GET) //가입 후
	public String join() {
		return "redirect:/join/member.jsp";
	}
	
	@RequestMapping(value="/join.playdata", method=RequestMethod.POST) //가입 전, 정보 가리는 것
	public ModelAndView join(MemberDto memberDto) {
		ModelAndView mav = new ModelAndView();
		int cnt = memberService.registerMember(memberDto);
		String viewName = "/index";
		if(cnt != 0) {
			mav.addObject("registerinfo", memberDto);
			viewName = "/WEB-INF/join/registerok";
		}
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value="/login.playdata", method=RequestMethod.GET) 
	public String login() {
		return "redirect:/login/login.jsp";
	}
	
	@RequestMapping(value="/login.playdata", method=RequestMethod.POST) 
	public String login(@RequestParam(value="id", required=true) String id,
			@RequestParam(value="pass", required=true) String pass, HttpServletRequest request, HttpSession session) {//아이디랑 비번을 가지고 간다
		String url = request.getHeader("referer");
		System.out.println(">>>>>>>>>>>>>" + url);
		MemberDto memberDto = memberService.login(id, pass); //디비에 확인해서 있는지없는지 보고
		session.setAttribute("userInfo", memberDto); //session에 id랑 비번을 심어버림 
		if(url.contains("login.jsp"))
			url = "/index.jsp";
		return "redirect:" + url;
	}
	//session의 생명력이계속 살아있다가 끄면 죽음
	@RequestMapping("/logout.playdata") //로그아웃
	public String logout(HttpSession session) {
		session.removeAttribute("userInfo"); //session에 있는 것을 지운다.(아이디, 비번 지움)
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/memberout.playdata") //memberout은 회원탈퇴
	public String memberout(HttpSession session) {
		String id = ((MemberDto) session.getAttribute("userInfo")).getId();
		memberService.deleteMember(id); //회원 탈퇴 디비에서 아애 지우는것
		session.removeAttribute("userInfo");
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/idcheck.playdata")
	public @ResponseBody String idCheck(@RequestParam("sid") String sid) {
		int cnt = memberService.idCheck(sid);
		JSONObject json = new JSONObject();
		json.put("idcount", cnt);
		json.put("sid", sid);
		return json.toJSONString();//{idcount : 0, sid : java2} << json
	}
	
}















