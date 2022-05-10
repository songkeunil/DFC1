package com.djplat.project.common.vo;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component("UserVO")
public class UserVO implements UserDetails{

	private String member_id;
	private String member_pw;
	private boolean member_enabled;
	private ArrayList<GrantedAuthority> member_right;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return member_right;
	}
	
	public void setAuthority(ArrayList<String> authList) {
		ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
		for(int i=0;i<authList.size();i++) {
			auth.add(new SimpleGrantedAuthority(authList.get(i)));
		}
		this.member_right=auth;
	}
	
	@Override
	public String getPassword() {
		return member_pw;
	}
	

	public void setPassword(String password) {
		this.member_pw = password;
	}

	@Override
	public String getUsername() {
		return member_id;
	}
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	@Override
	public boolean isEnabled() {
		return member_enabled;
	}
	
	
}
