package com.djplat.project.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.djplat.project.board.dao.BoardDAO;
import com.djplat.project.board.vo.ArticleVO;







@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {

	
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public Map listArticles(Map pagingMap) throws Exception{
	Map articlesMap = new HashMap();
	List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList(pagingMap);
	int totArticles = boardDAO.selectTotArticles();
	articlesMap.put("articlesList", articlesList);
	articlesMap.put("totArticles", totArticles);
    return articlesMap;
	}
	
	@Override
	public int addNewArticle(Map articleMap) throws Exception{
		return boardDAO.insertNewArticle(articleMap);
	}
	
	@Override
	public Map viewArticle(int brd_no) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(brd_no);
//		List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
		articleMap.put("article", articleVO);
//		articleMap.put("imageFileList", imageFileList);
		return articleMap;
	}
	
	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.updateArticle(articleMap);
	}
	
	@Override
	public void removeArticle(int brd_no) throws Exception {
		boardDAO.deleteArticle(brd_no);
	}
}
