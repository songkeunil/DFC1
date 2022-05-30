package com.djplat.project.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.djplat.project.member.vo.MemberVO;

public interface AdminDAO {

	public List<MemberVO> selectAllMemberList(HashMap<String, Integer> paging) throws DataAccessException;

	public int totalMembers() throws DataAccessException;

	public void modifyMemberInfo(MemberVO vo) throws Exception;

	public MemberVO memberDetail(String member_id) throws DataAccessException;

	public List<MemberVO> searchMembers(HashMap<String, Integer> paging) throws DataAccessException;

	public int setotalMembers() throws DataAccessException;

	public int counselRegistration(Map articleMap) throws Exception;

//	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;

}
