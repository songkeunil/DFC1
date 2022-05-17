package com.djplat.project.board.vo;

import java.sql.Date;

public class LikeVO {

	private int likeno;
	private int brd_no;
	private String member_id;
	private int like_check;
	
	@Override
	public String toString() {
		return "LikeVO [likeno=" + likeno + ", brd_no=" + brd_no + ", member_id=" + member_id + ", like_check="
				+ like_check + "]";
	}
	
	public int getLikeno() {
		return likeno;
	}
	public void setLikeno(int likeno) {
		this.likeno = likeno;
	}
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getLike_check() {
		return like_check;
	}
	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}
	
	
}
