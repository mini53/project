package project.entity;

import java.util.Date;

// �� ���͵� ���� �Ǿ����� �� ȸ���� ���� �� ����� ������ ���̺�
// �� �����ٷ��� ����ֱ� ����.
public class AbsentDto {
	private int id; // team�� ����id , team ���̺��� ������
	private int round; // ���͵��� �ش� Ƚ��, round ���̺��� ������
	private String userid; // �ش� id �Ǵ� ����� id(����ڴ� �� ������ ����)
	private int absent; // ������ ���� 
	private Date edate; // ����� ��¥
	private Date mdate; // ������ ��¥
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
