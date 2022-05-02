package com.djplat.project.common.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.djplat.project.common.vo.UserVO;


@Repository
public interface SecurityDAO {
	 
	public UserVO selectUser(String username);
	public ArrayList<String> getAuthList(String username);
	public void userSignUp(String username, String password, char enable);
	public void giveAuth(String username, String authority);
}
