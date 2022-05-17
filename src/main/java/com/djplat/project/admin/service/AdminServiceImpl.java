package com.djplat.project.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.djplat.project.admin.dao.AdminDAO;
import com.djplat.project.member.vo.MemberVO;




@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminDAO adminDAO;
//	private AdminDAO adminDAO;
//	public void setAdminDAO(AdminDAO adminDAO) {
//		this.adminDAO = adminDAO;
//	}
@Override
	public List<MemberVO> listMembers(HashMap<String,Integer> paging) throws DataAccessException {
		List<MemberVO> listMembers = adminDAO.selectAllMemberList(paging);
		return listMembers;
	}	
 
 @Override
 public int deleteMember(String id) throws DataAccessException{
	 return adminDAO.deleteMember(id);
 }
 @Override
 public int totalMembers() throws DataAccessException{
	 return adminDAO.totalMembers();
	 
 }
 
 @Override
public void modifyMemberInfo(HashMap<String, String> memberMap) throws DataAccessException{
	 String member_id=(String)memberMap.get("member_id");
	 adminDAO.modifyMemberInfo(memberMap);
 }

}
