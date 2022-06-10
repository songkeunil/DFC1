package com.djplat.project.yp.vo;

import org.springframework.stereotype.Component;

@Component("reVO")

public class ReVO {
	private int re_no;
	private String re_context;
	private String re_date;
	private String member_id;
	private int brd_no;
	
	
	public int getRe_no() {
		return re_no;
	}

	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}

	public String getRe_context() {
		return re_context;
	}

	public void setRe_context(String re_context) {
		this.re_context = re_context;
	}

	public String getRe_date() {
		return re_date;
	}

	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getBrd_no() {
		return brd_no;
	}

	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}


}