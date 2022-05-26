package com.djplat.project.mentalReview.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;
import com.djplat.project.mentalReview.vo.ReviewVO;



@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllArticlesList(Map pagingMap) throws DataAccessException {
		List<ReviewVO> articlesList = sqlSession.selectList("mapper.mindreview.selectAllArticlesList",pagingMap);
		return articlesList;
	}

	@Override
	public int selectTotArticles() throws DataAccessException{
		int totArticles = sqlSession.selectOne("mapper.mindreview.selectTotArticles");
		return totArticles;
	}
	
	
	@Override
	public ReviewVO selectArticle(int brd_no) throws DataAccessException {
		return sqlSession.selectOne("mapper.mindreview.selectArticle", brd_no);
	}
	
	
	@Override
	public void viewArticleCounter(int brd_no) throws DataAccessException{
		sqlSession.update("mapper.mindreview.viewArticleCounter",brd_no);
	}
	


	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException{
//		LocalDateTime now = LocalDateTime.now();
//		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));

		int brd_no = selectNewArticleNO();
		articleMap.put("brd_no", brd_no);
//		articleMap.put("w_date", formatedNow);
		sqlSession.insert("mapper.mindreview.insertNewArticle",articleMap);
		return brd_no;
	}
	private int selectNewArticleNO() throws DataAccessException{
		return sqlSession.selectOne("mapper.mindreview.selectNewArticleNO");
	}


	
	
	@Override
	public void updateArticle(Map articleMap) throws DataAccessException {
		sqlSession.update("mapper.mindreview.updateArticle", articleMap);
	}
	
	

	@Override
	public void deleteArticle(int brd_no) throws DataAccessException {
		sqlSession.delete("mapper.mindreview.deleteArticle", brd_no);
	}
	
	

//	@Override
//	public List selectArticlesBySearchWord(String searchWord) throws DataAccessException{
//		List<CounselVO> articlesList=sqlSession.selectList("mapper.mindreview.selectArticleBySearchWord",searchWord);
//		 return articlesList;
//	}
	
	@Override
	public List selectArticlesBySearchWord(Map pagingMap) throws DataAccessException{
		List<ReviewVO> articlesList=sqlSession.selectList("mapper.mindreview.selectArticleBySearchWord",pagingMap);
		 return articlesList;
	}

	@Override
	public int selectSearchTotArticles(Map pagingMap) throws DataAccessException{
		int searchTotArticles = sqlSession.selectOne("mapper.mindreview.selectSearchTotArticles", pagingMap);
		return searchTotArticles;
	}

	@Override
	public void modReviewView(ReviewVO vo) throws DataAccessException{
		sqlSession.update("mapper.mindreview.modReviewBoard",vo);
	}

	@Override
	public List<ReviewVO> viewReply(int brd_no) throws Exception{
		return sqlSession.selectList("mapper.mindreview.viewReply",brd_no);
	}
}

