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
		List<BoardListDto> list = boardAdminService.boardMenu(); //디비에서 꺼내온값을
		System.out.println("갯수 : " + list.size());
		ServletContext context = request.getServletContext(); //context값을 넣음
		context.setAttribute("boardmenu", list); //ㅣㅐㄴㅅ
		return "redirect:/index.jsp";
	}

}
