package com.djplat.project.YS_news.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

public interface BoardDAO {

	public List selectAllArticlesList(Map pagingMap) throws DataAccessException;
	public int selectTotArticles() throws DataAccessException;
}