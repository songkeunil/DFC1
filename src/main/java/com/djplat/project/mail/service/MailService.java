package com.djplat.project.mail.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.djplat.project.member.vo.MemberVO;

public interface MailService {

	public void memberAuth(String memberEmail) throws Exception;

	public void register(MemberVO memberVO, HttpServletRequest request) throws Exception;
	public List<MemberVO> findId(String memberEmail)throws Exception;
	public int findIdCheck(String memberEmail)throws Exception;
	public void findPw(String memberEmail, String memberId, HttpServletRequest request) throws Exception;
	public int findPwCheck(MemberVO memberVO) throws Exception;
	} 

