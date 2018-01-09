package project.vo;


public class UserVo {
	
	private String userid;
	private String pwd;
	private String name;
	private String gender;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;

	}
	@Override
	public String toString() {
		return "uservo [userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", gender=" + gender + "]";
	}
	
	

}
