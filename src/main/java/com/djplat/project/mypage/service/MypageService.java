package com.djplat.project.mypage.service;

import java.sql.SQLException;

import com.djplat.project.member.vo.MemberVO;

public interface MypageService {

	public MemberVO selectMemberInfo(String queryId, String member_id) throws SQLException;

	public String selectPwd(String queryId, String member_id)throws SQLException;
	
	public void updateMemberInfo(String queryId, MemberVO memberVO) throws SQLException;


}
