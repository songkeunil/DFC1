package com.djplat.project.member.dao;

import org.springframework.dao.DataAccessException;

import com.djplat.project.member.vo.MemberVO;


public interface MemberDAO {

	 
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
}
