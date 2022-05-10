package com.djplat.project.member.dao;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public interface MemberDAO {


	public void giveAuth(String username, String authority);
	 
//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
//	public void userSignUp(String username, String password, char enable);

	//회원가입
	public void userSignUp(MemberVO memberVO);

	//아이디 중복확인
	public String duplicateID(String member_id);
	
	//회원탈퇴
	public String deleteID(String member_id);


	//유저인증키생성메서드
	public int GetKey(String user_id, String key);
	//회원 인증키 바꾸는 메서드
	public int alter_member_auth(String member_id, String key);

	

}
