package com.djplat.project.member.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public interface MemberDAO {

<<<<<<< HEAD
	public MemberVO login(Map loginMap) throws DataAccessException;
=======
	 
//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	public void userSignUp(String username, String password, char enable);
	public void userSignUp(MemberVO memberVO);
	public void giveAuth(String username, String authority);
>>>>>>> 57b46a52d8a3668608b4b213276512d65d28a977

}
