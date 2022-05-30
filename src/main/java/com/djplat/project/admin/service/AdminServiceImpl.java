package com.djplat.project.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.djplat.project.admin.dao.AdminDAO;
import com.djplat.project.member.vo.MemberVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDAO adminDAO;

//	private AdminDAO adminDAO;
//	public void setAdminDAO(AdminDAO adminDAO) {
//		this.adminDAO = adminDAO;
//	}

//회원 목록 불러오기	
	@Override
	public List<MemberVO> listMembers(HashMap<String, Integer> paging) throws DataAccessException {
		List<MemberVO> listMembers = adminDAO.selectAllMemberList(paging);
		return listMembers;
	}

	// 회원 총 숫자(페이징관련)
	@Override
	public int totalMembers() throws DataAccessException {
		return adminDAO.totalMembers();

	}

	// 검색결과 숫자(페이징관련)
	@Override
	public int setotalMembers() throws DataAccessException {
		return adminDAO.setotalMembers();

	}

	// 회원정보 상세
	@Override
	public MemberVO memberDetail(String member_id) throws Exception {
		return adminDAO.memberDetail(member_id);
	}

	// 회원정보 수정
	@Override
	public void modifyMemberInfo(MemberVO vo) throws Exception {
		// 받은 vo를 DAO로 보냄
		adminDAO.modifyMemberInfo(vo);
	}

	// 신청하기
	@Override
	public int counselRegistration(Map articleMap) throws Exception {
		System.out.println("ㅇㄹㅇㄹ");
		int brd_no = adminDAO.counselRegistration(articleMap);
		articleMap.put("brd_no", brd_no);
		return brd_no;

	}

	@Override
	public List<MemberVO> searchMembers(HashMap<String, Integer> paging) throws DataAccessException {
		List<MemberVO> searchMembers = adminDAO.searchMembers(paging);
		return searchMembers;
	}

}
