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
		int brd_no = boardDAO.insertNewArticle(articleMap);
		articleMap.put("brd_no", brd_no);
		boardDAO.insertNewArticleFile(articleMap);
		return brd_no;
	}
	
	@Override
	public Map viewArticle(int brd_no) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(brd_no);
		List<ArticleVO> articleFileList = boardDAO.selectArticleFileList(brd_no);
		articleMap.put("article", articleVO);
		articleMap.put("articleFileList", articleFileList);
		return articleMap;
	}
	
	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.updateArticle(articleMap);
		
		List<FileVO> articleFileList = (List<FileVO>)articleMap.get("articleFileList");
		List<FileVO> modAddFileList = (List<FileVO>)articleMap.get("modAddFileList");
		
		if(articleFileList != null && articleFileList.size() != 0) {
			int added_file_num = Integer.parseInt((String) articleMap.get("added_file_num"));
			int pre_file_num = Integer.parseInt((String) articleMap.get("pre_file_num"));
			
			if(pre_file_num < added_file_num) {
				boardDAO.updateArticleFile(articleMap);
				boardDAO.insertModNewFile(articleMap);
			}else {
				boardDAO.updateArticleFile(articleMap);
			}
		}else if(modAddFileList != null && modAddFileList.size() != 0){
			boardDAO.insertModNewFile(articleMap);
		}
	}
	
	@Override
	public void removeArticle(int brd_no) throws Exception {
		boardDAO.deleteArticle(brd_no);
	}
	
//	@Override
//	public void removeModFile(FileVO fileVO) throws Exception{
//		boardDAO.delete);
//	}
	
	
	@Override
	public List searchArticles(String searchWord) throws Exception{
		List<ArticleVO> articlesList=boardDAO.selectArticlesBySearchWord(searchWord);
		return articlesList;
	}
	
}
