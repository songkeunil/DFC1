package com.djplat.project.board.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RestController;


@Component("articleVO")
public class ArticleVO {
	private int brd_no; //글 번호  1
	private String title; //글 제목  3
	private String young_context; //글 내용
	private String cc; //분류  2
	private Date w_date; //작성일   4
	private int hits; //조회수 5
	private String publicopen; //공개여부
	private String member_id; // 회원아이디
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
	public String getYoung_context() {
		return young_context;
	}
	public void setYoung_context(String young_context) {
		this.young_context = young_context;
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
	public String getPublicopen() {
		return publicopen;
	}
	public void setPublicopen(String publicopen) {
		this.publicopen = publicopen;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	
	
	
}
