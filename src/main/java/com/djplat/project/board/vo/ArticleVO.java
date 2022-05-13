package com.djplat.project.board.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RestController;


@Component("articleVO")
public class ArticleVO {
	private int recNum;
	private int brd_no; //글 번호 
	private String title; //글 제목 
	private String support_context; //글 내용
	private String cc; //분류 
	private Date w_date; //작성일  
	private int hits; //조회수
	private int ylike; //좋아요
	private String member_id; //회원아이디
	
	
	
	@Override
	public String toString() {
		return "ArticleVO [recNum=" + recNum + ", brd_no=" + brd_no + ", title=" + title + ", support_context="
				+ support_context + ", cc=" + cc + ", w_date=" + w_date + ", hits=" + hits + ", ylike=" + ylike
				+ ", member_id=" + member_id + "]";
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
	public String getSupport_context() {
		return support_context;
	}
	public void setSupport_context(String support_context) {
		this.support_context = support_context;
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
	public int getYlike() {
		return ylike;
	}
	public void setYlike(int ylike) {
		this.ylike = ylike;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
}
