package com.djplat.project.YS_board.vo;

import java.sql.Date;

public class LikeVO {

	private int likeno;
	private int brd_no;
	private String member_id;

	@Override
	public String toString() {
		return "LikeVO [likeno=" + likeno + ", brd_no=" + brd_no + ", member_id=" + member_id + "]";
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
}
