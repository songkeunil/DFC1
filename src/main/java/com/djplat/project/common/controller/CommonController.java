package com.djplat.project.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommonController {

	@RequestMapping("/main.html")
	public String main(Model model) {
		return "main";
	}

	@RequestMapping("/nadeulmok.html")
	public String nadeulmok(Model model) {
		return "nadeulmok";
	}

	@RequestMapping("/nadeulmokFeat.html")
	public String nadeulmokFeat(Model model) {
		return "nadeulmokFeat";
	}

	@RequestMapping("/nadeulmokMap.html")
	public String nadeulmokMap(Model model) {
		return "nadeulmokMap";
	}

	@RequestMapping("/nadeulmokBoard.html")
	public String nadeulmokBoard(Model model) {
		return "nadeulmokBoard";
	}

	@RequestMapping("/neonadeuli.html")
	public String neonadeuli(Model model) {
		return "neonadeuli";
	}

	@RequestMapping("/neonadeuliFeat.html")
	public String neonadeuliFeat(Model model) {
		return "neonadeuliFeat";
	}

	@RequestMapping("/neonadeuliMap.html")
	public String neonadeuliMap(Model model) {
		return "neonadeuliMap";
	}

	@RequestMapping("/dododo.html")
	public String dododo(Model model) {
		return "dododo";
	}

	@RequestMapping("/dododoFeat.html")
	public String dododoFeat(Model model) {
		return "dododoFeat";
	}

	@RequestMapping("/dododoMap.html")
	public String dododoMap(Model model) {
		return "dododoMap";
	}

	@RequestMapping("/teojeon.html")
	public String teojeon(Model model) {
		return "teojeon";
	}
	@RequestMapping("/djn.html")
	public String djn(Model model) {
		return "djn";
	}
	@RequestMapping("/sogae.html")
	public String sogae(Model model) {
		return "sogae";
	}

	@RequestMapping("/saeop.html")
	public String saeop(Model model) {
		return "saeop";
	}

	@RequestMapping("/sogaeRoad.html")
	public String sogaeRoad(Model model) {
		return "sogaeRoad";
	}
	
//	@RequestMapping("/admin")
//	public String admin(HttpServletRequest request, Model model, Authentication authentication) {
//		WebAuthenticationDetails wDetails = (WebAuthenticationDetails) authentication.getDetails();
//		String ipAddress = wDetails.getRemoteAddress();
//		request.setAttribute("ipAddress", ipAddress);
//		return "admin";
//	}

	@RequestMapping("/login.html")
	public String login(HttpServletRequest request, Model model, Authentication authentication) {
		String uri = request.getHeader("Referer"); // 이전 경로

		// 이미 인증된 사용자의 로그인 페이지 접근 방지
		if (authentication != null)
			return "duplicate";

		// 이전 경로가 로그인 관련 페이지가 아닐 경우에만 저장, 속성값이 null이 되면 오류가 발생하므로 이 경우도 처리한다.
		if (uri != null && !(uri.contains("/login.html") || uri.contains("/login_check")))
			request.getSession().setAttribute("prevPage", uri);
		return "login";
	}

	// 로그인 버튼이 있는 페이지
//	@RequestMapping("/loginLinkPage.html")
//	public String loginLinkPage(Model model) {
//		return "loginLinkPage";
//	}

}
