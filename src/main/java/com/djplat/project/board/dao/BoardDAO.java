package com.djplat.project.board.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.djplat.project.board.vo.ArticleVO;
import com.djplat.project.board.vo.FileVO;




public interface BoardDAO {
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException;
	public int selectTotArticles() throws DataAccessException;
	public ArticleVO selectArticle(int brd_no) throws DataAccessException;
	public List selectArticleFileList(int articleNO) throws DataAccessException;
	public void viewArticleCounter(int brd_no) throws DataAccessException;
	public int insertNewArticle(Map articleMap) throws DataAccessException;
	public void insertNewArticleFile(Map articleMap) throws DataAccessException;
	public void insertModNewFile(Map articleMap) throws DataAccessException;
	public void updateArticle(Map articleMap) throws DataAccessException;
	public void updateArticleFile(Map articleMap) throws DataAccessException;
	public void deleteArticle(int brd_no) throws DataAccessException;
	public void deleteModArticleFile(FileVO fileVO) throws DataAccessException;
	public List selectArticlesBySearchWord(String searchWord) throws DataAccessException;


}