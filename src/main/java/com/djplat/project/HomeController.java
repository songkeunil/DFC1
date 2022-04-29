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
		String uri = request.getHeader("Referer"); // ÀÌÀü °æ·Î
		// ÀÌÀü °æ·Î°¡ ·Î±×ÀÎ °ü·Ã ÆäÀÌÁö°¡ ¾Æ´Ò °æ¿ì¿¡¸¸ ÀúÀå, ¼Ó¼º°ªÀÌ nullÀÌ µÇ¸é ¿À·ù°¡ ¹ß»ýÇÏ¹Ç·Î ÀÌ °æ¿ìµµ Ã³¸®ÇÑ´Ù.
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
        	String uri = request.getHeader("Referer"); //ì´ì „ ê²½ë¡œ
        
        //ì´ë¯¸ ì¸ì¦ëœ ì‚¬ìš©ìžì˜ ë¡œê·¸ì¸ íŽ˜ì´ì§€ ì ‘ê·¼ ë°©ì§€
		if(authentication!=null) return "duplicateLoginAlert";
        
        //ì´ì „ ê²½ë¡œê°€ ë¡œê·¸ì¸ ê´€ë ¨ íŽ˜ì´ì§€ê°€ ì•„ë‹ ê²½ìš°ì—ë§Œ ì €ìž¥, ì†ì„±ê°’ì´ nullì´ ë˜ë©´ ì˜¤ë¥˜ê°€ ë°œìƒí•˜ë¯€ë¡œ ì´ ê²½ìš°ë„ ì²˜ë¦¬í•œë‹¤.
		if(uri!=null && !(uri.contains("/login.html")||uri.contains("/login_check"))) request.getSession().setAttribute("prevPage", uri);
		return "login";
	}
	
    //ë¡œê·¸ì¸ ë²„íŠ¼ì´ ìžˆëŠ” íŽ˜ì´ì§€
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
		//ì‚¬ìš©ìžê°€ ìž…ë ¥í•œ ì •ë³´ë¥¼ íŒŒë¼ë¯¸í„°ë¡œ ë„˜ê¹€
		boolean isInserted = signUpService.insertUserInfo(request.getParameter("id"), request.getParameter("password"));
		if(isInserted) return "login";
		else return "signUpView";
	}
>>>>>>> 3138dff9f6fbbb0b2d7d0b840b6fb42c80a28ff8
}
