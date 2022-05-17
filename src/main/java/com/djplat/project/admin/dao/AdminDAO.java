package com.djplat.project.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.djplat.project.member.vo.MemberVO;


public interface AdminDAO {


	public int deleteMember(String id) throws DataAccessException;

	public List<MemberVO> selectAllMemberList(HashMap<String,Integer> paging) throws DataAccessException;


//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;

}
