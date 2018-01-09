package project.entity;

import java.util.Date;

// 팀을 모집할때 생성되는 테이블
// 팀이 생성 되더라도 제대로 만들어 지는 경우 또는 엎어지는 경우가 있음
public class TeamDto {
	private int id; // 팀생성시 만들어지는 고유id 값
	private String tname; // 팀의 고유 이름, 유니크!
	private int status; // 팀의상태, 모집마감 =0, 모집중1 , 실패3, 강제종료:5, 정상종료7, 취소(삭제) 9
	private String tcategory; // 팀의 분야 : 우리가 설정해줘야하는데 힘들듯? 
	private String theme; // 팀의 주제 : 예)JSP 집중 공부
	private String goal; // 팀의 목표, 모집중일때 뜨는 것, 예)JSP 강의 1회독, 실습 1회
	private String content; // 팀 설명
	private Date sdate; // 팀 등록일?
	private int times; // 미팅 총 횟수
	private int weekend; // 미팅 요일 설정, 주말, 평일, 주말/평일
	private Date ddate; // 
	private int numbers; // 팀 멤버총원
	private String userid; // 등록한 사람의 id, 개설자 
	private Date edate; // 등록날짜
	private Date mdate; // 수정날짜
	private Date cdate; // 삭제 날짜
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		status = status;
	}
	public String getTcategory() {
		return tcategory;
	}
	public void setTcategory(String tcategory) {
		this.tcategory = tcategory;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public int getTimes() {
		return times;
	}
	public void setTimes(int times) {
		this.times = times;
	}
	public int getWeekend() {
		return weekend;
	}
	public void setWeekend(int weekend) {
		this.weekend = weekend;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
