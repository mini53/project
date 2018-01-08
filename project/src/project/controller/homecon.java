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


	@RequestMapping(value = "/loginform.do", method = RequestMethod.GET)
	public String loginform(Model model) {
		System.out.println("È®ÀÎ¿ë");
		String str = "heool";
		model.addAttribute("first", str);
		return "loginform";
	}
	
	@RequestMapping(value ="/login.do", method = RequestMethod.GET)
	public ModelAndView loginexcute(@RequestParam("id") String Id, @RequestParam("pwd") String pwd) {
		
		String id = Id;
		
		ModelAndView mv = new ModelAndView("index", "userid", Id);
		return mv;
	}
}	
