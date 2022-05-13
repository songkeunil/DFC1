package com.djplat.project.common.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FileDownloadController {
	private static final String ARTICLE_FILE_REPO = "C:\\board\\article_file";
	@RequestMapping("/board/download.do")
	protected void download(@RequestParam("articleFileName") String articleFileName,
							@RequestParam("brd_no") int brd_no,
			                 HttpServletResponse response)throws Exception {
		OutputStream out = response.getOutputStream();
		String downFile = ARTICLE_FILE_REPO + "\\" +brd_no+"\\"+ articleFileName;
		File file = new File(downFile);

		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName=" + articleFileName);
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
	}
}
