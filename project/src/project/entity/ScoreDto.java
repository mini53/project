package project.entity;

import java.util.Date;

// �� ȸ������ ������ ���ȭ �ϴ� ���̺�
// ���� ô���� �� ��üȭ �ؾ���.
public class ScoreDto {
	private int id; // �ش� �� id, 
	private String userid; // �򰡸� �ϴ� ����
	private String puserid; // �򰡸� �޴� ����
	private int status; // ��� 9, �� ���¿� ���� �򰡰� �������� �������� �������ִ� ô��
	private int score1; // ���ǵ�...?? ���� �ָ���
	private int score2; // �µ�(�� �� - ���͵� ���� �������� �µ�)
	private int score3; // ������(���� ����, ���� ����, �ǰ� ���õ� ��)
	private int score4; // ���͵� �غ�(���� ������, ���� �غ� ��)
	private Date edate; // �����
	private Date cdate; // ������
	
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
