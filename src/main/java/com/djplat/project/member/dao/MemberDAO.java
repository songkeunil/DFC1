package com.djplat.project.member.dao;

import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public interface MemberDAO {

<<<<<<< HEAD
	public void userSignUp(MemberVO memberVO);

	public void giveAuth(String username, String authority);
=======
	 
//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
//	public void userSignUp(String username, String password, char enable);
	public void userSignUp(MemberVO memberVO);
//	public void giveAuth(String username, String authority);
>>>>>>> 86a46129f09f9a379fd2e1087ede519d2e414e08

}
