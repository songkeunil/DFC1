package com.djplat.project.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.board.service.BoardService;
import com.djplat.project.board.vo.ArticleVO;







@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException {
		List<ArticleVO> articlesList = sqlSession.selectList("mapper.board.selectAllArticlesList",pagingMap);
		return articlesList;
	}
		
	@Override
	public int selectTotArticles() throws DataAccessException{
		int totArticles = sqlSession.selectOne("mapper.board.selectTotArticles");
		return totArticles;
	}
	
	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException{
		int articleNO = selectNewArticleNO();
		articleMap.put("articleNO", articleNO);
		sqlSession.insert("mapper.board.insertNewArticle",articleMap);
		return articleNO;
	}
	

	private int selectNewArticleNO() throws DataAccessException{
		return sqlSession.selectOne("mapper.board.selectNewArticleNO");
	}
	
	@Override
	public ArticleVO selectArticle(int brd_no) throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectArticle", brd_no);
	}
	
	@Override
	public void updateArticle(Map articleMap) throws DataAccessException {
		sqlSession.update("mapper.board.updateArticle", articleMap);
	}
	
	@Override
	public void deleteArticle(int brd_no) throws DataAccessException {
		sqlSession.delete("mapper.board.deleteArticle", brd_no);
		
	}
	
}
