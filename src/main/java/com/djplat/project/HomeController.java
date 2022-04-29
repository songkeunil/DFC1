package com.djplat.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.djplat.project.member.service.SignUpService;

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

	@Autowired
	SignUpService signUpService;
<<<<<<< HEAD

=======
	
	@RequestMapping("/main")
	public String main(Model model) {
		return "main";
	}
	
>>>>>>> 5620b0af21f24a0e05ba114996144ff71d372e1a
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
		String uri = request.getHeader("Referer"); // �씠�쟾 寃쎈줈

		// �씠誘� �씤利앸맂 �궗�슜�옄�쓽 濡쒓렇�씤 �럹�씠吏� �젒洹� 諛⑹�
		if (authentication != null)
			return "duplicateLoginAlert";

		// �씠�쟾 寃쎈줈媛� 濡쒓렇�씤 愿��젴 �럹�씠吏�媛� �븘�땺 寃쎌슦�뿉留� ���옣, �냽�꽦媛믪씠 null�씠 �릺硫� �삤瑜섍�
		// 諛쒖깮�븯誘�濡� �씠 寃쎌슦�룄 泥섎━�븳�떎.
		if (uri != null && !(uri.contains("/login.html") || uri.contains("/login_check")))
			request.getSession().setAttribute("prevPage", uri);
		return "login";
	}

	// 濡쒓렇�씤 踰꾪듉�씠 �엳�뒗 �럹�씠吏�
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
		// �궗�슜�옄媛� �엯�젰�븳 �젙蹂대�� �뙆�씪誘명꽣濡� �꽆源�
		boolean isInserted = signUpService.insertUserInfo(request.getParameter("id"), request.getParameter("password"));
		if (isInserted)
			return "login";
		else
			return "signUpView";
	}
}
