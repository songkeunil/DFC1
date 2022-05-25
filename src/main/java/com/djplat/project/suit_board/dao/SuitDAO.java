package com.djplat.project.suit_board.dao;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.djplat.project.suit_board.vo.AttachVO;
import com.djplat.project.suit_board.vo.CodeVO;
import com.djplat.project.suit_board.vo.SearchCriteria;
import com.djplat.project.suit_board.vo.SuitVO;

@Repository("suitDAO")
public class SuitDAO extends AbstractDAO{

	// 리스트 + 검색 + 페이징 (총 게시글 개수 구하기)
	public int selectTotalNO(String queryId, SearchCriteria scri) throws SQLException{
		int result = (int) selectOne(queryId, scri);
		return result;
	}
	
	// 리스트 + 검색 + 페이징
	public List selectListAll(String queryId, SearchCriteria scri) throws SQLException{
		List<SuitVO> allList = selectList(queryId, scri);
		return allList;
	}
	
	public SuitVO selectInfo(String queryId, String req_no) throws SQLException{
		SuitVO suitVO = (SuitVO) selectOne(queryId, req_no);
		return suitVO;
	}
	
	public List selectFileInfo(String queryId, String req_no) throws SQLException{
		List fileInfo = selectList(queryId, req_no);
		return fileInfo;
	}
	
	public List selectCode(String queryId) throws SQLException{
		List<CodeVO> codeList = selectList(queryId); 
		return codeList;
	}
	
	public String selectNO(String queryId, String member_id) throws SQLException{
		String result = (String) selectOne(queryId, member_id);
		return result;
	}
	
	public void insertSuit(String queryId, SuitVO suitVO) throws SQLException{
		insert(queryId, suitVO);
	}
	
	public void insertIC(String queryId, SuitVO suitVO) throws SQLException{
		insert(queryId, suitVO);
	}
	
	public void insertFile(String queryId, Map fileMap) throws SQLException{
		
		String req_no = (String) fileMap.get("req_no");
		
		List<AttachVO> fileList = (ArrayList) fileMap.get("rentFileList");
		for(AttachVO attachVO : fileList ) {
			
			attachVO.setReq_no(req_no);
			System.out.println(attachVO.getReq_no());
		}
		insert(queryId, fileList);
	}
	
	public void updateSuit(String queryId, SuitVO suitVO) throws SQLException{
		update(queryId, suitVO);
	}
	
	public void updateIC(String queryId, SuitVO suitVO) throws SQLException{
		update(queryId, suitVO);
	}
	
	public void deleteFileAll(String queryId, String req_no) throws SQLException{
		delete(queryId, req_no);
	}
	
	public void deleteAll(String queryId, String req_no) throws SQLException{
		delete(queryId, req_no);
	}
}
