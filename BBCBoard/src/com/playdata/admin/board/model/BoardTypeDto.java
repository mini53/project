package com.playdata.admin.board.model;
//무슨게시판인지 타입으로 알려주는 dto
public class BoardTypeDto {

	private int btype;
	private String btypeName;

	public int getBtype() {
		return btype;
	}

	public void setBtype(int btype) {
		this.btype = btype;
	}

	public String getBtypeName() {
		return btypeName;
	}

	public void setBtypeName(String btypeName) {
		this.btypeName = btypeName;
	}

}
