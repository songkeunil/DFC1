package com.djplat.project.mail.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCrypt;
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
	public void register(MemberVO memberVO, HttpServletRequest request) throws Exception{
		mailDAO.register(memberVO);
		
		String path[] = request.getRequestURL().toString().split("/");
		
		String key = new TempKey().getKey(50,false);
		mailDAO.createAuthKey(memberVO.getMember_email(), key);
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("[청춘끼리 인증메일 입니다.]"); //메일제목
		sendMail.setText(
				"<h1>메일인증</h1>" +
						"<br/>"+memberVO.getMember_id()+"님 "+
						"<br/>'청춘끼리'에 회원가입해주셔서 감사합니다."+
						"<br/>아래 [이메일 인증 확인]을 눌러주세요."+
						"<a href='http://" + path[2] + "/djplat/registerEmail?memberEmail=" + memberVO.getMember_email() +
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
	@Override
	public List<MemberVO> findId(String memberEmail) throws Exception{
		return mailDAO.findId(memberEmail);
	}
	@Override
	public int findIdCheck(String memberEmail) throws Exception{
		return mailDAO.findIdCheck(memberEmail);
	}
	@Override
	public int findPwCheck(MemberVO memberVO)throws Exception{
		return mailDAO.findPwCheck(memberVO);
	}
	@Override
	public void findPw(String memberEmail,String memberId, HttpServletRequest request) throws Exception{
		String memberKey = new TempKey().getKey(6, false); //난수생성(변경될 비밀번호)
		String memberPw = BCrypt.hashpw(memberKey, BCrypt.gensalt()); //암호화
		String path[] = request.getRequestURL().toString().split("/");
		mailDAO.findPw(memberPw, memberEmail, memberId);
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("[청춘끼리 임시 비밀번호 입니다]"); //메일 제목
		sendMail.setText(
				"<h1>임시비밀번호 발급</h1>"+
				"<br/>"+memberId+"님"+
			   "<br/>비밀번호 찾기를 통한 임시 비밀번호 입니다."+
			   "<br/>임시 비밀번호  : <h2>"+memberKey+"</h2>"+
			   "<br/>로그인 후 비밀번호 변경을 해주세요."+
			   "<a href='http://" + path[2]+ "/djplat/login.html'"+
			   ">로그인 페이지</a>");
		sendMail.setFrom("chunkkiri@gmail.com", "청춘끼리");
		sendMail.setTo(memberEmail);
		sendMail.send();

	}
}
