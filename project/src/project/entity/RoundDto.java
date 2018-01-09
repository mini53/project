package project.entity;

import java.util.Date;

//각 팀이 매 회 스터디 후 결과를 남기는 테이블, 스케줄러와 연동 됨.

public class RoundDto {
	private int id; // teamid 
	private int round; // 해당 미팅 순차
	private int status; // 디폴트 0, 취소(삭제) 9
	private String userid; // 모두가 수정할 수 있음. 다만 가장 마지막ㅁ 수정한 사람의 이름으로 업뎃
	private String content; // 해당 회차의 내용을 적는다
	private Date ddate; // 스케줄을 진행한 날
	private int frtime; // 시작한 시간, 24시간 단위
	private int totime; // 종료시간
	private String ncontent; // 지난 얘기?
	private Date edate; // 등록시간
	private Date mdate; // 수정시간
	private Date cdate; // 삭제시간
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRound() {
		return round;
	}
	public void setRound(int round) {
		this.round = round;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	public int getFrtime() {
		return frtime;
	}
	public void setFrtime(int frtime) {
		this.frtime = frtime;
	}
	public int getTotime() {
		return totime;
	}
	public void setTotime(int totime) {
		this.totime = totime;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	public Date getMdate() {
		return mdate;
	}
	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	
	
}
