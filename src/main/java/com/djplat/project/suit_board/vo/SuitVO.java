package com.djplat.project.suit_board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("suitVO")
public class SuitVO {

	private String member_name;
	
	private String req_no;
	private String member_id;
	private String ic_name;
	private Date reg_date;
	private Date v_date;
	private String v_time;
	private Date re_date;
	private String re_time;
	private String rent_date;
	private String rent_cname;
	private String hope_card;
	private String rent_enabled;
	
	private String ic_code;
	private Date ic_date;
	private String ic_pn;
	private String ic_location;
	
	
	
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getReq_no() {
		return req_no;
	}
	public void setReq_no(String req_no) {
		this.req_no = req_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getIc_name() {
		return ic_name;
	}
	public void setIc_name(String ic_name) {
		this.ic_name = ic_name;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getV_date() {
		return v_date;
	}
	public void setV_date(Date v_date) {
		this.v_date = v_date;
	}
	public String getV_time() {
		return v_time;
	}
	public void setV_time(String v_time) {
		this.v_time = v_time;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	public String getRe_time() {
		return re_time;
	}
	public void setRe_time(String re_time) {
		this.re_time = re_time;
	}
	public String getRent_date() {
		return rent_date;
	}
	public void setRent_date(String rent_date) {
		this.rent_date = rent_date;
	}
	public String getRent_cname() {
		return rent_cname;
	}
	public void setRent_cname(String rent_cname) {
		this.rent_cname = rent_cname;
	}
	public String getHope_card() {
		return hope_card;
	}
	public void setHope_card(String hope_card) {
		this.hope_card = hope_card;
	}
	
	public String getRent_enabled() {
		return rent_enabled;
	}
	public void setRent_enabled(String rent_enabled) {
		this.rent_enabled = rent_enabled;
	}
	public String getIc_code() {
		return ic_code;
	}
	public void setIc_code(String ic_code) {
		this.ic_code = ic_code;
	}
	public Date getIc_date() {
		return ic_date;
	}
	public void setIc_date(Date ic_date) {
		this.ic_date = ic_date;
	}
	public String getIc_pn() {
		return ic_pn;
	}
	public void setIc_pn(String ic_pn) {
		this.ic_pn = ic_pn;
	}
	public String getIc_location() {
		return ic_location;
	}
	public void setIc_location(String ic_location) {
		this.ic_location = ic_location;
	}


	
	
	
}
