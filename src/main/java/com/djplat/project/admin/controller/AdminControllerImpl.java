package com.djplat.project.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.djplat.project.admin.service.AdminService;

@Controller
public class AdminControllerImpl extends MultiActionController implements AdminController {
	private AdminService adminservice;
	public void setAdminService(AdminService adminService) {
		this.adminservice = adminService;
	}
	
//	@Override
//	@RequestMapping(value = "/admin/listMembers.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		String viewName = getViewName(request);
//		List membersList = adminservice.listMembers();
//		ModelAndView mav =new ModelAndView(viewName);
//		return mav;
//	}
	@Override
	@RequestMapping(value = "/admin/listMembers.do", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		List membersList = adminservice.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		return mav;
	}
	@Override
	@RequestMapping(value = "/admin/deleteMembers.do", method = RequestMethod.GET)
	public ModelAndView deleteMember(HttpServletRequest request,  HttpServletResponse response)throws Exception{
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		adminservice.deleteMember(id);
		ModelAndView mav = new ModelAndView("redirect:/admin/listMembers.do");
		return mav;
	}
	

	
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
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
