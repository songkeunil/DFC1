package com.djplat.project.member.dao;

import java.util.ArrayList;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;


@Repository
public interface MemberDAO {

	 
//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
//	public void userSignUp(String username, String password, char enable);
	public void userSignUp(MemberVO memberVO);
//	public void giveAuth(String username, String authority);

}
