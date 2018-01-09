package project.entity;

import java.util.Date;

// 한 스터디가 생성 되었을시 매 회차에 따른 각 멤버별 출결관리 테이블
// 팀 스케줄러에 띄워주기 위함.
public class AbsentDto {
	private int id; // team의 고유id , team 테이블에서 가져옴
	private int round; // 스터디의 해당 횟차, round 테이블에서 가져옴
	private String userid; // 해당 id 또는 등록한 id(등록자는 팀 리더만 가능)
	private int absent; // 불참석 여부 
	private Date edate; // 등록한 날짜
	private Date mdate; // 수정한 날짜
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
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getAbsent() {
		return absent;
	}
	public void setAbsent(int absent) {
		this.absent = absent;
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
	
	
	
}
