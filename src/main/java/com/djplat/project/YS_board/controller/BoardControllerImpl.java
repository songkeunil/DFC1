package com.djplat.project.YS_board.controller; 

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;import org.springframework.security.core.context.SecurityContextHolder;import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.djplat.project.YS_board.service.BoardService;
import com.djplat.project.YS_board.vo.ArticleVO;
import com.djplat.project.YS_board.vo.FileVO;
import com.djplat.project.YS_board.vo.LikeVO;
import com.djplat.project.YS_board.vo.ReplyVO;
import com.djplat.project.member.vo.MemberVO;

import net.coobird.thumbnailator.Thumbnails;

@Controller("YSB_boardController")
public class BoardControllerImpl implements BoardController {
	// 글 첨부/이미지 저장 경로
	private static final String ARTICLE_FILE_REPO = "C:\\YS\\YS_board\\article_file";
	@Autowired
	private BoardService boardService;
	@Autowired
	private ArticleVO articleVO;

	// 글 목록 창
	@Override
	@RequestMapping(value = "/YS_board/listArticles.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");

		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section == null) ? "1" : _section));
		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));

		Map pagingMap = new HashMap();
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);

		Map articlesMap = boardService.listArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);

		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}

	// 글 쓰기 창
	@Override
	@RequestMapping(value = "/YS_board/addNewArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String articleFileName = null;

		Map articleMap = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}

		// 로그인 시 세션에 저장된 회원 정보에서 글쓴이 아이디를 얻어와서 Map에 저장합니다.
		// 로그인 취합 시 사용
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String id = memberVO.getMember_id();
//		String member_id = "lee";

		// 시큐리티용 현재 접속자 ID 수령 코드 취합 및 실 사용시 교체 해주세요.
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String member_id=(String)principal;

		articleMap.put("member_id", member_id);
		// 더미(답글 parentNO 사용안함)
