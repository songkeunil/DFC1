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
	private String member_phoneno;
	private String member_email;
	private String member_address;
	private String member_group;
	private String member_right;
	private String member_eagree;
	private Date member_last_log;
	private String member_enabled;
	private String member_addrnum;
	private int rec_Num;
	private String member_info;
	private String member_auth;
	public String getMember_auth() {
		return member_auth;
	}
	public void setMember_auth(String member_auth) {
		this.member_auth = member_auth;
	}
	public String getMember_info() {
		return member_info;
	}
	public void setMember_info(String member_info) {
		this.member_info = member_info;
	}
	public int getRec_Num() {
		return rec_Num;
	}
	public void setRec_Num(int rec_Num) {
		this.rec_Num = rec_Num;
	}
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
	public String getMember_phoneno() {
		return member_phoneno;
	}
	public void setMember_phoneno(String member_phoneno) {
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
	public String getMember_eagree() {
		return member_eagree;
	}
	public void setMember_eagree(String member_eagree) {
		this.member_eagree = member_eagree;
	}
	public Date getMember_last_log() {
		return member_last_log;
	}
	public void setMember_last_log(Date member_last_log) {
		this.member_last_log = member_last_log;
	}
	public String getMember_enabled() {
		return member_enabled;
	}
	public void setMember_enabled(String member_enabled) {
		this.member_enabled = member_enabled;
	}
	public String getMember_addrnum() {
		return member_addrnum;
	}
	public void setMember_addrnum(String member_addrnum) {
		this.member_addrnum = member_addrnum;
	}
	
}
