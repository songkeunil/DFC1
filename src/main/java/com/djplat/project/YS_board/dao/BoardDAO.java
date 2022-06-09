package com.djplat.project.YS_board.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;

import com.djplat.project.YS_board.vo.ArticleVO;
import com.djplat.project.YS_board.vo.FileVO;
import com.djplat.project.YS_board.vo.LikeVO;




public interface BoardDAO {
	public List selectArticlesList(Map pagingMap) throws DataAccessException;
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
//	public List selectArticlesBySearchWord(String searchWord) throws DataAccessException;
	public List selectArticlesBySearchWord(Map pagingMap) throws DataAccessException;
	public int selectSearchTotArticles(Map pagingMap) throws DataAccessException;
	public int getBoardLike(LikeVO likeVO) throws Exception;
	public void insertBoardLike(LikeVO likeVO) throws Exception;
	public void deleteBoardLike(LikeVO likeVO) throws Exception;
	public void updateBoardLike(LikeVO likeVO) throws Exception;
	public void cleanDummyFile() throws Exception;
	public List selectAllReplyArticlesList(Map pagingMap) throws DataAccessException;
	public int selectReplyTotArticles(Map pagingMap) throws DataAccessException;
	public int insertNewReply(Map replyMap) throws Exception;
	public void deleteReplyArticle(int reply_no) throws Exception;
}