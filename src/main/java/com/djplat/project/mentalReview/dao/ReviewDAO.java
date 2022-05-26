package com.djplat.project.mentalReview.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mentalReview.vo.ReviewVO;

public interface ReviewDAO {

	public List selectAllArticlesList(Map pagingMap) throws DataAccessException;

	public int selectTotArticles() throws DataAccessException;

	public int insertNewArticle(Map articleMap) throws DataAccessException;

	public ReviewVO selectArticle(int brd_no) throws DataAccessException;

	public void viewArticleCounter(int brd_no) throws DataAccessException;

	public void updateArticle(Map articleMap) throws DataAccessException;

	public void deleteArticle(int brd_no) throws DataAccessException;

	public List selectArticlesBySearchWord(Map pagingMap) throws DataAccessException;

	public int selectSearchTotArticles(Map pagingMap) throws DataAccessException;

	public void modReviewView(ReviewVO vo) throws DataAccessException;
	
	public List<ReviewVO> viewReply(int brd_no) throws Exception;
}