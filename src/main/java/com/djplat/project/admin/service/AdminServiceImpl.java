package com.djplat.project.admin.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.djplat.project.admin.dao.AdminDAO;

public class AdminServiceImpl implements AdminService{
	private AdminDAO adminDAO;
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	@Override
	public List listMembers() throws DataAccessException {
		List membersList = null;
		membersList = adminDAO.selectAllMemberList();
		return membersList;
	}	
 
 @Override
 public int deleteMember(String id) throws DataAccessException{
	 return adminDAO.deleteMember(id);
 }
}
