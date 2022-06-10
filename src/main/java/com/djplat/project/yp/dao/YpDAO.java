package com.djplat.project.yp.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.djplat.project.yp.vo.YpVO;

public interface YpDAO {

	public List selectAllArticlesList(Map pagingMap) throws DataAccessException;

	public int selectTotArticles() throws DataAccessException;

	public int insertNewArticle(Map articleMap) throws DataAccessException;

	public YpVO selectArticle(int brd_no) throws DataAccessException;

	public void viewArticleCounter(int brd_no) throws DataAccessException;

	public void updateArticle(Map articleMap) throws DataAccessException;

	public void deleteArticle(int brd_no) throws DataAccessException;

	public List selectArticlesBySearchWord(Map pagingMap) throws DataAccessException;

	public int selectSearchTotArticles(Map pagingMap) throws DataAccessException;

	public void modypView(Map articleMap) throws DataAccessException;

	public List<YpVO> viewReply(int brd_no) throws Exception;

	public List selectAllReplyArticlesList(Map pagingMap) throws DataAccessException;

	public int selectReplyTotArticles(Map pagingMap) throws DataAccessException;

	public int insertNewReply(Map replyMap) throws Exception;

	public void deleteReplyArticle(int re_no) throws Exception;

}