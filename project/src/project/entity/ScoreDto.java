package project.entity;

import java.util.Date;

// 각 회원들의 점수를 토대화 하는 테이블
// 점수 척도를 더 구체화 해야함.
public class ScoreDto {
	private int id; // 해당 팀 id, 
	private String userid; // 평가를 하는 유저
	private String puserid; // 평가를 받는 유저
	private int status; // 취소 9, 팀 상태에 따라서 평가가 가능한지 안한지를 결정해주는 척도
	private int score1; // 성실도...?? 제일 애매함
	private int score2; // 태도(총 평가 - 스터디에 대한 전반적인 태도)
	private int score3; // 참여도(지각 유무, 참석 유무, 의견 제시도 등)
	private int score4; // 스터디 준비성(과제 수행율, 발제 준비 등)
	private Date edate; // 등록일
	private Date cdate; // 삭제일
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPuserid() {
		return puserid;
	}
	public void setPuserid(String puserid) {
		this.puserid = puserid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		status = status;
	}
	public int getScore1() {
		return score1;
	}
	public void setScore1(int score1) {
		score1 = score1;
	}
	public int getScore2() {
		return score2;
	}
	public void setScore2(int score2) {
		score2 = score2;
	}
	public int getScore3() {
		return score3;
	}
	public void setScore3(int score3) {
		score3 = score3;
	}
	public int getScore4() {
		return score4;
	}
	public void setScore4(int score4) {
		score4 = score4;
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
