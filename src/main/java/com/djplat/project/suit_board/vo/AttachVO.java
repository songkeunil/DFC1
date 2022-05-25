package com.djplat.project.suit_board.vo;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Date;

public class AttachVO {

	private String fileNO;
	private String fileName;
	private Date regDate;
	private String req_no;
	
	public String getFileNO() {
		return fileNO;
	}
	public void setFileNO(String fileNO) {
		this.fileNO = fileNO;
	}
	public String getFileName() {
		try {
			if (fileName != null && fileName.length() != 0) {
				fileName = URLDecoder.decode(fileName, "utf-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return fileName;
	}
	public void setFileName(String fileName) {
		try {
			if (fileName != null && fileName.length() != 0) {
				this.fileName = URLEncoder.encode(fileName, "utf-8");
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
	public String getReq_no() {
		return req_no;
	}
	public void setReq_no(String req_no) {
		this.req_no = req_no;
	}
	
}
