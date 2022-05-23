package com.djplat.project.mentalReview.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mentalReview.dao.ReviewDAO;
import com.djplat.project.mentalReview.vo.ReviewVO;

@Service("CounselService")
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDAO reviewDAO;

	@Override
	public Map listArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ReviewVO> articlesList = reviewDAO.selectAllArticlesList(pagingMap);
		int totArticles = reviewDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}

	@Override
	public int addNewArticle(Map articleMap) throws Exception {
		int brd_no = reviewDAO.insertNewArticle(articleMap);
		articleMap.put("brd_no", brd_no);
		reviewDAO.insertNewArticle(articleMap);
		return brd_no;
	}

	@Override
	public Map viewArticle(int brd_no) throws Exception {
		Map articleMap = new HashMap();
		ReviewVO reviewVO = reviewDAO.selectArticle(brd_no);
		reviewDAO.viewArticleCounter(brd_no);
		articleMap.put("article", reviewVO);
		return articleMap;
	}

	@Override
	public void modCounselBoard(MemberVO vo) throws Exception {
		reviewDAO.modCounselBoard(vo);
	}

	@Override
	public void removeArticle(int brd_no) throws Exception {
		reviewDAO.deleteArticle(brd_no);
	}
	
	@Override
	public Map searchArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ReviewVO> articlesList = reviewDAO.selectArticlesBySearchWord(pagingMap);
		int searchTotArticles = reviewDAO.selectSearchTotArticles(pagingMap);
		System.out.println(searchTotArticles);
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("searchTotArticles", searchTotArticles);
		return articlesMap;
	}
}
