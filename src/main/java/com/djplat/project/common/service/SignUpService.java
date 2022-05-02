package com.djplat.project.common.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.djplat.project.common.dao.SecurityDAO;
import com.djplat.project.common.vo.UserVO;

@Service("signUpService")
public class SignUpService {

	@Autowired
	private BCryptPasswordEncoder bPasswordEncoder;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public boolean insertUserInfo(String username, String password) {
		SecurityDAO dao = sqlSession.getMapper(SecurityDAO.class);
		UserVO userVO = dao.selectUser(username);
		if (userVO != null) {
			return false;
		}
		else {
			dao.userSignUp(username,bPasswordEncoder.encode(password), '1'); //유저 등록
			dao.giveAuth(username, "ROLE_USER"); //기본 권한 부여
			return true;
		}
	}
}
