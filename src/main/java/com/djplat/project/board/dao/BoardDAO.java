package com.djplat.project.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.djplat.project.board.vo.ArticleVO;




public interface BoardDAO {
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException;
	public int insertNewArticle(Map articleMap) throws DataAccessException;
	public ArticleVO selectArticle(int brd_no) throws DataAccessException;
	public void updateArticle(Map articleMap) throws DataAccessException;
	public void deleteArticle(int brd_no) throws DataAccessException;
	public int selectTotArticles() throws DataAccessException;
}