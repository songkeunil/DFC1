package com.djplat.project.board.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.net.URLDecoder;
import java.sql.Date;

public class FileVO {

	public int articleFileNO;
	private String articleFileName;
	private Date regDate;
	private int brd_no;
	
	
	
	@Override
	public String toString() {
		return "FileVO [articleFileNO=" + articleFileNO + ", articleFileName=" + articleFileName + ", regDate="
				+ regDate + ", brd_no=" + brd_no + "]";
	}
	
	public int getArticleFileNO() {
		return articleFileNO;
	}
	public void setArticleFileNO(int articleFileNO) {
		this.articleFileNO = articleFileNO;
	}
	public String getArticleFileName() {
		return articleFileName;
	}
	public void setArticleFileName(String articleFileName) {
		try {
			if(articleFileName!= null && articleFileName.length()!=0) {
				this.articleFileName = URLDecoder.decode(articleFileName,"UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	
	
}
