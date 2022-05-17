package com.djplat.project.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.djplat.project.member.vo.MemberVO;

import oracle.net.aso.e;

public interface AdminService {

	public List<MemberVO> listMembers(HashMap<String,Integer> paging) throws DataAccessException;

	public int deleteMember(String id) throws DataAccessException;

	public int totalMembers() throws DataAccessException;

	public void modifyMemberInfo(HashMap<String, String> memberMap)throws DataAccessException;









}
