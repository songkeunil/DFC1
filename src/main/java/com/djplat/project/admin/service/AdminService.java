package com.djplat.project.admin.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import oracle.net.aso.e;

public interface AdminService {

	public List listMembers() throws DataAccessException;

	public int deleteMember(String id) throws DataAccessException;









}
