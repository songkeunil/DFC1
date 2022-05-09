package com.djplat.project.member.dao;

<<<<<<< HEAD
=======

>>>>>>> b0c70076f5382faa3ddeeb0da1cd7d432606dc17
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public interface MemberDAO {

<<<<<<< HEAD
<<<<<<< HEAD
	public void userSignUp(MemberVO memberVO);

	public void giveAuth(String username, String authority);
=======
	 
//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
//	public void userSignUp(String username, String password, char enable);
	public void userSignUp(MemberVO memberVO);
//	public void giveAuth(String username, String authority);
>>>>>>> 86a46129f09f9a379fd2e1087ede519d2e414e08
=======
	//회원가입
	public void userSignUp(MemberVO memberVO);
>>>>>>> b0c70076f5382faa3ddeeb0da1cd7d432606dc17

	//아이디 중복확인
	public String duplicateID(String member_id);
	
	//회원탈퇴
	public String deleteID(String member_id);
}
