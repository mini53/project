package project.vo;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TeamVo {

	private String teamname;
	private String category;
	private String theme;
	private String goal;
	private String content;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date sdate;
	
	private int times;
	private int weekend;
	private Date ddate;
	
	private int numbers;
	private String userid;
	
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public void setTimes(String times) {
		this.times = Integer.parseInt(times);
	}
	public int getWeekend() {
		return weekend;
	}
	public void setWeekend(String weekend) {
		this.weekend = Integer.parseInt(weekend);
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
	public void setNumbers(String numbers) {
		this.numbers = Integer.parseInt(numbers);
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "TeamVo [teamname=" + teamname + ", category=" + category + ", theme=" + theme + ", goal=" + goal
				+ ", content=" + content + ", sdate=" + sdate + ", times=" + times + ", weekend=" + weekend + ", ddate="
				+ ddate + ", numbers=" + numbers + ", userid=" + userid + "]";
	}
	
	

	
}
