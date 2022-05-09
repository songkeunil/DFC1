package com.djplat.project.member.service;

<<<<<<< HEAD
import java.util.Map;

import com.djplat.project.member.vo.MemberVO;
=======
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
>>>>>>> b0c70076f5382faa3ddeeb0da1cd7d432606dc17

import com.djplat.project.member.dao.MemberDAO;

<<<<<<< HEAD
	public MemberVO login(Map loginMap) throws Exception;
=======
@Service("memberService")
public class MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//아이디 중복확인
	public String duplicateID(String member_id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		return dao.duplicateID(member_id);
	}
	
	//회원탈퇴
	public void deleteID(String member_id) {
		MemberDAO dao = sqlSession.getMapper(MemberDAO.class);
		dao.deleteID(member_id);
	}
>>>>>>> b0c70076f5382faa3ddeeb0da1cd7d432606dc17
}
