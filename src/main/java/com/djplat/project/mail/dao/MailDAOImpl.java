package com.djplat.project.mail.dao;

import java.util.HashMap;
import java.util.List;
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
	@Override
	public List<MemberVO> findId(String memberEmail)throws Exception{
		return sqlsession.selectList("mapper.mail.findId", memberEmail);
	}
	
	@Override
	public int findIdCheck(String memberEmail)throws Exception{
		return sqlsession.selectOne("mapper.mail.findIdCheck", memberEmail);
	}
	@Override
	public int findPwCheck(MemberVO memberVO) throws Exception{
		return sqlsession.selectOne("mapper.mail.findPwCheck",memberVO);
	}
	@Override	      
	public int findPw(String memberPw,String memberEmail, String memberId) throws Exception{

		Map<String,Object> map = new HashMap<String, Object>();
		System.out.println("==================");
		System.out.println(memberPw);
		System.out.println(memberEmail);
		System.out.println(memberId);
		map.put("memberPw", memberPw);
		map.put("memberEmail", memberEmail);
		map.put("memberId", memberId);
	
		return sqlsession.update("mapper.mail.findPw",map);

	}
}
