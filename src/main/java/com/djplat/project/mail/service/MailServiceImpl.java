package com.djplat.project.mail.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.djplat.project.mail.MailUtils;
import com.djplat.project.mail.TempKey;
import com.djplat.project.mail.dao.MailDAO;
import com.djplat.project.member.vo.MemberVO;


@Service("mailService")
public class MailServiceImpl implements MailService {
	@Inject
	private JavaMailSender mailSender;
	@Autowired
	MailDAO mailDAO;
	@Transactional
	public void register(MemberVO memberVO) throws Exception{
		mailDAO.register(memberVO);
		
		String key = new TempKey().getKey(50,false);
		mailDAO.createAuthKey(memberVO.getMember_email(), key);
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("[청춘끼리 인증메일 입니다.]"); //메일제목
		sendMail.setText(
				"<h1>메일인증</h1>" +
						"<br/>"+memberVO.getMember_id()+"님 "+
						"<br/>'청춘끼리'에 회원가입해주셔서 감사합니다."+
						"<br/>아래 [이메일 인증 확인]을 눌러주세요."+
						"<a href='http://localhost:8090/djplat/registerEmail?memberEmail=" + memberVO.getMember_email() +
						"&key=" + key +
						"' target='_blenk'>이메일 인증 확인</a>");
		sendMail.setFrom("chunkkiri@gmail.com", "청춘끼리");
		sendMail.setTo(memberVO.getMember_email());
		sendMail.send();
		
	}
	@Override
	public void memberAuth(String memberEmail) throws Exception{
		mailDAO.memberAuth(memberEmail);
	}

	
	
}
