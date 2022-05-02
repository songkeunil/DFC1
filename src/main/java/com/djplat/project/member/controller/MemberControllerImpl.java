package com.djplat.project.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.djplat.project.member.service.MemberService;
import com.djplat.project.member.vo.MemberVO;

@Controller("memberController")
@RequestMapping(value = "/member")
public class MemberControllerImpl implements MemberController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private MemberVO memberVO;

	@Override
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse response, Model model) throws Exception {

//		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login((Map) member);
//		if(memberVO != null) {
//		    HttpSession session = request.getSession();
//		    session.setAttribute("member", memberVO);
//		    session.setAttribute("isLogOn", true);
//		    String action = (String)session.getAttribute("action");
//		    session.removeAttribute("action");
//		    if(action!= null) {
//		       mav.setViewName("redirect:"+action);
//		    }else {
//		       mav.setViewName("redirect:/member/listMembers.do");	
//		    }
//
//		}else {
//		   rAttr.addAttribute("result","loginFailed");
//		   mav.setViewName("redirect:/member/loginForm.do");
//		}
//		mav.setViewName("redirect:/member/loginResult.do");
		model.addAttribute("member", memberVO);
		return "result";
	}

//	@RequestMapping(value = { "/", "/main.do" }, method = RequestMethod.GET)
//	private ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
//		String viewName = (String) request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}
}
