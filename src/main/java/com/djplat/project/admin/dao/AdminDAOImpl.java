package com.djplat.project.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.djplat.project.member.vo.MemberVO;

@Repository("adminDAO")

public class AdminDAOImpl implements AdminDAO {
	@Autowired
	SqlSession sqlSession;

	// 리스트
	@Override
	public List<MemberVO> selectAllMemberList(HashMap<String, Integer> paging) throws DataAccessException {
		List<MemberVO> listMembers = sqlSession.selectList("mapper.admin.memberList", paging);
		return listMembers;
	}

	// 멤버숫자(페이징에사용)
	@Override
	public int totalMembers() throws DataAccessException {
		int totalMembers = sqlSession.selectOne("mapper.admin.totalMembers");
		return totalMembers;
	}

	// 검색결과숫자(페이징에사용)
	@Override
	public int setotalMembers() throws DataAccessException {
		int setotalMembers = sqlSession.selectOne("mapper.admin.setotalMembers");
		return setotalMembers;
	}

	// 수정
	@Override
	public void modifyMemberInfo(MemberVO vo) throws Exception {
		sqlSession.update("mapper.admin.modifyMemberInfo", vo);

	}

// 마음건강 상담 신청정보 등록
	@Override
	public int counselRegistration(Map articleMap) throws Exception {
		int brd_no = counselRegNO();
		articleMap.put("brd_no", brd_no);
//		System.out.println(brd_no);
//		System.out.println(articleMap);
		sqlSession.insert("mapper.admin.counselRegistration", articleMap);
		return brd_no;

	}

	// brd_no생성
	private int counselRegNO() throws DataAccessException {
//		System.out.println("1212");
		return sqlSession.selectOne("mapper.admin.counselRegNO");
	}

	// 상세조회
	@Override
	public MemberVO memberDetail(String member_id) throws DataAccessException {
		MemberVO memberBean = (MemberVO) sqlSession.selectOne("mapper.admin.memberDetail", member_id);
		return memberBean;
	}

	// 검색
	@Override
	public List<MemberVO> searchMembers(HashMap<String, Integer> paging) throws DataAccessException {
		List<MemberVO> searchMembers = sqlSession.selectList("mapper.admin.searchMembers", paging);
		return searchMembers;
	}
}
