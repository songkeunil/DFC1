package com.djplat.project.board.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.djplat.project.board.service.FileVO;
import com.djplat.project.board.vo.ArticleVO;




public interface BoardDAO {
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException;
	public List selectAllArticlesList2(Map pagingMap) throws DataAccessException;
	public List selectAllArticlesList3(Map pagingMap) throws DataAccessException;
	public List selectAllArticlesList4(Map pagingMap) throws DataAccessException;
	public List selectAllArticlesList5(Map pagingMap) throws DataAccessException;
	public int selectTotArticles() throws DataAccessException;
	public ArticleVO selectArticle(int brd_no) throws DataAccessException;
	public List selectArticleFileList(int articleNO) throws DataAccessException;
	public int insertNewArticle(Map articleMap) throws DataAccessException;
	public void insertNewArticleFile(Map articleMap) throws DataAccessException;
	public void insertModNewFile(Map articleMap) throws DataAccessException;
	public void updateArticle(Map articleMap) throws DataAccessException;
	public void updateArticleFile(Map articleMap) throws DataAccessException;
	public void deleteArticle(int brd_no) throws DataAccessException;
	public void deleteModArticleFile(FileVO fileVO) throws DataAccessException;
	public List selectArticlesBySearchWord(String searchWord) throws DataAccessException;


}