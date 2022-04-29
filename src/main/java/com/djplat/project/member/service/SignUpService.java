package com.djplat.project.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.djplat.project.member.dao.MemberDAO;
import com.djplat.project.member.vo.UserVO;

@Service("signUpService")
public class SignUpService {

	@Autowired
	private BCryptPasswordEncoder bPasswordEncoder;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public boolean insertUserInfo(String username, String password) {
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		UserVO userVO = memberDAO.selectUser(username);
		if (userVO != null) {
			return false;
		}
		else {
			memberDAO.userSignUp(username,bPasswordEncoder.encode(password), '1'); //유저 등록
			memberDAO.giveAuth(username, "ROLE_USER"); //기본 권한 부여
			return true;
		}
	}
}
