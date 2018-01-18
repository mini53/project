package com.playdata.member.model.dao;

import java.util.List;
import java.util.Map;

import com.playdata.member.model.MemberDto;


public interface MemberDao {	
	int idCheck(String id);
	int registerMember(MemberDto memberDto);
	void deleteMember(String id);	//회원탈퇴
	MemberDto login(Map<String, String> map);	
	List<MemberDto> listMember(Map<String, String> map); //회원목록
}
