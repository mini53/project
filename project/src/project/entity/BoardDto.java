package project.entity;

import java.util.Date;

//�Խ��� ���̺�
//���, �����Խ���, �����Խ���, ����,���� Ŀ�� �ϱ� ����
// �� �Խ����� ����
public class BoardDto {
	private int bid; // ���� ���̺� ������
	private int id; // teamid, team���̺��� �����´�
	private int status; // �⺻ 0 ��, ������ 9��
	private String userid; // ȸ������ Ű��
	private String title; // ����
	private String text; // ����
	private int hit; // ��ȸ��
	private int group; 
	private int step;
	private Date edate; // ����� 
	private Date cdate; // ������
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
