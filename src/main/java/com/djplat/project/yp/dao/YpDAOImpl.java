package com.djplat.project.yp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.board.vo.ArticleVO;
import com.djplat.project.yp.vo.YpVO;

@Repository
public class YpDAOImpl implements YpDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException {
		List<YpVO> articlesList = sqlSession.selectList("mapper.yp.selectAllArticlesList", pagingMap);
		return articlesList;
	}

	@Override
	public int selectTotArticles() throws DataAccessException {
		int totArticles = sqlSession.selectOne("mapper.yp.selectTotArticles");
		return totArticles;
	}

	@Override
	public YpVO selectArticle(int brd_no) throws DataAccessException {
		return sqlSession.selectOne("mapper.yp.selectArticle", brd_no);
	}

	@Override
	public void viewArticleCounter(int brd_no) throws DataAccessException {
		sqlSession.update("mapper.yp.viewArticleCounter", brd_no);
	}

	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException {
//		LocalDateTime now = LocalDateTime.now();
//		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));

		int brd_no = selectNewArticleNO();
		articleMap.put("brd_no", brd_no);
//		articleMap.put("w_date", formatedNow);
		sqlSession.insert("mapper.yp.insertNewArticle", articleMap);
		return brd_no;
	}

	private int selectNewArticleNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.yp.selectNewArticleNO");
	}

	@Override
	public void updateArticle(Map articleMap) throws DataAccessException {
		sqlSession.update("mapper.yp.updateArticle", articleMap);
	}

	@Override
	public void deleteArticle(int brd_no) throws DataAccessException {
		sqlSession.delete("mapper.yp.deleteArticle", brd_no);
	}

//	@Override
//	public List selectArticlesBySearchWord(String searchWord) throws DataAccessException{
//		List<CounselVO> articlesList=sqlSession.selectList("mapper.mindyp.selectArticleBySearchWord",searchWord);
//		 return articlesList;
//	}

	@Override
	public List selectArticlesBySearchWord(Map pagingMap) throws DataAccessException {
		List<YpVO> articlesList = sqlSession.selectList("mapper.yp.selectArticleBySearchWord", pagingMap);
		return articlesList;
	}

	@Override
	public int selectSearchTotArticles(Map pagingMap) throws DataAccessException {
		int searchTotArticles = sqlSession.selectOne("mapper.yp.selectSearchTotArticles", pagingMap);
		return searchTotArticles;
	}

	@Override
	public void modypView(Map articleMap) throws DataAccessException {
		sqlSession.update("mapper.yp.modypBoard", articleMap);
	}

	// ´ñ±Û
	@Override
	public List selectAllReplyArticlesList(Map pagingMap) throws DataAccessException {
		List<ArticleVO> replyList = sqlSession.selectList("mapper.yp.selectAllReplyArticlesList", pagingMap);
		return replyList;
	}

	@Override
	public int selectReplyTotArticles(Map pagingMap) throws DataAccessException {
		int totReplies = sqlSession.selectOne("mapper.yp.selectReplyTotArticles");
		return totReplies;
	}

	@Override
	public int insertNewReply(Map replyMap) throws Exception {
		int re_no = selectNewReplyNO();
		replyMap.put("re_no", re_no);
		sqlSession.insert("mapper.yp.insertNewReply", replyMap);
		return re_no;
	}

	private int selectNewReplyNO() throws DataAccessException {
		return sqlSession.selectOne("mapper.yp.selectNewReplyNO");
	}

	@Override
	public void deleteReplyArticle(int re_no) throws Exception {
		sqlSession.delete("mapper.yp.deleteReplyArticle", re_no);
	}

	@Override
	public List<YpVO> viewReply(int brd_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
