package com.djplat.project.admin.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.djplat.project.admin.service.AdminService;
import com.djplat.project.member.vo.MemberVO;

@Controller("adminController")
public class AdminControllerImpl extends MultiActionController implements AdminController {
	@Autowired
	AdminService adminservice;
//	public void setAdminService(AdminService adminService) {
//		this.adminservice = adminService;
//	}
	
//	@Override
//	@RequestMapping(value = "/admin/listMembers.do", method = {RequestMethod.GET, RequestMethod.POST})
//	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		String viewName = getViewName(request);
//		List listMembers = adminservice.listMembers();
//		ModelAndView mav =new ModelAndView(viewName);
//		return mav;
//	}

	@Override
	@RequestMapping(value = "/admin/listMembers.do", method = {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView listMembers(@RequestParam HashMap<String,Integer> paging, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String) request.getAttribute("viewName");
		if(paging.isEmpty()) {
			paging.put("section",1);
			paging.put("pageNum",1);
		}
		List<MemberVO> listMembers = adminservice.listMembers(paging);
		int totalMembers = adminservice.totalMembers();
		ModelAndView mav = new ModelAndView(viewName);		
		mav.addObject("listMembers", listMembers);
		mav.addObject("paging", paging);
		mav.addObject("totalMembers",totalMembers);
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
	@RequestMapping(value="/admin/modifyMemberInfo.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public void modifyMemberInfo(HttpServletRequest request, HttpServletResponse response)  throws Exception{
		HashMap<String,String> memberMap=new HashMap<String,String>();
		String val[]=null;
		PrintWriter pw=response.getWriter();
		String member_id=request.getParameter("member_id");
		String mod_type=request.getParameter("mod_type");
		String value =request.getParameter("value");
		
		if(mod_type.equals("member_birth")){
			val=value.split(",");
			memberMap.put("member_birth",val[0]);
			
		}else if(mod_type.equals("member_phoneno")){
			val=value.split(",");
			memberMap.put("member_phoneno",val[0]);
	
	
		}else if(mod_type.equals("email")){
			val=value.split(",");
			memberMap.put("email1",val[0]);
			memberMap.put("email2",val[1]);
			memberMap.put("emailsts_yn", val[2]);
		}
		
		memberMap.put("member_id", member_id);
		
		adminservice.modifyMemberInfo(memberMap);
		pw.print("mod_success");
		pw.close();		
		
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
