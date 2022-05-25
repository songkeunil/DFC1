package com.djplat.project.suit_board.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.djplat.project.suit_board.dao.SuitDAO;
import com.djplat.project.suit_board.vo.CodeVO;
import com.djplat.project.suit_board.vo.SearchCriteria;
import com.djplat.project.suit_board.vo.SuitVO;

@Service("suitService")
@Transactional(propagation = Propagation.REQUIRED)

public class SuitServiceImpl implements SuitService{

	@Autowired
	private SuitDAO suitDAO;
	
	public int selectTotalNO(String queryId, SearchCriteria scri) throws SQLException{
		int result = suitDAO.selectTotalNO(queryId, scri);
		return result;
	}
	
	public List selectListAll(String queryId, SearchCriteria scri) throws SQLException{
		List<SuitVO> allList = suitDAO.selectListAll(queryId, scri);
		return allList;
	}
	
	public SuitVO selectInfo(String queryId, String req_no) throws SQLException{
		SuitVO suitVO = suitDAO.selectInfo(queryId, req_no);
		return suitVO;
	}
	
	public List selectFileInfo(String queryId, String req_no) throws SQLException{
		List fileInfo = suitDAO.selectFileInfo(queryId, req_no);
		return fileInfo;
	}
	
	public List selectCode(String queryId) throws SQLException{
		List<CodeVO> codeList = suitDAO.selectCode(queryId);
		return codeList;
	}
	
	public String selectNO(String queryId, String member_id) throws SQLException{
		String result = suitDAO.selectNO(queryId, member_id);
		return result;
	}
	
	public void insertSuit(String queryId, SuitVO suitVO) throws SQLException {
		suitDAO.insertSuit(queryId, suitVO);
	};
	
	public void insertIC(String queryId, SuitVO suitVO) throws SQLException{
		suitDAO.insertIC(queryId, suitVO);
	}
	
	public void insertFile(String queryId, Map fileMap) throws SQLException {
		suitDAO.insertFile(queryId, fileMap);
	}
	
	public void updateSuit(String queryId, SuitVO suitVO) throws SQLException{
		suitDAO.updateSuit(queryId, suitVO);
	}
	
	public void updateIC(String queryId, SuitVO suitVO) throws SQLException{
		suitDAO.updateIC(queryId, suitVO);
	}
	
	public void deleteFileAll(String queryId, String req_no) throws SQLException{
		suitDAO.deleteFileAll(queryId, req_no);
	}
	
	public void deleteAll(String queryId, String req_no) throws SQLException{
		suitDAO.deleteAll(queryId, req_no);
	}
}
