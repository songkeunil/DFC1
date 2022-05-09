package com.djplat.project.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.djplat.project.member.service.SignUpService;
import com.djplat.project.member.vo.MemberVO;

@Controller("memberController")
//@RequestMapping("/member")
public class MemberController {
<<<<<<< HEAD

//	public String login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
//			HttpServletResponse response, Model model) throws Exception;

//	@Autowired
//	private MemberService memberService;

=======
	
>>>>>>> b0c70076f5382faa3ddeeb0da1cd7d432606dc17
//	@Autowired
//	private MemberVO memberVO;

	@Autowired
	SignUpService signUpService;
<<<<<<< HEAD

=======
	
	@Autowired
	MemberService memberService;
	
>>>>>>> b0c70076f5382faa3ddeeb0da1cd7d432606dc17
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
	
	@ResponseBody
	@RequestMapping(value = "/duplicateID.do", method = RequestMethod.POST)
	public String duplicateID(@RequestParam("member_id") String member_id, HttpServletRequest request) {
		//사용자가 입력한 정보를 파라미터로 넘김
		System.out.println(memberService.duplicateID(member_id));
		return memberService.duplicateID(member_id);
	}
	
	@RequestMapping(value="/deleteID.do")
	public String deleteID(@RequestParam("member_id") String member_id, HttpServletRequest request) {
		memberService.deleteID(member_id);
		return "main";
	}
	
}
