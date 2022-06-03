package com.djplat.project.mentalReview.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

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

	public List<HashMap<String, String>> requestListDAO() throws DataAccessException;

	public void deleteCounsel(int brd_no) throws DataAccessException;

}