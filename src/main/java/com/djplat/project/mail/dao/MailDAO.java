package com.djplat.project.mail.dao;

import com.djplat.project.member.vo.MemberVO;

public interface MailDAO {
	public void memberAuth(String memberEmail) throws Exception;
	public void createAuthKey(String memberEmail, String key) throws Exception;
	public void register(MemberVO memberVO) throws Exception;
	


}
