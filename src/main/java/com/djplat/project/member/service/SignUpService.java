package com.djplat.project.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.djplat.project.member.dao.MemberDAO;
import com.djplat.project.member.vo.MemberVO;

@Service("signUpService")
public class SignUpService {

	@Autowired
	private BCryptPasswordEncoder bPasswordEncoder;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public boolean insertUserInfo(MemberVO memberVO) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		memberVO.setMember_pw(bPasswordEncoder.encode(memberVO.getMember_pw()));
		System.out.println(memberVO.getMember_pw());
		if (memberVO != null) {
			dao.userSignUp(memberVO); //유저 등록
			return true;
		}
		else 
			return false;
		
	}
}
