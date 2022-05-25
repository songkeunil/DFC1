package com.djplat.project.suit_board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller("fileDownloadController")
public class FileDownloadController {

	private static final String ARTICLE_IMAGE_REPO = "c:\\board\\article_image";

	@RequestMapping("/download.do")
	public void download(@RequestParam("fileName") String fileName,
			@RequestParam("req_no") String req_no, HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		try {
			OutputStream out = response.getOutputStream();
			String downFile = ARTICLE_IMAGE_REPO + "\\" + req_no + "\\" + fileName;
			File file = new File(downFile);
	
			String header = request.getHeader("User-Agent");
			
			if (header.contains("MSIE") || header.contains("Trident")){
				fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
				response.setHeader("Content-Disposition", "attachment;filename=\"" + fileName);
			}
			if (header.contains("Edge")){
				fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
				response.setHeader("Content-Disposition", "attachment;filename=\"" + fileName);
			}
			if (header.contains("Chrome")){
				fileName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
				response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName);
			}
			
			response.setHeader("Cache-Control", "no-cache");
//			response.addHeader("Content-disposition", "attachment; fileName=" + fileName);
	
			FileInputStream in = new FileInputStream(file);
			byte[] buffer = new byte[1024 * 8];
	
			while (true) {
				int count = in.read(buffer);
				if (count == -1)
					break;
				out.write(buffer, 0, count);
			}
			in.close();
			out.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
