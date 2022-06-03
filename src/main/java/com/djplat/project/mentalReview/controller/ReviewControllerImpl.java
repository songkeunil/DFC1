package com.djplat.project.mentalReview.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mentalReview.service.ReviewService;
import com.djplat.project.mentalReview.vo.FileVO;
import com.djplat.project.mentalReview.vo.ReviewVO;

@Controller
public class ReviewControllerImpl  implements ReviewController{
	//파일 저장 경로
	private static final String ARTICLE_FILE_REPO = "C:\\counsel\\counselboard\\article_file";
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MemberVO memberVO;
	@Autowired
	private ReviewVO reviewVO;
	
	//게시글 목록 보기
	@Override
	@RequestMapping(value = "/mentalreview/listArticles.do", method = {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
			String viewName = (String) request.getAttribute("viewName");

			String _section = request.getParameter("section");
			String _pageNum = request.getParameter("pageNum");
			int section = Integer.parseInt(((_section == null) ? "1" : _section));
			int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));

			Map pagingMap = new HashMap();
			pagingMap.put("section", section);
			pagingMap.put("pageNum", pageNum);

			Map articlesMap = reviewService.listArticles(pagingMap);
			articlesMap.put("section", section);
			articlesMap.put("pageNum", pageNum);

			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("articlesMap", articlesMap);
//			System.out.println("list" + mav.toString());
			return mav;
	}
	
	//글쓰기
	@Override
	@RequestMapping(value = "/mentalreview/addArticle.do", method={RequestMethod.POST,RequestMethod.GET})
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
//		HttpSession session = multipartRequest.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String member_id = memberVO.getMember_id();
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
		List<String> fileList = upload(multipartRequest);
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
			int brd_no = reviewService.addNewArticle(articleMap);

			// 파일이름 리스트를 인식하면 지정 경로안 임시폴더에 저장, 글 번호로 된 파일을 생성, 후에 그 안에 파일 저장
			if (articleFileList != null && articleFileList.size() != 0) {
				for (FileVO fileVO : articleFileList) {
					articleFileName = fileVO.getArticleFileName();
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + articleFileName);
					File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					
					int lastIndex = articleFileName.lastIndexOf(".");
					String imageLocFileName = articleFileName.substring(0, lastIndex);
					File thumbnailFile = new File(ARTICLE_FILE_REPO + "\\" + "thumbnail" + "\\" + imageLocFileName + ".png");
					File thumbDes = new File(ARTICLE_FILE_REPO + "\\" + "thumbnail" + "\\" + brd_no);
					FileUtils.moveFileToDirectory(thumbnailFile, thumbDes, true);
				}
			}
			
			message = "<script>";
			message += " alert('새글을 추가했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/mentalreview/listArticles.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			// 파일이름 리스트를 인식하지 못 하면 임시 폴더에 업로드 된 파일을 저장 후, 삭제
			if (articleFileList != null && articleFileList.size() != 0) {
				for (FileVO fileVO : articleFileList) {
					articleFileName = fileVO.getArticleFileName();
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + articleFileName);
					srcFile.delete();
					
					int lastIndex = articleFileName.lastIndexOf(".");
					String imageLocFileName = articleFileName.substring(0, lastIndex);
					File thumbnailFile = new File(ARTICLE_FILE_REPO + "\\" + "thumbnail" + "\\" + imageLocFileName + ".png");
					thumbnailFile.delete();
				}
			}
			message = " <script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message += " location.href='" + multipartRequest.getContextPath() + "/YS_board/articleForm.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

private List<String> upload(MultipartHttpServletRequest multipartRequest) {
		// TODO Auto-generated method stub
		return null;
	}

	//게시글 보기
	@Override
	@RequestMapping(value = "/mentalreview/viewArticle.do", method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView viewArticle(@RequestParam("brd_no") int brd_no,HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = reviewService.viewArticle(brd_no);

//			시큐리티용 세션 id 수령 코드
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	        String member_id=(String)principal;
//		String member_id = memberVO.getMember_id();
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		
		/*
		 * List<ReviewVO> viewReply = reviewService.viewReply(reviewVO.getBrd_no());
		 * mav.setViewName(viewName); mav.addObject("viewReply",viewReply);
		 */	return mav;
	}
	

	// 글 수정
		@Override
		@RequestMapping(value="/mentalreview/modReviewView.do" ,method={RequestMethod.POST,RequestMethod.GET})
		public String modReviewView(ReviewVO vo)  throws Exception{
			reviewService.modReviewView(vo);
	
			return "redirect:/mentalreview/viewArticle.do?brd_no="+vo.getBrd_no();
		}

		//마음건강 소개
		@RequestMapping("/mentalreview/introduceMental.html")
		   public String introduceMental(Model model) {
		      return "introduceMental";
		   }
		
		
		//글 수정 상세장
		@RequestMapping(value = "/mentalreview/modReview.do",  method = {RequestMethod.GET ,RequestMethod.POST})
		public ModelAndView modReview(@RequestParam("brd_no") int brd_no, HttpServletRequest request,HttpServletResponse response) throws Exception {
			String viewName = (String) request.getAttribute("viewName");
			Map articleMap = reviewService.viewArticle(brd_no);
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			mav.addObject("articleMap", articleMap);
//			System.out.println(mav);
			return mav;
	}		
		
	// 글 삭제
	@Override
	@RequestMapping(value = "/mentalreview/removeArticle.do", method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public ResponseEntity removeArticle(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			reviewService.removeArticle(brd_no);
			File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
			FileUtils.deleteDirectory(destDir);

			message = "<script>";
			message += " alert('글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/mentalreview/listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='" + request.getContextPath() + "/mentalreview/listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	
	
	// 창 표시
	@RequestMapping(value = "/mentalreview/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	// 검색 기능
	// 페이징/listArticls 뷰 공유 아직 없음
	@RequestMapping(value = "/mentalreview/searchArticles.do", method={RequestMethod.POST,RequestMethod.GET})
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

//			List articlesList = reviewService.searchArticles(searchWord);
		Map articlesMap = reviewService.searchArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);
		articlesMap.put("searchWord", searchWord);

		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}
	// 마음건강 상담페이지 상담신청내역 불러오기
	@RequestMapping(value = "/mentalreview/counselMental.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView counselMentalList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = (String) request.getAttribute("viewName");

		List<HashMap<String, String>> counselMentalList = reviewService.requestList();
		mav.addObject("counselMentalList", counselMentalList);

		mav.setViewName(viewName);
		return mav;

	}

//	 마음건강 상담페이지 상담신청내역 삭제
	@Override
	@RequestMapping(value = "/mentalreview/deleteMental.do", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public ResponseEntity removeCounsel(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			System.out.println(brd_no);
			reviewService.removeCounsel(brd_no);
			File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
			FileUtils.deleteDirectory(destDir);

			message = "<script>";
			message += " alert('글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/mentalreview/counselMental.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='" + request.getContextPath() + "/mentalreview/counselMental.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
//	//댓글 작성
//	@RequestMapping(value="/mentalreview/addReply.do", method={RequestMethod.POST,RequestMethod.GET})
//	public String addReply(ReviewVO vo) throws Exception{
//		reviewService.addReply(vo);
//		return "redirect:/mentalreview/viewArticle.do?brd_no=" +vo.getBrd_no();
//	}

}