package com.djplat.project.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository("adminDAO")

public class AdminDAOImpl implements AdminDAO {
@Autowired
 SqlSession sqlSession;	
//	@Override
//	public List<MemberVO> selectAllMemberList() throws DataAccessException {
//		List<MemberVO> listMembers = new ArrayList<MemberVO>();
//	
//		listMembers = sqlSession.selectList("mapper.admin.memberList");
//		return listMembers;
//	}
	@Override
	public List<MemberVO> selectAllMemberList(HashMap<String,Integer> paging) throws DataAccessException {
		List<MemberVO> listMembers  = sqlSession.selectList("mapper.admin.memberList",paging);
		return listMembers;
	}
	@Override
	public int deleteMember(String id) throws DataAccessException{
		int result = sqlSession.delete("mapper.admin.deleteMember",id);
		return result;
	}
}