//		articleMap.put("parentNO", 0);
//		String parentNO = (String)session.getAttribute("parentNO");
//		articleMap.put("parentNO", (parentNO == null ? 0: parentNO));

		// 파일 이름을 받아 서비스로 전달
		String BoardNO = multipartRequest.getParameter("brd_no");
		List<String> fileList = upload(multipartRequest, BoardNO);
		List<FileVO> articleFileList = new ArrayList<FileVO>();
		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				FileVO fileVO = new FileVO();
				fileVO.setArticleFileName(fileName);
				articleFileList.add(fileVO);
			}
			articleMap.put("articleFileList", articleFileList);
		}

		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int brd_no = boardService.addNewArticle(articleMap);
			// 파일이름 리스트를 인식하면 지정 경로안 임시폴더에 저장, 글 번호로 된 파일을 생성, 후에 그 안에 파일 저장
			if (articleFileList != null && articleFileList.size() != 0) {
				for (FileVO fileVO : articleFileList) {
					articleFileName = fileVO.getArticleFileName();
					if(articleFileName.equals("dummy.txt")) {
						boardService.cleanDummyFile();
					}else{
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + articleFileName);
					File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					}
				}
			}
			message = "<script>";
			message += " alert('새글을 추가했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/YS_board/listArticles.do" + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			// 파일이름 리스트를 인식하지 못 하면 임시 폴더에 업로드 된 파일을 저장 후, 삭제
			if (articleFileList != null && articleFileList.size() != 0) {
				for (FileVO fileVO : articleFileList) {
					articleFileName = fileVO.getArticleFileName();
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + articleFileName);
					srcFile.delete();
				}
			}
			message = " <script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message += " location.href='" + multipartRequest.getContextPath() + "/YS_board/articleForm.do" + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	// 글 상세창 보기
	@RequestMapping(value = "/YS_board/viewArticle.do", method = RequestMethod.GET)
	public ModelAndView viewArticle(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = boardService.viewArticle(brd_no);

//			시큐리티용 세션 id 수령 코드
//			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//	        String member_id=(String)principal;
		String member_id = "lee";

		LikeVO likeVO = new LikeVO();
		likeVO.setBrd_no(brd_no);
		likeVO.setMember_id(member_id);

		int boardlike = boardService.getBoardLike(likeVO);

		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		mav.addObject("heart", boardlike);
		return mav;
	}

	// 수정용 상세창 보기
	@RequestMapping(value = "/YS_board/forModShowArticles.do", method = RequestMethod.GET)
	public ModelAndView forModShowArticles(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = boardService.viewArticle(brd_no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		return mav;
	}

	// 글 수정
	@RequestMapping(value = "/YS_board/modArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		System.out.println("modArticle 진입");
		String dummy = "dummy.txt";
		multipartRequest.setCharacterEncoding("utf-8");
		Map<String, Object> articleMap = new HashMap<String, Object>();
		Enumeration enu = multipartRequest.getParameterNames();

		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();

			if (name.equals("articleFileNO")) {
				String[] values = multipartRequest.getParameterValues(name);
				articleMap.put(name, values);
			} else if (name.equals("oldFileName")) {
				String[] values = multipartRequest.getParameterValues(name);
				articleMap.put(name, values);
			} else {
				String value = multipartRequest.getParameter(name);
				articleMap.put(name, value);
			}
		}

		String brd_no = (String) articleMap.get("brd_no");
		String BoardNO = multipartRequest.getParameter("brd_no");
		List<String> fileList = upload(multipartRequest, BoardNO);
		int added_file_num = Integer.parseInt((String) articleMap.get("added_file_num"));
		int pre_file_num = Integer.parseInt((String) articleMap.get("pre_file_num"));
		List<FileVO> articleFileList = new ArrayList<FileVO>();
		List<FileVO> modAddFileList = new ArrayList<FileVO>();

		if (fileList != null && fileList.size() != 0) {
			String[] articleFileNO = (String[]) articleMap.get("articleFileNO");
			for (int i = 0; i < added_file_num; i++) {
				String fileName = fileList.get(i);
				FileVO fileVO = new FileVO();
				if (i < pre_file_num) {
					fileVO.setArticleFileName(fileName);
					fileVO.setArticleFileNO(Integer.parseInt(articleFileNO[i]));
					articleFileList.add(fileVO);
					articleMap.put("articleFileList", articleFileList);
				} else {
					fileVO.setArticleFileName(fileName);
					modAddFileList.add(fileVO);
					articleMap.put("modAddFileList", modAddFileList);
				}
			}
		}

		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			System.out.println("실행");

			boardService.modArticle(articleMap);
			if (fileList != null && fileList.size() != 0) {

				for (int i = 0; i < fileList.size(); i++) {
					String fileName = fileList.get(i);
					if (i < pre_file_num) {
						System.out.println(fileName);
//						if (fileName != null) {	
						if (fileName != dummy) {
							String[] oldName = (String[]) articleMap.get("oldFileName");
							String oldFileName = oldName[i];
							File oldFile = new File(ARTICLE_FILE_REPO + "\\" + brd_no + "\\" + oldFileName);
							oldFile.delete();

							File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + fileName);
							File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
							FileUtils.moveFileToDirectory(srcFile, destDir, true);
						} else if (fileName == dummy) {
							String[] oldName = (String[]) articleMap.get("oldFileName");
							String oldFileName = oldName[i];
							File oldFile = new File(ARTICLE_FILE_REPO + "\\" + brd_no + "\\" + oldFileName);
							oldFile.delete();
//주석?
						} else if (fileName == null) {
								File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + fileName);
								File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
								FileUtils.moveFileToDirectory(srcFile, destDir, true);
						}
				}else if (i >= pre_file_num) {
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + fileName);
					File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
						}
					}
				}

			message = "<script>";
			message += " alert('글을 수정했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/YS_board/viewArticle.do?brd_no="
					+ brd_no + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {

			if (fileList != null && fileList.size() != 0) { // 오류 발생 시 temp 폴더에 업로드된 이미지 파일들을 삭제한다.
				for (int i = 0; i < fileList.size(); i++) {
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + fileList.get(i));
					srcFile.delete();
				}

				e.printStackTrace();
			}

			message = "<script>";
			message += " alert('오류가 발생했습니다.다시 수정해주세요');";
			message += " location.href='" + multipartRequest.getContextPath() + "/YS_board/viewArticle.do?brd_no="
					+ brd_no + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}
		boardService.cleanDummyFile();
		return resEnt;
	}

	// 글 삭제
	@Override
	@RequestMapping(value = "/YS_board/removeArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity removeArticle(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			boardService.removeArticle(brd_no);
			File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
			FileUtils.deleteDirectory(destDir);

			message = "<script>";
			message += " alert('글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/YS_board/listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='" + request.getContextPath() + "/YS_board/listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	// 수정하기에서 파일 삭제 기능
	@RequestMapping(value = "/YS_board/removeModFile.do", method = RequestMethod.POST)
	@ResponseBody
	public void removeModFile(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();

		try {
			String articleFileNO = (String) request.getParameter("articleFileNO");
			String articleFileName = (String) request.getParameter("articleFileName");
			String brd_no = (String) request.getParameter("brd_no");

			System.out.println("imageFileNO = " + articleFileNO);
			System.out.println("articleNO = " + brd_no);

			FileVO fileVO = new FileVO();
			fileVO.setBrd_no(Integer.parseInt(brd_no));
			fileVO.setArticleFileNO(Integer.parseInt(articleFileNO));
			boardService.removeModFile(fileVO);

			File oldFile = new File(ARTICLE_FILE_REPO + "\\" + brd_no + "\\" + articleFileName);
			oldFile.delete();

			writer.print("success");
		} catch (Exception e) {
			writer.print("failed");
		}

	}

	// 다중 업로드
	private List<String> upload(MultipartHttpServletRequest multipartRequest, String BoardNO) throws Exception {
		String dummy = "dummy.txt";
		multipartRequest.setCharacterEncoding("utf-8");
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while (fileNames.hasNext()) {
			Thread.sleep(10);
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			if (originalFileName != "" && originalFileName != null) {

				if (new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + originalFileName).exists()
						|| new File(ARTICLE_FILE_REPO + "\\" + BoardNO + "\\" + originalFileName).exists()) {
					Date nowDate = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_hhmmss_SSS");
					String strNowDate = sdf.format(nowDate);

					String[] FN = originalFileName.split("[.]", 2);
					String ChangedAFN = FN[0] + "_" + strNowDate + "." + FN[1];
					originalFileName = ChangedAFN;
				}

				File file = new File(ARTICLE_FILE_REPO + "\\" + fileName);
				if (mFile.getSize() != 0) {
					if (!file.exists()) {
						file.getParentFile().mkdirs();
						if (fileName.equals("articleFileName1") || fileName.equals("OriginalFileName1")) {
							fileList.add("thumb.png");
							mFile.transferTo(new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + "thumb.png"));
						} else {
							fileList.add(originalFileName);
							mFile.transferTo(new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + originalFileName));
						}
					}
				}
			}else {
//				fileList.add(null);
				fileList.add(dummy);
			}
		}
		System.out.println(fileList.toString());
		return fileList;
	}
	//썸네
	@RequestMapping(value = "/thumbnails.do", method = { RequestMethod.GET, RequestMethod.POST })
	protected void thumbnails(@RequestParam("fileName") String fileName, @RequestParam("brd_no") String brd_no,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		String filePath = ARTICLE_FILE_REPO + "\\" + brd_no + "\\" + fileName;
		File image = new File(filePath);

		if (image.exists()) {
			if (fileName.equals("thumb.png")) {
				Thumbnails.of(image).size(230, 180).outputFormat("png").toOutputStream(out);
				byte[] buffer = new byte[1024 * 8];
				out.write(buffer);
				out.close();
			} else if (!fileName.equals("thumb.png")) {
				if (fileName.contains(".png") || fileName.contains(".jpg")) {
					Thumbnails.of(image).size(900, 900).outputFormat("png").toOutputStream(out);
					byte[] buffer = new byte[1024 * 8];
					out.write(buffer);
					out.close();
				}
			}
		}
	}

	// 다운로드
	@RequestMapping(value = "/YS_board/download.do", method = RequestMethod.POST)
	private void Filedownload(@RequestParam("brd_no") int brd_no,
			@RequestParam("articleFileName") String articleFileName, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String file_repo = ARTICLE_FILE_REPO + "\\" + brd_no;
		OutputStream out = response.getOutputStream();
		String downFile = file_repo + "\\" + articleFileName;
		File f = new File(downFile);
		String filename = new String(articleFileName.getBytes("euc-kr"), "ISO-8859-1");
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName=" + filename);
		FileInputStream in = new FileInputStream(f);
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

	// 창 표시
	@RequestMapping(value = "/YS_board/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	// 검색 기능
	// 페이징/listArticls 뷰 공유 아직 없음
	@RequestMapping(value = "/YS_board/searchArticles.do", method = RequestMethod.GET)
	public ModelAndView searchArticles(@RequestParam("searchWord") String searchWord, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section == null) ? "1" : _section));
		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));

		Map pagingMap = new HashMap();
		pagingMap.put("searchWord", searchWord);
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);

