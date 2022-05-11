package com.djplat.project.mail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.djplat.project.mail.service.MailService;
import com.djplat.project.member.vo.MemberVO;

//@Controller("mailController")
//public class MailController {
//	@Inject 
//	private MailService mailService;
//	@RequestMapping(value="/registerEmail", method=RequestMethod.GET)
//	public String emailConfirm(String memberEmail,Model model)throws Exception{
//		mailService.memberAuth(memberEmail);
//		model.addAttribute("memberEmail", memberEmail);
//		
//		return "/member/registerEmail";
//	}
//	
//
//}
@Controller
public class MailController{
	@Autowired
	MailService mailservice;
	@RequestMapping(value="/findIdView", method= {RequestMethod.GET, RequestMethod.POST})
	public String findIdView() throws Exception{
		return"/member/findIdView";
	}
	
	@RequestMapping(value="/findId",  method= {RequestMethod.GET, RequestMethod.POST})
	public String findId(MemberVO memberVO,Model model) throws Exception{
//		logger.info("memberEmail"+memberVO.getMemberEmail());
				
		if(mailservice.findIdCheck(memberVO.getMember_email())==0) {
		model.addAttribute("msg", "이메일을 확인해주세요");
		return "/member/findIdView";
		}else {
		model.addAttribute("member", mailservice.findId(memberVO.getMember_email()));
		return
				"/member/findId";
		}
	}
}