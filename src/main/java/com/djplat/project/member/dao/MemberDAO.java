package com.djplat.project.member.dao;


import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;


@Repository
public interface MemberDAO {

	//회원가입
	public void userSignUp(MemberVO memberVO);

	//아이디 중복확인
	public String duplicateID(String member_id);
	
	//회원탈퇴
	public void deleteID(String member_id);
}
