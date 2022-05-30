package com.djplat.project.suit_board.service;

import java.io.File;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.djplat.project.suit_board.dao.SuitDAO;
import com.djplat.project.suit_board.vo.AttachVO;
import com.djplat.project.suit_board.vo.CodeVO;
import com.djplat.project.suit_board.vo.FileUtils;
import com.djplat.project.suit_board.vo.SearchCriteria;
import com.djplat.project.suit_board.vo.SuitVO;

@Service("suitService")
@Transactional(propagation = Propagation.REQUIRED)

public class SuitServiceImpl implements SuitService{

	@Autowired
	private SuitDAO suitDAO;
	
	@Autowired
	private FileUtils fileUtils;
	
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
	
	@Override
	public List insertFile(String queryId, String req_no, MultipartHttpServletRequest request) throws Exception {
		List<Map<String, Object>> list = fileUtils.upload1(req_no, request);
		
		for (int i = 0; i < list.size(); i++) {
            Map<String, Object> vo = list.get(i);
            Map<String, Object> fileMap = new HashMap<String, Object>();
            fileMap.put("fileName", vo.get("fileName"));
            fileMap.put("stored_fileName", vo.get("stored_fileName"));
            fileMap.put("req_no", req_no);
            
            suitDAO.insertFile(queryId, fileMap);
		}
		return list;
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
	
	public void deleteFile(String queryId, String req_no, List deleteList) throws SQLException{
		
		for(int i=0; i < deleteList.size(); i++) {
			AttachVO attachVO = new AttachVO();
			attachVO.setReq_no(req_no);
			attachVO.setFileName((String)deleteList.get(i));
			suitDAO.deleteFile(queryId, attachVO);
		}
	}
	
	public void deleteAll(String queryId, String req_no) throws SQLException{
		suitDAO.deleteAll(queryId, req_no);
	}
}
