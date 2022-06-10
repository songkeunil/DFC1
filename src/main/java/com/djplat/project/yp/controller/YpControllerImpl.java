package com.djplat.project.yp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.djplat.project.yp.service.YpService;
import com.djplat.project.yp.vo.FileVO;
import com.djplat.project.yp.vo.YpVO;

@Controller
public class YpControllerImpl implements YpController {
	// ?뙆?씪 ???옣 寃쎈줈
	private static final String ARTICLE_FILE_REPO = "C:\\counsel\\counselboard\\article_file";
	@Autowired
	private YpService ypService;
	@Autowired
	private MemberVO memberVO;
	@Autowired
	private YpVO ypVO;

	// 寃뚯떆湲? 紐⑸줉 蹂닿린
	@Override
	@RequestMapping(value = "/yp/ypconsult_board.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");

		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section == null) ? "1" : _section));
		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));

		Map pagingMap = new HashMap();
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);

		Map articlesMap = ypService.listArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);

		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesMap", articlesMap);
		System.out.println("list" + mav.toString());
		return mav;
	}

	// 湲??벐湲?
	@Override
	@RequestMapping(value = "/yp/addArticle.do", method = { RequestMethod.POST, RequestMethod.GET })
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

		// 濡쒓렇?씤 ?떆 ?꽭?뀡?뿉 ???옣?맂 ?쉶?썝 ?젙蹂댁뿉?꽌 湲??벖?씠 ?븘?씠?뵒瑜? ?뼸?뼱???꽌 Map?뿉
		// ???옣?빀?땲?떎.
		// 濡쒓렇?씤 痍⑦빀 ?떆 ?궗?슜
//		HttpSession session = multipartRequest.getSession();
//		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String member_id = memberVO.getMember_id();
//		String member_id = "lee";

		// ?떆?걧由ы떚?슜 ?쁽?옱 ?젒?냽?옄 ID ?닔?졊 肄붾뱶 痍⑦빀 諛? ?떎 ?궗?슜?떆 援먯껜 ?빐二쇱꽭?슂.
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String member_id = (String) principal;

		articleMap.put("member_id", member_id);
		// ?뜑誘?(?떟湲? parentNO ?궗?슜?븞?븿)
//		articleMap.put("parentNO", 0);
//		String parentNO = (String)session.getAttribute("parentNO");
//		articleMap.put("parentNO", (parentNO == null ? 0: parentNO));

		// ?뙆?씪 ?씠由꾩쓣 諛쏆븘 ?꽌鍮꾩뒪濡? ?쟾?떖
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
			int brd_no = ypService.addNewArticle(articleMap);

			// ?뙆?씪?씠由? 由ъ뒪?듃瑜? ?씤?떇?븯硫? 吏??젙 寃쎈줈?븞 ?엫?떆?뤃?뜑?뿉 ???옣, 湲? 踰덊샇濡? ?맂 ?뙆?씪?쓣
			// ?깮?꽦, ?썑?뿉 洹? ?븞?뿉 ?뙆?씪 ???옣
			if (articleFileList != null && articleFileList.size() != 0) {
				for (FileVO fileVO : articleFileList) {
					articleFileName = fileVO.getArticleFileName();
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + articleFileName);
					File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);

					int lastIndex = articleFileName.lastIndexOf(".");
					String imageLocFileName = articleFileName.substring(0, lastIndex);
					File thumbnailFile = new File(
							ARTICLE_FILE_REPO + "\\" + "thumbnail" + "\\" + imageLocFileName + ".png");
					File thumbDes = new File(ARTICLE_FILE_REPO + "\\" + "thumbnail" + "\\" + brd_no);
					FileUtils.moveFileToDirectory(thumbnailFile, thumbDes, true);
				}
			}

			message = "<script>";
			message += " alert('?깉湲??쓣 異붽??뻽?뒿?땲?떎.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/yp/ypconsult_board.do'; ";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			// ?뙆?씪?씠由? 由ъ뒪?듃瑜? ?씤?떇?븯吏? 紐? ?븯硫? ?엫?떆 ?뤃?뜑?뿉 ?뾽濡쒕뱶 ?맂 ?뙆?씪?쓣 ???옣 ?썑, ?궘?젣
			if (articleFileList != null && articleFileList.size() != 0) {
				for (FileVO fileVO : articleFileList) {
					articleFileName = fileVO.getArticleFileName();
					File srcFile = new File(ARTICLE_FILE_REPO + "\\" + "temp" + "\\" + articleFileName);
					srcFile.delete();

					int lastIndex = articleFileName.lastIndexOf(".");
					String imageLocFileName = articleFileName.substring(0, lastIndex);
					File thumbnailFile = new File(
							ARTICLE_FILE_REPO + "\\" + "thumbnail" + "\\" + imageLocFileName + ".png");
					thumbnailFile.delete();
				}
			}
			message = " <script>";
			message += " alert('?삤瑜섍? 諛쒖깮?뻽?뒿?땲?떎. ?떎?떆 ?떆?룄?빐 二쇱꽭?슂');');";
			message += " location.href='" + multipartRequest.getContextPath() + "/yp/articleForm.do'; ";
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

	// 게시글보기
	@Override
	@RequestMapping(value = "/yp/viewArticle.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView viewArticle(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = ypService.viewArticle(brd_no);

//			?떆?걧由ы떚?슜 ?꽭?뀡 id ?닔?졊 肄붾뱶
//			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//	        String member_id=(String)principal;
		String member_id = memberVO.getMember_id();
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
//		List<YpVO> viewReply = ypService.viewReply(ypVO.getBrd_no());
//		mav.addObject("viewReply", viewReply);
		return mav;
	}

