package project.entity;

import java.util.Date;

// 멤버 신청 테이블임. 즉 생성된 팀을 보고 회원이 신청을 함
public class MemberDto {
	
	private String id; // 팀 아이디, 이미 생성되어있는 팀 
	private String userid; // 신청하는 사람 id
	private int status; // 팀 멤버의 상태, 선택0, 취소9, 디폴트 1
	private String greeting; // 신청시 팀 개설자에게 보낼 인사말
	private Date edate; // 신청일
	private Date cdate; // 취소일


}
