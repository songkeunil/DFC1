package com.djplat.project.admin.controller;

import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.springframework.web.servlet.mvc.multiaction.NoSuchRequestHandlingMethodException;

import com.djplat.project.admin.service.AdminService;
import com.djplat.project.member.vo.MemberVO;

@Controller("adminController")
public class AdminControllerImpl extends MultiActionController implements AdminController {
	@Autowired
	AdminService adminservice; //의존성 주입

	//회원 목록 호출	
	@Override
	@RequestMapping(value = "/admin/listMembers.do", method = {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView listMembers(@RequestParam HashMap<String,Integer> paging, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		//페이징
		if(paging.isEmpty()) {
			paging.put("section",1);
			paging.put("pageNum",1);
		}
		List<MemberVO> listMembers = adminservice.listMembers(paging);
		int totalMembers = adminservice.totalMembers();
		ModelAndView mav = new ModelAndView(viewName);		
		mav.addObject("listMembers", listMembers);
		mav.addObject("paging", paging);
		mav.addObject("totalMembers",totalMembers); //총 회원수에 따른 게시판 번호 생성용
		return mav;
	}

	//회원정보 상세 조회(회원 정보 수정과 연동)
	@RequestMapping(value="/admin/memberDetail.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView memberDetail(HttpServletRequest request, HttpServletResponse response)  throws Exception{
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		String member_id=request.getParameter("member_id");
		MemberVO member_info=adminservice.memberDetail(member_id);
		mav.addObject("member_info",member_info);
		return mav;
	}
	//회원정보 수정
	@RequestMapping(value="/admin/modifyMemberInfo.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public String modifyMemberInfo(MemberVO vo)  throws Exception{
		adminservice.modifyMemberInfo(vo);
		

		return "redirect:/admin/memberDetail.do?member_id="+vo.getMember_id();

	}

	//검색 페이징까지
	@Override
	@RequestMapping(value = "/admin/searchMembers.do", method = {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView searchMembers(@RequestParam HashMap<String,Integer> paging, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		//페이징
		if(paging.isEmpty()) {
			paging.put("section",1);
			paging.put("pageNum",1);
		}
		List<MemberVO> searchMembers = adminservice.searchMembers(paging);
		int setotalMembers = adminservice.totalMembers();
		ModelAndView mav = new ModelAndView(viewName);		
		mav.addObject("listMembers", searchMembers);
		mav.addObject("paging", paging);
		mav.addObject("setotalMembers",setotalMembers); //총 회원수에 따른 게시판 번호 생성용
		return mav;
	}
	
	//ModelAndView 선언
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	//겟뷰네임선언
	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String fileName = uri.substring(begin, end);
		if (fileName.indexOf(".") != -1) {
			fileName = fileName.substring(0, fileName.lastIndexOf("."));
		}
		if (fileName.lastIndexOf("/") != -1) {
			fileName = fileName.substring(fileName.lastIndexOf("/"), fileName.length());
		}
		return fileName;
	}
	                     
}
