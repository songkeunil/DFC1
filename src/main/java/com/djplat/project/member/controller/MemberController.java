package com.djplat.project.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.djplat.project.member.service.SignUpService;
import com.djplat.project.member.vo.MemberVO;

@Controller("memberController")
//@RequestMapping("/member")
public class MemberController {

//	public String login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
//			HttpServletResponse response, Model model) throws Exception;

//	@Autowired
//	private MemberService memberService;

//	@Autowired
//	private MemberVO memberVO;

	@Autowired
	SignUpService signUpService;

	@RequestMapping("/signForm.html")
	public String signForm(Model model) {
		return "signForm";
	}

	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(@ModelAttribute("memberVO") MemberVO memberVO, HttpServletRequest request) {
		// 사용자가 입력한 정보를 파라미터로 넘김
		System.out.println(memberVO.getMember_pw());
		boolean isInserted = signUpService.insertUserInfo(memberVO);
		if (isInserted)
			return "login";
		else
			return "signForm";
	}
}
