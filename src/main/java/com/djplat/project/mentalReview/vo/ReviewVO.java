package com.djplat.project.mentalReview.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("ReviewVO")

public class ReviewVO {
	private int recNum;
	private int brd_no; //글 번호 
	private String title; //글 제목 
	private String mr_context; //글 내용
	private String cc; //분류 
	private Date w_date; //작성일  
	private int hits; //조회수
	private int mr_like; //좋아요
	private int two;
	private int reply_no;
	private String reply_text;
	private int reply_lvl;
	private String reply_time;
	
	
	
	
	public int getReply_no() {
		return reply_no;
	}


	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}


	public String getReply_text() {
		return reply_text;
	}


	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}


	public int getReply_lvl() {
		return reply_lvl;
	}


	public void setReply_lvl(int reply_lvl) {
		this.reply_lvl = reply_lvl;
	}


	public String getReply_time() {
		return reply_time;
	}


	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}


	public int getTwo() {
		return two;
	}


	public void setTwo(int two) {
		this.two = two;
	}


	public int getMr_like() {
		return mr_like;
	}


	public void setMr_like(int mr_like) {
		this.mr_like = mr_like;
	}
	private String member_id; //회원아이디
	
	
	
	
	public String getMr_context() {
		return mr_context;
	}


	public void setMr_context(String mr_context) {
		this.mr_context = mr_context;
	}


	@Override
	public String toString() {
		return "ReviewVO [recNum=" + recNum + ", brd_no=" + brd_no + ", title=" + title + ", mr_context="
				+ mr_context + ", cc=" + cc + ", w_date=" + w_date + ", hits=" + hits + ", mr_like=" + mr_like
				+ ", member_id=" + member_id + ", reply_no="+ reply_no +", reply_text=" + reply_text + ",reply_lvl=" + reply_lvl+"reply_time="+reply_time+ 
				"]";
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
