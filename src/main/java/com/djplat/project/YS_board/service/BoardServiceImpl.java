package com.djplat.project.YS_board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.djplat.project.YS_board.dao.BoardDAO;
import com.djplat.project.YS_board.vo.ArticleVO;
import com.djplat.project.YS_board.vo.FileVO;
import com.djplat.project.YS_board.vo.LikeVO;

@Service("YSB_boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDAO;

	@Override
	public Map listArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList = boardDAO.selectAllArticlesList(pagingMap);
		int totArticles = boardDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}
	
	public Map NewslistArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList = boardDAO.selectAllNewsArticlesList(pagingMap);
		int totArticles = boardDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}
	
	public Map RepolistArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList = boardDAO.selectAllRepoArticlesList(pagingMap);
		int totArticles = boardDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}

	@Override
	public int addNewArticle(Map articleMap) throws Exception {
		int brd_no = boardDAO.insertNewArticle(articleMap);
		articleMap.put("brd_no", brd_no);
		boardDAO.insertNewArticleFile(articleMap);
		return brd_no;
	}
	
//	@Override
//	public void addNewFileOnMod(Map articleMap) throws Exception{
//		boardDAO.insertNewArticleFile(articleMap);
//	}
	

	@Override
	public Map viewArticle(int brd_no) throws Exception {
		Map articleMap = new HashMap();
		ArticleVO articleVO = boardDAO.selectArticle(brd_no);
		List<ArticleVO> articleFileList = boardDAO.selectArticleFileList(brd_no);
		boardDAO.viewArticleCounter(brd_no);
		articleMap.put("article", articleVO);
		articleMap.put("articleFileList", articleFileList);
		return articleMap;
	}

	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.updateArticle(articleMap);

		List<FileVO> articleFileList = (List<FileVO>) articleMap.get("articleFileList");
		List<FileVO> modAddFileList = (List<FileVO>) articleMap.get("modAddFileList");

		if (articleFileList != null && articleFileList.size() != 0) {
			int added_file_num = Integer.parseInt((String) articleMap.get("added_file_num"));
			int pre_file_num = Integer.parseInt((String) articleMap.get("pre_file_num"));

			if (pre_file_num < added_file_num) {
				boardDAO.updateArticleFile(articleMap);
				boardDAO.insertModNewFile(articleMap);
			} else {
				boardDAO.updateArticleFile(articleMap);
			}
		} else if (modAddFileList != null && modAddFileList.size() != 0) {
			boardDAO.insertModNewFile(articleMap);
		}
	}

	@Override
	public void removeArticle(int brd_no) throws Exception {
		boardDAO.deleteArticle(brd_no);
	}

	@Override
	public void removeModFile(FileVO fileVO) throws Exception {
		boardDAO.deleteModArticleFile(fileVO);
	}

//	@Override
//	public List searchArticles(String searchWord) throws Exception {
//		List<ArticleVO> articlesList = boardDAO.selectArticlesBySearchWord(searchWord);
//		return articlesList;
//	}
	
	@Override
	public Map searchArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList = boardDAO.selectArticlesBySearchWord(pagingMap);
		int searchTotArticles = boardDAO.selectSearchTotArticles(pagingMap);
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("searchTotArticles", searchTotArticles);
		return articlesMap;
	}

	@Override
	public void updateViewCounter(LikeVO likeVO) throws Exception {
		boardDAO.updateBoardLike(likeVO);
	}

	@Override
	public int getBoardLike(LikeVO likeVO) throws Exception {
		int heart = boardDAO.getBoardLike(likeVO);
		System.out.println(likeVO.toString());
		System.out.println(heart);
		return heart;
	}
	
	@Override
	public void insertBoardLike(LikeVO likeVO) throws Exception {
		boardDAO.insertBoardLike(likeVO);
		boardDAO.updateBoardLike(likeVO);
	}

	@Override
	public void deleteBoardLike(LikeVO likeVO) throws Exception {
		boardDAO.deleteBoardLike(likeVO);
		boardDAO.updateBoardLike(likeVO);
		System.out.println(boardDAO.toString());
	}
	
	@Override
	public void cleanDummyFile() throws Exception{
		boardDAO.cleanDummyFile();
	}
	
	@Override
	public Map replyListArticles(Map pagingMap) throws Exception{
		Map replyMap = new HashMap();
		List<ArticleVO> replyList = boardDAO.selectAllReplyArticlesList(pagingMap);
		int totReplies = boardDAO.selectReplyTotArticles(pagingMap);
		replyMap.put("replyList", replyList);
		replyMap.put("totReplies", totReplies);
        return replyMap;
	}
	
	@Override
	public int addNewReply(Map replyMap) throws Exception {
		int reply_no = boardDAO.insertNewReply(replyMap);
		replyMap.put("brd_no", reply_no);
		return reply_no;
	}
	
	@Override
	public void removeReplyArticle(int reply_no) throws Exception {
		boardDAO.deleteReplyArticle(reply_no);
	}
}
