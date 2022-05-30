package com.djplat.project.YS_board.vo;

public class ReplyVO {
	private int reply_no;
	private int reply_lvl;
	private String reply_text;
	private String reply_time;
	private String member_id;
	private int brd_no;
	
	
	@Override
	public String toString() {
		return "ReplyVO [reply_no=" + reply_no + ", reply_lvl=" + reply_lvl + ", reply_text=" + reply_text
				+ ", reply_time=" + reply_time + ", member_id=" + member_id + ", brd_no=" + brd_no + "]";
	}
	
	
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	public int getReply_lvl() {
		return reply_lvl;
	}
	public void setReply_lvl(int reply_lvl) {
		this.reply_lvl = reply_lvl;
	}
	public String getReply_text() {
		return reply_text;
	}
	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}
	public String getReply_time() {
		return reply_time;
	}
	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
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
