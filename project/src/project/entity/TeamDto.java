package project.entity;

import java.util.Date;

// ���� �����Ҷ� �����Ǵ� ���̺�
// ���� ���� �Ǵ��� ����� ����� ���� ��� �Ǵ� �������� ��찡 ����
public class TeamDto {
	private int id; // �������� ��������� ����id ��
	private String tname; // ���� ���� �̸�, ����ũ!
	private int status; // ���ǻ���, �������� =0, ������1 , ����3, ��������:5, ��������7, ���(����) 9
	private String tcategory; // ���� �о� : �츮�� ����������ϴµ� �����? 
	private String theme; // ���� ���� : ��)JSP ���� ����
	private String goal; // ���� ��ǥ, �������϶� �ߴ� ��, ��)JSP ���� 1ȸ��, �ǽ� 1ȸ
	private String content; // �� ����
	private Date sdate; // �� �����?
	private int times; // ���� �� Ƚ��
	private int weekend; // ���� ���� ����, �ָ�, ����, �ָ�/����
	private Date ddate; // 
	private int numbers; // �� ����ѿ�
	private String userid; // ����� ����� id, ������ 
	private Date edate; // ��ϳ�¥
	private Date mdate; // ������¥
	private Date cdate; // ���� ��¥
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
