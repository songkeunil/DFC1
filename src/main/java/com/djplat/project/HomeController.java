package com.djplat.project;

import javax.servlet.http.HttpServletRequest;
<<<<<<< HEAD
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
=======

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.djplat.project.member.service.SignUpService;
>>>>>>> 3138dff9f6fbbb0b2d7d0b840b6fb42c80a28ff8

@Controller
public class HomeController {
<<<<<<< HEAD
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

=======
	
	@Autowired
	SignUpService signUpService;
	
	@RequestMapping("/main.html")
	public String home(Model model) {
		return "home";
	}
	
//	@RequestMapping("/user")
//	public String user(HttpServletRequest request, Model model, Authentication authentication) {
//		WebAuthenticationDetails wDetails = (WebAuthenticationDetails) authentication.getDetails();
//		String ipAddress = wDetails.getRemoteAddress();
//		request.setAttribute("ipAddress", ipAddress);
//		return "user";
//	}
	
	@RequestMapping("/admin")
	public String admin(HttpServletRequest request, Model model, Authentication authentication) {
		WebAuthenticationDetails wDetails = (WebAuthenticationDetails) authentication.getDetails();
		String ipAddress = wDetails.getRemoteAddress();
		request.setAttribute("ipAddress", ipAddress);
		return "admin";
	}
	
	@RequestMapping("/login.html")
	public String login(HttpServletRequest request, Model model, Authentication authentication) {
        	String uri = request.getHeader("Referer"); //이전 경로
        
        //이미 인증된 사용자의 로그인 페이지 접근 방지
		if(authentication!=null) return "duplicateLoginAlert";
        
        //이전 경로가 로그인 관련 페이지가 아닐 경우에만 저장, 속성값이 null이 되면 오류가 발생하므로 이 경우도 처리한다.
		if(uri!=null && !(uri.contains("/login.html")||uri.contains("/login_check"))) request.getSession().setAttribute("prevPage", uri);
		return "login";
	}
	
    //로그인 버튼이 있는 페이지
	@RequestMapping("/loginLinkPage.html")
	public String loginLinkPage(Model model) {
		return "loginLinkPage";
	}

	@RequestMapping("/signUpView.html")
	public String signUpView(Model model) {
		return "signUpView";
	}
		
	@RequestMapping("/signUp.html")
	public String signUp(HttpServletRequest request, Model model) {
		//사용자가 입력한 정보를 파라미터로 넘김
		boolean isInserted = signUpService.insertUserInfo(request.getParameter("id"), request.getParameter("password"));
		if(isInserted) return "login";
		else return "signUpView";
	}
>>>>>>> 3138dff9f6fbbb0b2d7d0b840b6fb42c80a28ff8
}
