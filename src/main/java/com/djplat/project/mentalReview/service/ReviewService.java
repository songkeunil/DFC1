package com.djplat.project.mentalReview.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.djplat.project.mentalReview.vo.ReviewVO;

public interface ReviewService {

	public Map listArticles(Map pagingMap) throws Exception;

	public int addNewArticle(Map articleMap) throws Exception;

	public Map viewArticle(int brd_no) throws Exception;

	public void modReviewView(ReviewVO vo) throws Exception;

	public void removeArticle(int brd_no) throws Exception;

	public Map searchArticles(Map pagingMap) throws Exception;

	public List<HashMap<String, String>> requestList();

	public void removeCounsel(int brd_no) throws Exception;
}
