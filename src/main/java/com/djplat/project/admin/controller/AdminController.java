package com.djplat.project.admin.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.djplat.project.member.vo.MemberVO;

public interface AdminController {

	public ModelAndView listMembers(HashMap<String,Integer> paging,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView deleteMember(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String modifyMemberInfo(MemberVO vo)  throws Exception;
	public ModelAndView memberDetail(HttpServletRequest request, HttpServletResponse response)  throws Exception;

}
