package com.djplat.project.YS_news.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.YS_news.vo.ArticleVO;

@Repository("YSN_boardDAO")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException {
		List<ArticleVO> articlesList = sqlSession.selectList("mapper.YS_news.selectAllArticlesList",pagingMap);
		return articlesList;
	}

	@Override
	public int selectTotArticles() throws DataAccessException{
		int totArticles = sqlSession.selectOne("mapper.YS_news.selectTotArticles");
		return totArticles;
	}
}
