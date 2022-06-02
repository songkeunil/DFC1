package com.djplat.project.mypage.dao;

import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository("mypageDAO")
public class MypageDAO extends AbstractDAO{

	public MemberVO selectMemberInfo(String queryId, String member_id) throws SQLException{
		return (MemberVO) selectOne(queryId, member_id);
	}
	
	public String selectPwd(String queryId, String member_id)throws SQLException{
		return (String) selectOne(queryId, member_id);
	}
	
	public void updateMemberInfo(String queryId, MemberVO memberVO) throws SQLException{
		update(queryId, memberVO);
	}
}
