package com.djplat.project.YS_news.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import net.coobird.thumbnailator.Thumbnails;

import com.djplat.project.YS_news.service.BoardService;
import com.djplat.project.YS_news.vo.ArticleVO;


@Controller("YSN_boardController")
public class BoardControllerImpl implements BoardController{

	@Autowired
	private BoardService boardService;
	@Autowired
	private ArticleVO articleVO;
	
	//글 목록 창
		@Override
		@RequestMapping(value= "/YS_news/listArticles.do", method = {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			
			String _section = request.getParameter("section");
			String _pageNum = request.getParameter("pageNum");
			int section = Integer.parseInt(((_section==null)?"1":_section));
			int pageNum = Integer.parseInt(((_pageNum==null)?"1":_pageNum));
			
			Map pagingMap = new HashMap();
			pagingMap.put("section", section);
			pagingMap.put("pageNum", pageNum);
			
			Map articlesMap = boardService.listArticles(pagingMap);
			articlesMap.put("section", section);
			articlesMap.put("pageNum", pageNum);

			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("articlesMap", articlesMap);
			System.out.println(mav.toString());
			return mav;
		}
		
		
}