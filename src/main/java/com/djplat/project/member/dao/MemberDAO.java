package com.djplat.project.member.dao;

import java.util.ArrayList;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.member.vo.UserVO;


@Repository
public interface MemberDAO {

	 
//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	
	public UserVO selectUser(String username);
	public ArrayList<String> getAuthList(String username);
	public void userSignUp(String username, String password, char enable);
	public void giveAuth(String username, String authority);
}
