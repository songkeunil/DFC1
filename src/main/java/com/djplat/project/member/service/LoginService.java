package com.djplat.project.member.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.djplat.project.member.dao.MemberDAO;
import com.djplat.project.member.vo.UserVO;

@Service("loginService")
public class LoginService implements UserDetailsService{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		ArrayList<String> authList = new ArrayList<String>();
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		UserVO userVO = memberDAO.selectUser(username);
		authList = memberDAO.getAuthList(username);
		
		if (userVO == null) { //User을 찾지 못했을 경우
			throw new UsernameNotFoundException(username);
		}
		else {
			userVO.setAuthority(authList);
		}
		
		return userVO; //완전한 vo 객체
	}
	
	
}
