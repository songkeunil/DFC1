package com.djplat.project.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository("adminDAO")

public class AdminDAOImpl implements AdminDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.admin.selectAllMemberList");
		return membersList;
	}
	
	@Override
	public int deleteMember(String id) throws DataAccessException{
		int result = sqlSession.delete("mapper.admin.deleteMember",id);
		return result;
	}
}
