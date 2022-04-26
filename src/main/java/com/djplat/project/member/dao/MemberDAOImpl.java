package com.djplat.project.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException {
		 MemberVO vo = sqlSession.selectOne("mapper.member.loginById",memberVO);
			return vo;
	}
	

	
}
