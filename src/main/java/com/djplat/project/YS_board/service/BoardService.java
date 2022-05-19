package com.djplat.project.YS_board.service;

import java.util.List;
import java.util.Map;

import com.djplat.project.YS_board.vo.ArticleVO;
import com.djplat.project.YS_board.vo.FileVO;
import com.djplat.project.YS_board.vo.LikeVO;





public interface BoardService {

	public Map listArticles(Map pagingMap) throws Exception;
	public int addNewArticle(Map articleMap) throws Exception;
	public Map viewArticle(int brd_no) throws Exception;
	public void modArticle(Map articleMap) throws Exception;
	public void removeArticle(int brd_no) throws Exception;
	public void removeModFile(FileVO fileVO) throws Exception;
//	public List searchArticles(String searchWord) throws Exception;
	public Map searchArticles(Map pagingMap) throws Exception;
	public void updateViewCounter(LikeVO likeVO) throws Exception;
	public int getBoardLike(LikeVO likeVO) throws Exception;
	public void insertBoardLike(LikeVO likeVO) throws Exception;
	public void deleteBoardLike(LikeVO likeVO) throws Exception;
}