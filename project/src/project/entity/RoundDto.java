package project.entity;

import java.util.Date;

//�� ���� �� ȸ ���͵� �� ����� ����� ���̺�, �����ٷ��� ���� ��.

public class RoundDto {
	private int id; // teamid 
	private int round; // �ش� ���� ����
	private int status; // ����Ʈ 0, ���(����) 9
	private String userid; // ��ΰ� ������ �� ����. �ٸ� ���� �������� ������ ����� �̸����� ����
	private String content; // �ش� ȸ���� ������ ���´�
	private Date ddate; // �������� ������ ��
	private int frtime; // ������ �ð�, 24�ð� ����
	private int totime; // ����ð�
	private String ncontent; // ���� ���?
	private Date edate; // ��Ͻð�
	private Date mdate; // �����ð�
	private Date cdate; // �����ð�
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
