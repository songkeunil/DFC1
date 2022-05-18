package com.djplat.project.board.dao;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.board.service.BoardService;
import com.djplat.project.board.vo.ArticleVO;
import com.djplat.project.board.vo.FileVO;
import com.djplat.project.board.vo.LikeVO;







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
	public ArticleVO selectArticle(int brd_no) throws DataAccessException {
		return sqlSession.selectOne("mapper.board.selectArticle", brd_no);
	}
	
	@Override
	public List selectArticleFileList(int brd_no) throws DataAccessException {
		List<ArticleVO> articleFileList = null;
		articleFileList = sqlSession.selectList("mapper.board.selectArticleFileList",brd_no);
		return articleFileList;
	}
	
	@Override
	public void viewArticleCounter(int brd_no) throws DataAccessException{
		sqlSession.update("mapper.board.viewArticleCounter",brd_no);
	}
	

	@Override
	public int insertNewArticle(Map articleMap) throws DataAccessException{
//		LocalDateTime now = LocalDateTime.now();
//		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));

		int brd_no = selectNewArticleNO();
		articleMap.put("brd_no", brd_no);
//		articleMap.put("w_date", formatedNow);
		sqlSession.insert("mapper.board.insertNewArticle",articleMap);
		return brd_no;
	}
	

	@Override
	public void insertNewArticleFile(Map articleMap) throws DataAccessException{
		List<FileVO> articleFileList = (ArrayList)articleMap.get("articleFileList");
		int brd_no = (Integer)articleMap.get("brd_no");
		int articleFileNO = selectNewArticleFileNO();
		if(articleFileList != null && articleFileList.size() != 0) {
			for(FileVO fileVO : articleFileList) {
				fileVO.setArticleFileNO(++articleFileNO);
				fileVO.setBrd_no(brd_no);
			}
			System.out.println("articleFileList" + articleFileList.toString());
			sqlSession.insert("mapper.board.insertNewArticleFile",articleFileList);
		}
		
	}
	
	private int selectNewArticleNO() throws DataAccessException{
		return sqlSession.selectOne("mapper.board.selectNewArticleNO");
	}
	
	private int selectNewArticleFileNO() throws DataAccessException{
		return sqlSession.selectOne("mapper.board.selectNewArticleFileNO");
	}
	
	
	@Override
	public void updateArticle(Map articleMap) throws DataAccessException {
		sqlSession.update("mapper.board.updateArticle", articleMap);
	}
	
	@Override
	public void updateArticleFile(Map articleMap) throws DataAccessException {
		
		List<FileVO> articleFileList = (ArrayList)articleMap.get("articleFileList");
		int brd_no = Integer.parseInt((String)articleMap.get("brd_no"));
		
		for(int i = articleFileList.size()-1; i >= 0; i--){
			FileVO fileVO = articleFileList.get(i);
			String articleFileName = fileVO.getArticleFileName();
			if(articleFileName == null) {  //기존에 이미지를 수정하지 않는 경우 파일명이 null 이므로  수정할 필요가 없다.
				articleFileList.remove(i);
			}else {
				fileVO.setBrd_no(brd_no);
			}
		}
		
		if(articleFileList != null && articleFileList.size() != 0) {
			sqlSession.update("mapper.board.updateArticleFile", articleFileList);
		}
		
	}

	@Override
	public void insertModNewFile(Map articleMap) throws DataAccessException {
		List<FileVO> modAddFileList = (ArrayList<FileVO>)articleMap.get("modAddFileList");
		int brd_no = Integer.parseInt((String)articleMap.get("brd_no"));
		
		int articleFileNO = selectNewArticleFileNO();
		
		for(FileVO fileVO : modAddFileList){
			fileVO.setBrd_no(brd_no);
			fileVO.setArticleFileNO(articleFileNO);
		}
		
//		sqlSession.delete("mapper.board.insertModNewFile", modAddFileList );
		sqlSession.insert("mapper.board.insertModNewFile", modAddFileList );
		
	}
	
	@Override
	public void deleteArticle(int brd_no) throws DataAccessException {
		sqlSession.delete("mapper.board.deleteArticle", brd_no);
	}
	
	@Override
	public void deleteModArticleFile(FileVO fileVO) throws DataAccessException {
		sqlSession.delete("mapper.board.deleteModArticleFile", fileVO );
	}
	

	@Override
	public List selectArticlesBySearchWord(String searchWord) throws DataAccessException{
		List<ArticleVO> articlesList=sqlSession.selectList("mapper.board.selectArticleBySearchWord",searchWord);
		 return articlesList;
	}
	
	
	@Override
    public int getBoardLike(LikeVO likeVO) throws Exception {
		 return sqlSession.selectOne("mapper.board.getBoardLike",likeVO);
    }

    @Override
    public void insertBoardLike(LikeVO likeVO) throws Exception {
    	int likeno = createNewLikeNO();
    	likeVO.setLikeno(likeno);
        sqlSession.insert("mapper.board.createBoardLike",likeVO);
    }
 
	private int createNewLikeNO() throws DataAccessException{
		return sqlSession.selectOne("mapper.board.createNewLikeNO");
	}
    
    
    @Override
    public void deleteBoardLike(LikeVO likeVO) throws Exception {
    	sqlSession.delete("mapper.board.deleteBoardLike",likeVO);
    }

    @Override
    public void updateBoardLike(LikeVO likeVO) throws Exception {
    	sqlSession.update("mapper.board.updateBoardLike",likeVO);
    }

}
