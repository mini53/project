package project.entity;

import java.util.Date;

//게시판 테이블
//댓글, 자유게시판, 질문게시판, 공지,전부 커버 하기 위함
// 팀 게시판은 따로
public class BoardDto {
	private int bid; // 보드 테이블 고유값
	private int id; // teamid, team테이블에서 가져온다
	private int status; // 기본 0 값, 삭제시 9값
	private String userid; // 회원정보 키값
	private String title; // 제목
	private String text; // 내용
	private int hit; // 조회수
	private int group; 
	private int step;
	private Date edate; // 등록일 
	private Date cdate; // 삭제일
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getGroup() {
		return group;
	}
	public void setGroup(int group) {
		this.group = group;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	
	
	

}
