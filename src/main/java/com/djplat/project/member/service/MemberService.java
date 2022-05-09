package com.djplat.project.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.djplat.project.member.dao.MemberDAO;

@Service("memberService")
public class MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//아이디 중복확인
	public String duplicateID(String member_id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.duplicateID(member_id);
	}
	
	//회원탈퇴
	public void deleteID(String member_id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		dao.deleteID(member_id);
	}
}
