package com.djplat.project.member.dao;

import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public interface MemberDAO {

	public void userSignUp(MemberVO memberVO);

	public void giveAuth(String username, String authority);

}
