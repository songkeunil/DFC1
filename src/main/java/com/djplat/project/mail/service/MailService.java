package com.djplat.project.mail.service;

import java.util.List;

import com.djplat.project.member.vo.MemberVO;

public interface MailService {

	public void memberAuth(String memberEmail) throws Exception;

	public void register(MemberVO memberVO) throws Exception;
	public List<MemberVO> findId(String memberEmail)throws Exception;
	public int findIdCheck(String memberEmail)throws Exception;

	} 

