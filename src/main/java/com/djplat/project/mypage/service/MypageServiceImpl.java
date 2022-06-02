package com.djplat.project.mypage.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mypage.dao.MypageDAO;

@Service("mypageServiceImpl")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	public MemberVO selectMemberInfo(String queryId, String member_id) throws SQLException{
		return mypageDAO.selectMemberInfo(queryId, member_id);
	}
	
	public String selectPwd(String queryId, String member_id)throws SQLException{
		return mypageDAO.selectPwd(queryId, member_id);
	}
	
	public void updateMemberInfo(String queryId, MemberVO memberVO) throws SQLException{
		mypageDAO.updateMemberInfo(queryId, memberVO);
	}

}
