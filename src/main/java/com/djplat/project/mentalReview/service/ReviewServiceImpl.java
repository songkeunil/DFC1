package com.djplat.project.mentalReview.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mentalReview.dao.ReviewDAO;
import com.djplat.project.mentalReview.vo.ReviewVO;

@Service("CounselService")
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDAO reviewDAO;
	@Autowired
	private SqlSession sqlSession;

	
	//글목록
	@Override
	public Map listArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ReviewVO> articlesList = reviewDAO.selectAllArticlesList(pagingMap);
		int totArticles = reviewDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}
	//글쓰기
	@Override
	public int addNewArticle(Map articleMap) throws Exception {
		int brd_no = reviewDAO.insertNewArticle(articleMap);
		articleMap.put("brd_no", brd_no);
//		reviewDAO.insertNewArticle(articleMap);
		return brd_no;
	}
	
	//글 보기
	@Override
	public Map viewArticle(int brd_no) throws Exception {
		Map articleMap = new HashMap();
		ReviewVO reviewVO = reviewDAO.selectArticle(brd_no);
		reviewDAO.viewArticleCounter(brd_no);
		articleMap.put("article", reviewVO);
		return articleMap;
	}
	//글수정
	@Override
	public void modReviewView(ReviewVO vo) throws Exception {
		reviewDAO.modReviewView(vo);
	}
	//글지우기
	@Override
	public void removeArticle(int brd_no) throws Exception {
		reviewDAO.deleteArticle(brd_no);
	}
	
	//글검색
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
	//댓글보기
	public List<ReviewVO> viewReply(int brd_no) throws Exception{
		return reviewDAO.viewReply(brd_no);
	}
	
}
