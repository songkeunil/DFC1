package com.djplat.project.mentalReview.service;

import java.util.Map;

import com.djplat.project.member.vo.MemberVO;

public interface ReviewService {

	public Map listArticles(Map pagingMap) throws Exception;

	public int addNewArticle(Map articleMap) throws Exception;

	public Map viewArticle(int brd_no) throws Exception;

	public void modReviewView(MemberVO vo) throws Exception;

	public void removeArticle(int brd_no) throws Exception;
	
	public Map searchArticles(Map pagingMap) throws Exception;
}
