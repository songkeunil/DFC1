package com.djplat.project.mail.service;

import com.djplat.project.member.vo.MemberVO;

public interface MailService {

	public void memberAuth(String memberEmail) throws Exception;

	public void register(MemberVO memberVO) throws Exception;


	} 

