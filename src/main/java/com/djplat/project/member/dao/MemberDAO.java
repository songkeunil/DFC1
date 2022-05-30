package com.djplat.project.member.dao;
import java.util.List;

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
<<<<<<< HEAD
	public String deleteID(String member_id);


//	public int findIdCheck(String member_email);
	
//	public void GetKey(String user_id, String key);



	

	

=======
	public void deleteID(String member_id);
>>>>>>> 7f3bfd5b6b7baf5bd5485976e2e15cd760642659
}
