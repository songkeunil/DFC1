//package com.djplat.project.board.controller;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//
//@Controller("boardDataController")
//public class BoardControllerImpl implements BoardController {
//	private static String ARTICLE_IMAGE_REPO = "C:\\GJ\\file_repo\\board\\data";
//	@Autowired
//	BoardService boardService;
//	@Autowired
//	BoardVO boardVO;
//
//	@Override
//	@RequestMapping(value = { "/board/boardList.do" }, method = { RequestMethod.GET, RequestMethod.POST })
//	public ModelAndView boardList(HttpServletRequest request, HttpServletResponse response) throws Exception {
//
//		String _section = request.getParameter("section");
//		String _pageNum = request.getParameter("pageNum");
//		int section = Integer.parseInt(((_section == null) ? "1" : _section));
//		int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));
//		Map pagingMap = new HashMap();
//		pagingMap.put("section", section);
//		pagingMap.put("pageNum", pageNum);
//		Map articlesMap = boardService.listArticles(pagingMap);
//
//		articlesMap.put("section", section);
//		articlesMap.put("pageNum", pageNum);
//
//		String viewName = (String) request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView(viewName);
//		mav.addObject("articlesMap", articlesMap);
//		return mav;
//	}