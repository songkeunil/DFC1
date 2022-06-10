package com.djplat.project.yp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.djplat.project.board.vo.ArticleVO;
import com.djplat.project.yp.dao.YpDAO;
import com.djplat.project.yp.vo.YpVO;

@Service("YpService")
public class YpServiceImpl implements YpService {
	@Autowired
	YpDAO ypDAO;
	@Autowired
	private SqlSession sqlSession;

	// Í∏?Î™©Î°ù
	@Override
	public Map listArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<YpVO> articlesList = ypDAO.selectAllArticlesList(pagingMap);
		int totArticles = ypDAO.selectTotArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}

	// Í∏??ì∞Í∏?
	@Override
	public int addNewArticle(Map articleMap) throws Exception {
		int brd_no = ypDAO.insertNewArticle(articleMap);
		articleMap.put("brd_no", brd_no);
//		ypDAO.insertNewArticle(articleMap);
		return brd_no;
	}

	// Í∏? Î≥¥Í∏∞
	@Override
	public Map viewArticle(int brd_no) throws Exception {
		Map articleMap = new HashMap();
		YpVO ypVO = ypDAO.selectArticle(brd_no);
		ypDAO.viewArticleCounter(brd_no);
		articleMap.put("article", ypVO);
		return articleMap;
	}

	// Í∏?Ïß??ö∞Í∏?
	@Override
	public void removeArticle(int brd_no) throws Exception {
		ypDAO.deleteArticle(brd_no);
	}

	// Í∏?Í≤??Éâ
	@Override
	public Map searchArticles(Map pagingMap) throws Exception {
		Map articlesMap = new HashMap();
		List<YpVO> articlesList = ypDAO.selectArticlesBySearchWord(pagingMap);
		int searchTotArticles = ypDAO.selectSearchTotArticles(pagingMap);
		System.out.println(searchTotArticles);
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("searchTotArticles", searchTotArticles);
		return articlesMap;
	}

	@Override
	public void modArticle(Map articleMap) throws Exception {
		System.out.println(articleMap.toString());
		ypDAO.modypView(articleMap);
	}

	// ¥Ò±€
	@Override
	public Map replyListArticles(Map pagingMap) throws Exception {
		Map replyMap = new HashMap();
		List<ArticleVO> replyList = ypDAO.selectAllReplyArticlesList(pagingMap);
		int totReplies = ypDAO.selectReplyTotArticles(pagingMap);
		replyMap.put("replyList", replyList);
		replyMap.put("totReplies", totReplies);
		return replyMap;
	}

	@Override
	public int addNewReply(Map replyMap) throws Exception {
		int re_no = ypDAO.insertNewReply(replyMap);
		replyMap.put("brd_no", re_no);
		return re_no;
	}

	@Override
	public void removeReplyArticle(int re_no) throws Exception {
		ypDAO.deleteReplyArticle(re_no);
	}

}
