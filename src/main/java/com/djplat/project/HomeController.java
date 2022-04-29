package com.djplat.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/main");
		return mav;
	}
//	
//	@RequestMapping(value= "/main/main.do" ,method={RequestMethod.POST,RequestMethod.GET})
//	public ModelAndView tomain(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		ModelAndView mav=new ModelAndView();
//		String viewName=(String)request.getAttribute("viewName");
//		mav.setViewName(viewName);
//		return mav;
//	}

	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, Model model, Authentication authentication) {
		String uri = request.getHeader("Referer"); // ���� ���
		// ���� ��ΰ� �α��� ���� �������� �ƴ� ��쿡�� ����, �Ӽ����� null�� �Ǹ� ������ �߻��ϹǷ� �� ��쵵 ó���Ѵ�.
		if (uri != null && !(uri.contains("/member/loginForm.do") || uri.contains("/login_check")))
			request.getSession().setAttribute("prevPage", uri);
		return "/main/main";
	}

}
