package com.djplat.project.member.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository
public interface MemberDAO {

	public MemberVO login(Map loginMap) throws DataAccessException;

//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;

}
