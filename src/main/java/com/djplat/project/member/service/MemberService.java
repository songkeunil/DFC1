package com.djplat.project.member.service;

import java.util.Map;

import javax.inject.Inject;

import com.djplat.project.member.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.djplat.project.mail.MailUtils;
import com.djplat.project.mail.TempKey;
import com.djplat.project.mail.dao.MailDAO;
import com.djplat.project.member.dao.MemberDAO;

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

	

	
}
