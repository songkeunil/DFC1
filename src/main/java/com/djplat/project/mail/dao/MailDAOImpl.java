package com.djplat.project.mail.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;


@Repository
public class MailDAOImpl implements MailDAO{
	@Inject
	private SqlSession sqlsession;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public void memberAuth(String memberEmail) throws Exception{
		sqlSession.update("mapper.member.memberAuth", memberEmail);
	}
	@Override
	public void createAuthKey(String memberEmail,String authKey) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberEmail", memberEmail);
		map.put("authKey", authKey);		
		sqlsession.selectOne("mapper.member.createAuthKey", map);
		
	}
	@Override
	public void register(MemberVO memberVO) throws Exception{
		
	}

}
