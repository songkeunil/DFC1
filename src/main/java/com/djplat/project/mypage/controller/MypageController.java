package com.djplat.project.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mypage.service.MypageService;

@Controller("mypageController")
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private MemberVO memberVO;
	
	@Autowired
	private BCryptPasswordEncoder bPasswordEncoder;
	
	@RequestMapping(value="/mypage.html")
	public String mypage(Model model) throws Exception{
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id=(String)principal;
		memberVO = mypageService.selectMemberInfo("mypage.selectMemberInfo", member_id);
		model.addAttribute("memberVO", memberVO);
		
		return "mypage";
	}
	
	@RequestMapping(value="/memberConfirm.html")
	public String memberConfirm() throws Exception{
		return "memberConfirm";
	}
	
	@RequestMapping(value="/confirmPwd.do")
	public String confirmPassword(@RequestParam("input_pw") String input_pw, Model model) throws Exception{
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id = (String)principal;
		String member_pw = mypageService.selectPwd("mypage.selectPwd", member_id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		if(encoder.matches(input_pw, member_pw)) {
			return "redirect:/modMemberInfo.html";
		}else {
			model.addAttribute("confirm", "false");
			return "memberConfirm";
		}
	}
	
	@RequestMapping(value="/modMemberInfo.html")
	public String modMemberInfo(Model model) throws Exception{
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id=(String)principal;
		memberVO = mypageService.selectMemberInfo("mypage.selectMemberInfo", member_id);
		model.addAttribute("memberVO", memberVO);
		return "modMemberInfo";
	}
	
	
	@RequestMapping(value="/updateInfo.do", method=RequestMethod.POST)
	public String updateInfo(@ModelAttribute("memberVO")MemberVO memberVO) throws Exception{
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id=(String)principal;
		
		System.out.println("pwd"+memberVO.getMember_pw());
		memberVO.setMember_id(member_id);
		memberVO.setMember_pw(bPasswordEncoder.encode(memberVO.getMember_pw()));
		mypageService.updateMemberInfo("mypage.updateMemberInfo", memberVO);
		return "redirect:/mypage.html";
		
	}
	
	@RequestMapping(value="/duplicatePW.do")
	@ResponseBody
	public boolean duplicatePW(@RequestParam("member_pw")String member_pw) throws Exception{
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id = (String)principal;
		String original_pw = mypageService.selectPwd("mypage.selectPwd", member_id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder.matches(member_pw, original_pw);

	} 
	
}
