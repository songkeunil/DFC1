package com.djplat.project.board.vo;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RestController;


@Component("articleVO")
public class ArticleVO {
	private int BRD_NO;
	private String TITLE;
	private String YOUNG_CONTEXT;
	private String CC;
	private Date W_DATE;
	private int HITS;
	private String PUBLICOPEN;
	private String MEMBER_ID;
	
	
	public int getBRD_NO() {
		return BRD_NO;
	}
	public void setBRD_NO(int bRD_NO) {
		BRD_NO = bRD_NO;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getYOUNG_CONTEXT() {
		return YOUNG_CONTEXT;
	}
	public void setYOUNG_CONTEXT(String yOUNG_CONTEXT) {
		YOUNG_CONTEXT = yOUNG_CONTEXT;
	}
	public String getCC() {
		return CC;
	}
	public void setCC(String cC) {
		CC = cC;
	}
	public Date getW_DATE() {
		return W_DATE;
	}
	public void setW_DATE(Date w_DATE) {
		W_DATE = w_DATE;
	}
	public int getHITS() {
		return HITS;
	}
	public void setHITS(int hITS) {
		HITS = hITS;
	}
	public String getPUBLICOPEN() {
		return PUBLICOPEN;
	}
	public void setPUBLICOPEN(String pUBLICOPEN) {
		PUBLICOPEN = pUBLICOPEN;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	


}
