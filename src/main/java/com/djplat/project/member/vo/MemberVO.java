package com.djplat.project.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class MemberVO {

	private String member_id;
	private String member_name;
	private String member_pw;
	private String member_gender;
	private Date member_birth;
	private int member_phoneno;
	private String member_email;
	private String member_address;
	private String member_group;
	private String member_right;
	private int member_eagree;
	private Date member_last_log;
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public Date getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(Date member_birth) {
		this.member_birth = member_birth;
	}
	public int getMember_phoneno() {
		return member_phoneno;
	}
	public void setMember_phoneno(int member_phoneno) {
		this.member_phoneno = member_phoneno;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_address() {
		return member_address;
	}
	public void setMember_address(String member_address) {
		this.member_address = member_address;
	}
	public String getMember_group() {
		return member_group;
	}
	public void setMember_group(String member_group) {
		this.member_group = member_group;
	}
	public String getMember_right() {
		return member_right;
	}
	public void setMember_right(String member_right) {
		this.member_right = member_right;
	}
	public int getMember_eagree() {
		return member_eagree;
	}
	public void setMember_eagree(int member_eagree) {
		this.member_eagree = member_eagree;
	}
	public Date getMember_last_log() {
		return member_last_log;
	}
	public void setMember_last_log(Date member_last_log) {
		this.member_last_log = member_last_log;
	}
	
	
	
	
}
