package com.djplat.project.yp.service;

import java.util.Map;

public interface YpService {

	public Map listArticles(Map pagingMap) throws Exception;

	public int addNewArticle(Map articleMap) throws Exception;

	public Map viewArticle(int brd_no) throws Exception;

//	public void modypView(YpVO vo) throws Exception;

	public void removeArticle(int brd_no) throws Exception;

	public Map searchArticles(Map pagingMap) throws Exception;

	public void modArticle(Map articleMap) throws Exception;

	int addNewReply(Map replyMap) throws Exception;

	Map replyListArticles(Map pagingMap) throws Exception;

	void removeReplyArticle(int re_no) throws Exception;
}