//			List articlesList = boardService.searchArticles(searchWord);
		Map articlesMap = boardService.searchArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);
		articlesMap.put("searchWord", searchWord);

		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}

	// 좋아요
	@ResponseBody
	@RequestMapping(value = "/YS_board/activeLike.do", method = {RequestMethod.POST,RequestMethod.GET}, produces = "application/json")
	public int activeLike(@RequestParam("heart") int heart, @RequestParam("brd_no") int brd_no,
			HttpServletRequest request) throws Exception {
//		        시큐리티용 현재 접속자 ID 수령 코드 취합 및 사용시 교체해 주세요.
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id=(String)principal;
//		String member_id = "lee";

		LikeVO likeVO = new LikeVO();

		likeVO.setBrd_no(brd_no);
		likeVO.setMember_id(member_id);
		System.out.println(heart);
		if (heart == 0) {			System.out.println("쉴행");
			boardService.insertBoardLike(likeVO);
			heart = 1;
		} else{			System.out.println("시횅");
			boardService.deleteBoardLike(likeVO);
			heart = 0;
			}		System.out.println(heart);		return heart;	}

	@RequestMapping(value = "/YS_board/howtocome.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView howtocome(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	// 바둑판글 목록 창
	@Override
	@RequestMapping(value = "/YS_board/NewsListArticles.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView NewsListArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");

		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section == null) ? "1" : _section));
		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));

		Map pagingMap = new HashMap();
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);

		Map articlesMap = boardService.NewslistArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);

		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}

	// 자료실 목록 창
	@Override
	@RequestMapping(value = "/YS_board/RepoListArticles.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView RepoListArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");

		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section == null) ? "1" : _section));
		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));

		Map pagingMap = new HashMap();
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);

		Map articlesMap = boardService.RepolistArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesMap", articlesMap);		
		return mav;
	}
	
	@RequestMapping(value = "/YS_board/replyListArticles.do", method = { RequestMethod.GET, RequestMethod.POST })
	public Map replyListArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		int brd_no = Integer.parseInt(request.getParameter("brd_no"));
		String _section=request.getParameter("section");
		String _pageNum=request.getParameter("pageNum");
		int section = Integer.parseInt(((_section==null)? "1":_section));
		int pageNum = Integer.parseInt(((_pageNum==null)? "1":_pageNum));
		Map pagingMap=new HashMap();
		pagingMap.put("brd_no", brd_no);
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);
		Map replyMap = boardService.replyListArticles(pagingMap);

		replyMap.put("section", section);
		replyMap.put("pageNum", pageNum);
		System.out.println(replyMap.toString());
		return replyMap;
	}
	
	@RequestMapping(value ={"/YS_board/addNewReply.do","/YS_board/addReplyOnReply.do"} , method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public ResponseEntity addNewReply(
			@RequestParam("brd_no") int brd_no,
			@RequestParam("reply") String reply,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		Map replyMap = new HashMap();
		Enumeration enu = request.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = request.getParameter(name);
			replyMap.put(name, value);
		}
		replyMap.put("reply_text", reply);
		
		// 로그인 시 세션에 저장된 회원 정보에서 글쓴이 아이디를 얻어와서 Map에 저장합니다.
		// 로그인 취합 시 사용
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String id = memberVO.getMember_id();
		String member_id = "lee";

		// 시큐리티용 현재 접속자 ID 수령 코드 취합 및 실 사용시 교체 해주세요.
//		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String member_id=(String)principal;

		replyMap.put("member_id", member_id);
		String WhereFrom = request.getRequestURI().toString();
		if(WhereFrom.equals("/project/YS_board/addNewReply.do")){
			System.out.println("진입");
			replyMap.put("reply_lvl", 0);
		}else if(WhereFrom.equals("/project/YS_board/addReplyOnReply.do")){
			String reply_lvl = (String)session.getAttribute("reply_lvl");
			replyMap.put("reply_lvl", (reply_lvl == null ? 0: reply_lvl));
		}
		
		
		System.out.println(replyMap.toString());
		int articleNO = Integer.parseInt(request.getParameter("brd_no"));
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int reply_no = boardService.addNewReply(replyMap);

			message = "<script>";
			message += " alert('새 댓글을 추가했습니다.');";
			message += " location.href='" + request.getContextPath() + "/YS_board/viewArticle.do?brd_no="+ articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {

			message = " <script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message += " location.href='" + request.getContextPath() + "/YS_board/viewArticle.do?brd_no="+ articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
	
	
	
	
	@RequestMapping(value = "/YS_board/removeReplyArticle.do", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResponseEntity removeReplyArticle(@RequestParam("reply_no") int reply_no,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		String brd_no = request.getParameter("brd_no");
		int articleNO = Integer.parseInt(brd_no);
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			boardService.removeReplyArticle(reply_no);
			
			message = "<script>";
			message += " alert('해당 댓글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/YS_board/viewArticle.do?brd_no="+ articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message +=  " location.href='" + request.getContextPath() + "/YS_board/viewArticle.do?brd_no="+ articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

}
