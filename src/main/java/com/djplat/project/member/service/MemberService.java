package com.djplat.project.member.service;

import java.util.Map;

import com.djplat.project.member.vo.MemberVO;

public interface MemberService {

	public MemberVO login(Map loginMap) throws Exception;
}
