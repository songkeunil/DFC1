package com.djplat.project.emailing;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class sendMail {

	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
	public void sendMail() throws Exception {

//        String subject = "test 메일";
//        String content = "메일 테스트 내용" + "<img src=\"https://t1.daumcdn.net/cfile/tistory/214DCD42594CC40625\">";
//        String from = "보내는이 아이디@도메인주소";
//        String to = "받는이 아이디@도메인주소";

		// 실 사용시 vo와 서비스 클래스 및 JSP의 작성이 필요로 생각합니다.
		String subject = "test 메일";
		// 이미지 파일은 내용과 함께 가야합니다.
		String content = "메일 테스트 내용" + "<img src=\"https://t1.daumcdn.net/cfile/tistory/214DCD42594CC40625\">";
		String from = "chunkkiri@gmail.com"; //
		String to = "chunkkiri@gmail.com";

		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");

			mailHelper.setFrom(from);
			mailHelper.setTo(to);
			mailHelper.setSubject(subject);
			mailHelper.setText(content, true);

			// 업로드 파일 경로 설정 new File 안에 값 작성 ex}"D:\\test.txt"
//            FileSystemResource file = new FileSystemResource(new File("")); 
			// 첨부파일 이름/확장자 설정(경로 상 실 파일과 같게 받도록 해주세요)
//            mailHelper.addAttachment("test.txt", file);

			mailSender.send(mail);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
