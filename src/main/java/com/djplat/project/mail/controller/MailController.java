package com.djplat.project.mail.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.djplat.project.mail.service.MailService;
import com.djplat.project.member.controller.MemberController;
import com.djplat.project.member.vo.MemberVO;

@Controller
public class MailController{
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	MailService mailservice;
	@RequestMapping(value="/findIdView", method= {RequestMethod.GET, RequestMethod.POST})
	public String findIdView() throws Exception{
		return"/member/findIdView";
	}
	//아이디찾기
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
	//비밀번호찾기
	@RequestMapping(value="/findPwView",method={RequestMethod.GET, RequestMethod.POST})
	public String findPwView()throws Exception{
		return "/member/findPwView";
	}
	@RequestMapping(value="/findPw",method={RequestMethod.GET, RequestMethod.POST})
	public String findPw(MemberVO memberVO, Model model) throws Exception{
		logger.info("memberPWCheck");
		if(mailservice.findPwCheck(memberVO)==0) {
			model.addAttribute("msg","아이디와 이메일을 확인해주세요");
			return "/member/findPwView";
		}else {
			mailservice.findPw(memberVO.getMember_email(),memberVO.getMember_id());
			model.addAttribute("member",memberVO.getMember_email());
			return"/member/findPw";
		}
	}
	
	
}