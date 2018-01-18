package com.playdata.admin.board.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.playdata.admin.board.model.BoardListDto;
import com.playdata.admin.board.service.BoardAdminService;

@Controller
@RequestMapping("/boardadmin")
public class BoardAdminController {

	@Autowired
	private BoardAdminService boardAdminService;

	@RequestMapping("/boardmenu.playdata") 
	public String boardMenu(HttpServletRequest request) {
		List<BoardListDto> list = boardAdminService.boardMenu();
		System.out.println("개수 : " + list.size());
		ServletContext context = request.getServletContext();
		context.setAttribute("boardmenu", list); 
		return "redirect:/index.jsp";
	}

}
