package com.djplat.project.yp.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("ypVO")

public class YpVO {
	private int recNum;
	private int brd_no; // �? 번호
	private String title; // �? ?���?
	private String Young_context; // �? ?��?��
	private String cc; // 분류
	private Date w_date; // ?��?��?��
	private int hits; // 조회?��
	private int two;
	
	
	public int getTwo() {
		return two;
	}

	public void setTwo(int two) {
		this.two = two;
	}

	private String member_id; // ?��?��?��?��?��

	public String getYoung_context() {
		return Young_context;
	}

	public void setYoung_context(String Young_context) {
		this.Young_context = Young_context;
	}

	@Override
	public String toString() {
		return "ypVO [recNum=" + recNum + ", brd_no=" + brd_no + ", title=" + title + ", young_context=" + Young_context
				+ ", cc=" + cc + ", w_date=" + w_date + ", hits=" + hits + ", member_id=" + member_id + ",]";
	}

	public int getRecNum() {
		return recNum;
	}

	public void setRecNum(int recNum) {
		this.recNum = recNum;
	}

	public int getBrd_no() {
		return brd_no;
	}

	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCc() {
		return cc;
	}

	public void setCc(String cc) {
		this.cc = cc;
	}

	public Date getW_date() {
		return w_date;
	}

	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
}
