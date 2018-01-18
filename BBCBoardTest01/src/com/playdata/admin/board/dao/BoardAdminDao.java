package com.playdata.admin.board.dao;

import java.util.List;

import com.playdata.admin.board.model.BoardListDto;

public interface BoardAdminDao {
	List<BoardListDto> boardMenu();
	
}
