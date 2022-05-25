package com.djplat.project.suit_board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.djplat.project.suit_board.service.SuitService;
import com.djplat.project.suit_board.vo.AttachVO;
import com.djplat.project.suit_board.vo.CodeVO;
import com.djplat.project.suit_board.vo.PageMaker;
import com.djplat.project.suit_board.vo.SearchCriteria;
import com.djplat.project.suit_board.vo.SuitVO;

@Controller("suitController")
public class SuitController {

	private static final String ARTICLE_IMAGE_REPO = "C:\\board\\article_image";

	@Autowired
	SuitService suitService;
	
	
	@RequestMapping(value="/listSuitAll.do")
	public String listSuitAll(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		
		//board list
		List<SuitVO> allList = new ArrayList<SuitVO>();
		allList = suitService.selectListAll("suit.selectListAll", scri);
		model.addAttribute("allList", allList);
//		System.out.println("perPageNum : "+scri.getPerPageNum());
		
		//board paging
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(suitService.selectTotalNO("suit.selectTotalNO", scri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "listSuit";
	}
	
	@RequestMapping(value="/suitForm.html", method= {RequestMethod.POST,RequestMethod.GET})
	public String suitForm(Model model, HttpServletRequest request ) throws Exception{
		
		List<CodeVO> codeList = new ArrayList();
		codeList = suitService.selectCode("suit.selectCode");
		model.addAttribute("codeList", codeList);
		
		String req_no = request.getParameter("req_no");
		
		if(req_no != null) {
			SuitVO suitVO = suitService.selectInfo("suit.selectInfo", req_no);
			List<AttachVO> fileList = suitService.selectFileInfo("suit.selectFileInfo", req_no);
			model.addAttribute("fileList", fileList);
			model.addAttribute("suitVO", suitVO);
		}
		
		return "suitForm";
	}
	
	
	@RequestMapping(value = "/addRentSuit.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView insertForm(MultipartHttpServletRequest multipartRequest, @ModelAttribute("suitVO")SuitVO suitVO
			 ) throws Exception {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id=(String)principal;
		suitVO.setMember_id(member_id);
//		System.out.println("member_id : " + member_id);
		
		ModelAndView mav = new ModelAndView();
		
		String req_no = multipartRequest.getParameter("req_no");
//		System.out.println(req_no);

		//code
		List<CodeVO> codeList = new ArrayList();
		codeList = suitService.selectCode("suit.selectCode");
		mav.addObject("codeList", codeList);
		
		//insert Form
		if (req_no == null) {
			suitService.insertSuit("suit.insertSuit", suitVO);
			req_no = suitService.selectNO("suit.selectNO", member_id);
			suitVO.setReq_no(req_no);
			suitService.insertIC("suit.insertIC", suitVO);
		}
		
		//update
		if(req_no != null) {
			suitService.updateSuit("updateSuit", suitVO);
			suitService.updateIC("updateIC", suitVO);
			suitService.deleteFileAll("deleteFileAll", req_no);
		}
		
		//insert file
		Map fileMap = new HashMap();

		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			fileMap.put(name, value);
		}
		
		//filename list
		List<String> fileList = upload(multipartRequest);
		
		List<AttachVO> rentFileList = new ArrayList<AttachVO>();

		if(!fileList.isEmpty()) {
			if (fileList != null && !"".equals(fileList)) {
				for (String fileName : fileList) {
					AttachVO attachVO = new AttachVO();
					attachVO.setFileName(fileName);
					rentFileList.add(attachVO);
				}
			}
		}
		
		if (rentFileList != null && rentFileList.size() != 0) {
			for (AttachVO attachVO : rentFileList) {
				String fileName = attachVO.getFileName();
				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + fileName);
				File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + req_no);
				FileUtils.copyFileToDirectory(srcFile, destDir, true);
				srcFile.delete();
			}
		}
		
		//original fileList
		List<String> originList = new ArrayList<String>();
		for(int i =1; i < fileMap.size(); i++) {
			if((String)fileMap.get("origin_file"+i) != null) {
				AttachVO attachVO = new AttachVO();
				attachVO.setFileName((String)fileMap.get("origin_file"+i));
				rentFileList.add(attachVO);
				}
		}
		
		fileMap.put("rentFileList", rentFileList);
		fileMap.put("req_no", req_no);
		suitService.insertFile("suit.insertFile", fileMap);
		
		mav.addObject("fileMap", fileMap);
		mav.setViewName("suitForm2");
		return mav;
			
	}
	
	
	@RequestMapping(value="/deleteSuit.do")
	public String deleteSuit(@RequestParam("req_no") String req_no) throws Exception{
		suitService.deleteAll("suit.deleteAll", req_no);
		
		//실제파일 삭제
		File destDir = new File(ARTICLE_IMAGE_REPO + "\\" + req_no);
		FileUtils.deleteDirectory(destDir);
		
		return "redirect:/listSuitAll.do";
	}
	
		
	
	//filename List 가져오기
	private List<String> upload(MultipartHttpServletRequest multipartRequest) throws Exception {
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			if(originalFileName.isEmpty() == false) {
				fileList.add(originalFileName); // 첨부한 이미지 파일의 이름들을 차례대로 저장.
				File file = new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + fileName);
				if (mFile.getSize() != 0) {
					if (!file.exists()) {
						file.getParentFile().mkdirs();
						mFile.transferTo(new File(ARTICLE_IMAGE_REPO + "\\" + "temp" + "\\" + originalFileName));
					}
				}
			}
		}
		return fileList;
	}
}