//	// 湲? ?닔?젙
//	@Override
//	@RequestMapping(value = "/yp/modypView.do", method = { RequestMethod.POST, RequestMethod.GET })
//	public String modypView(YpVO vo) throws Exception {
//		ypService.modypView(vo);
//
//		return "redirect:/yp/viewArticle.do?brd_no=" + vo.getBrd_no();
//	}

	// 소개
	@RequestMapping("/yp/ypintro_Ustudent.do")
	public String ypintro_Ustudent(Model model) {
		return "/yp/ypintro_Ustudent";
	}
	
	@RequestMapping("/yp/ypintro_BeStartup.do")
	public String ypintro_BeStartup(Model model) {
		return "/yp/ypintro_BeStartup";
	}

	@RequestMapping("/yp/ypintro_Worker.do")
	public String ypintro_Worker(Model model) {
		return "/yp/ypintro_Worker";
	}
	//청년정책상담실
	@RequestMapping("/yp/ypconsult.do")
	public String ypconsult(Model model) {
		return "/yp/ypconsult";
	}

	@RequestMapping("/yp/ypconsult_faq.do")
	public String ypconsult_faq(Model model) {
		return "/yp/ypconsult_faq";
	}

	// 湲? ?닔?젙 ?긽?꽭?옣
	@RequestMapping(value = "/yp/modyp.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView modyp(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = ypService.viewArticle(brd_no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		return mav;
	}

	////////////////////////////////////////////////////////////////////////////////////////

	// 글 수정
	@RequestMapping(value = "/yp/modArticle.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
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

		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			System.out.println("service 진입");
			ypService.modArticle(articleMap);
			System.out.println("service 퇴출");
			message = "<script>";
			message += " alert('글을 수정했습니다.');";
			message += " location.href='" + multipartRequest.getContextPath() + "/yp/viewArticle.do?brd_no=" + brd_no
					+ "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {

			message = "<script>";
			message += " alert('오류가 발생했습니다.다시 수정해주세요');";
			message += " location.href='" + multipartRequest.getContextPath() + "/yp/viewArticle.do?brd_no=" + brd_no
					+ "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}
		return resEnt;
	}

	/////////////////////////////////////////////////////////////////////////////////////////

	// 湲? ?궘?젣
	@Override
	@RequestMapping(value = "/yp/removeArticle.do", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public ResponseEntity removeArticle(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			ypService.removeArticle(brd_no);
			File destDir = new File(ARTICLE_FILE_REPO + "\\" + brd_no);
			FileUtils.deleteDirectory(destDir);

			message = "<script>";
			message += " alert('湲??쓣 ?궘?젣?뻽?뒿?땲?떎.');";
			message += " location.href='" + request.getContextPath() + "/yp/ypconsult_board.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('?옉?뾽以? ?삤瑜섍? 諛쒖깮?뻽?뒿?땲?떎.?떎?떆 ?떆?룄?빐 二쇱꽭?슂.');";
			message += " location.href='" + request.getContextPath() + "/yp/ypconsult_board.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	// 李? ?몴?떆
	@RequestMapping(value = "/yp/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	// 寃??깋 湲곕뒫
	// ?럹?씠吏?/listArticls 酉? 怨듭쑀 ?븘吏? ?뾾?쓬
	@RequestMapping(value = "/yp/searchArticles.do", method = { RequestMethod.POST, RequestMethod.GET })
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

//			List articlesList = ypService.searchArticles(searchWord);
		Map articlesMap = ypService.searchArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);
		articlesMap.put("searchWord", searchWord);

		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}

	// �닔�젙�슜 �긽�꽭李� 蹂닿린
	@RequestMapping(value = "/yp/forModShowArticles.do", method = RequestMethod.GET)
	public ModelAndView forModShowArticles(@RequestParam("brd_no") int brd_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		Map articleMap = ypService.viewArticle(brd_no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		return mav;
	}

	// 댓글 리스트 표시
	@RequestMapping(value = "/yp/boardView_re.do", method = { RequestMethod.GET, RequestMethod.POST })
	public Map replyListArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int brd_no = Integer.parseInt(request.getParameter("brd_no"));
		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section == null) ? "1" : _section));
		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));
		Map pagingMap = new HashMap();
		pagingMap.put("brd_no", brd_no);
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);
		Map replyMap = ypService.replyListArticles(pagingMap);

		replyMap.put("section", section);
		replyMap.put("pageNum", pageNum);
		return replyMap;
	}

	// 댓글 등록(대댓글은 더미, 내버려둬도 무방, 실 사용시 시큐리티 ID부분 전환 필수)
	@RequestMapping(value = { "/yp/addNewReply.do", "/yp/addReplyOnReply.do" }, method = { RequestMethod.GET,
			RequestMethod.POST })
	@ResponseBody
	public ResponseEntity addNewReply(@RequestParam("brd_no") int brd_no, @RequestParam("reply") String reply,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		Map replyMap = new HashMap();
		Enumeration enu = request.getParameterNames();
		while (enu.hasMoreElements()) {
			String name = (String) enu.nextElement();
			String value = request.getParameter(name);
			replyMap.put(name, value);
		}
		replyMap.put("re_context", reply);

		// 로그인 시 세션에 저장된 회원 정보에서 글쓴이 아이디를 얻어와서 Map에 저장합니다.
		// 로그인 취합 시 사용
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		String member_id = "lee";

		// 시큐리티용 현재 접속자 ID 수령 코드 취합 및 실 사용시 교체 해주세요.
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	        String member_id=(String)principal;

		replyMap.put("member_id", member_id);
		String WhereFrom = request.getRequestURI().toString();
		if (WhereFrom.equals("/djplat/yp/addNewReply.do")) {
			System.out.println("진입");
			replyMap.put("reply_lvl", 0);
		} else if (WhereFrom.equals("/djplat/yp/addReplyOnReply.do")) {
			String reply_lvl = (String) session.getAttribute("reply_lvl");
			replyMap.put("reply_lvl", (reply_lvl == null ? 0 : reply_lvl));
		}

		int articleNO = Integer.parseInt(request.getParameter("brd_no"));
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			int re_no = ypService.addNewReply(replyMap);

			message = "<script>";
			message += " alert('새 댓글을 추가했습니다.');";
			message += " location.href='" + request.getContextPath() + "/yp/viewArticle.do?brd_no=" + articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {

			message = " <script>";
			message += " alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message += " location.href='" + request.getContextPath() + "/yp/viewArticle.do?brd_no=" + articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

	// 댓글 삭제
	@RequestMapping(value = "/yp/removeReplyArticle.do", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public ResponseEntity removeReplyArticle(@RequestParam("re_no") int re_no, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		String brd_no = request.getParameter("brd_no");
		int articleNO = Integer.parseInt(brd_no);
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			ypService.removeReplyArticle(re_no);

			message = "<script>";
			message += " alert('해당 댓글을 삭제했습니다.');";
			message += " location.href='" + request.getContextPath() + "/yp/viewArticle.do?brd_no=" + articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);

		} catch (Exception e) {
			message = "<script>";
			message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
			message += " location.href='" + request.getContextPath() + "/yp/viewArticle.do?brd_no=" + articleNO + "';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}

}