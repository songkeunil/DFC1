package com.djplat.project;

import org.springframework.stereotype.Controller;

@Controller
public class HomeController {
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
//
//	@RequestMapping(value = "/", method = { RequestMethod.POST, RequestMethod.GET })
//	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/main");
//		return mav;
//	}
////	
////	@RequestMapping(value= "/main/main.do" ,method={RequestMethod.POST,RequestMethod.GET})
////	public ModelAndView tomain(HttpServletRequest request, HttpServletResponse response) throws Exception{
////		ModelAndView mav=new ModelAndView();
////		String viewName=(String)request.getAttribute("viewName");
////		mav.setViewName(viewName);
////		return mav;
////	}
//
//	@Autowired
//	SignUpService signUpService;
//
//	@RequestMapping("/main")
//	public String main(Model model) {
//		return "main";
//	}
//
//	@RequestMapping("/main.html")
//	public String home(Model model) {
//		return "home";
//	}
//
////	@RequestMapping("/user")
////	public String user(HttpServletRequest request, Model model, Authentication authentication) {
////		WebAuthenticationDetails wDetails = (WebAuthenticationDetails) authentication.getDetails();
////		String ipAddress = wDetails.getRemoteAddress();
////		request.setAttribute("ipAddress", ipAddress);
////		return "user";
////	}
//
//	@RequestMapping("/admin")
//	public String admin(HttpServletRequest request, Model model, Authentication authentication) {
//		WebAuthenticationDetails wDetails = (WebAuthenticationDetails) authentication.getDetails();
//		String ipAddress = wDetails.getRemoteAddress();
//		request.setAttribute("ipAddress", ipAddress);
//		return "admin";
//	}
//
//	@RequestMapping("/login.html")
//	public String login(HttpServletRequest request, Model model, Authentication authentication) {
//		String uri = request.getHeader("Referer");
//
//		if (authentication != null)
//			return "duplicateLoginAlert";
//
//		if (uri != null && !(uri.contains("/login.html") || uri.contains("/login_check")))
//			request.getSession().setAttribute("prevPage", uri);
//		return "login";
//	}
//
//	@RequestMapping("/loginLinkPage.html")
//	public String loginLinkPage(Model model) {
//		return "loginLinkPage";
//	}
//
//	@RequestMapping("/signUpView.html")
//	public String signUpView(Model model) {
//		return "signUpView";
//	}
//
//	@RequestMapping("/signUp.html")
//	public String signUp(HttpServletRequest request, Model model) {
//
//		boolean isInserted = signUpService.insertUserInfo(request.getParameter("id"), request.getParameter("password"));
//		if (isInserted)
//			return "login";
//		else
//			return "signUpView";
//	}

}
