package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.PowerLinkVO;
import com.yi.domain.SearchCriteria;

@Repository
public class PowerLinkDAOImpl implements PowerLinkDAO {

	@Autowired
	public SqlSession sqlSession;

	private static final String namespace = "mappers.PowerLink.";

	@Override
	public String monthlyCafePostDate() throws Exception {
		return sqlSession.selectOne(namespace + "monthlyCafePostDate");
	}

	@Override
	public void monthlyPreCafeUpdate() throws Exception {
		sqlSession.update(namespace + "monthlyPreCafeUpdate");
	}

	@Override
	public void monthlyNextCafeUpdate(String month) throws Exception {
		sqlSession.update(namespace + "monthlyNextCafeUpdate", month);
	}
	
	// 파워링크 관리 리스트
	@Override
	public List<PowerLinkVO> selectAdminMonCafeList(SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cri", cri);
		
		return sqlSession.selectList(namespace + "selectAdminMonCafeList", map);
	}
	
	// 파워링크 전체 갯수
	@Override
	public int selectAdminMonCafeTotalCnt(SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cri", cri);
		return sqlSession.selectOne(namespace + "selectAdminMonCafeTotalCnt", map);
	}

	// 파워링크 게시대기중인 마지막 데이터 year, month
	@Override
	public List<Integer> selectAdminMonCafeLastWaitYearAndMon() throws Exception {
		return sqlSession.selectList(namespace + "selectAdminMonCafeLastWaitYearAndMon");
	}
	
	// 파워링크 게시대기중인 첫번째 데이터 year, month
	@Override
	public List<Integer> selectAdminMonCafeFirstWaitYearAndMon() throws Exception {
		return sqlSession.selectList(namespace + "selectAdminMonCafeFirstWaitYearAndMon");
	}

	// 파워링크 게시대기중 마지막으로 등록된 달의 갯수
	@Override
	public int selectAdminMonCafeLastMonthCnt(int year, int month) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("year", year);
		map.put("month", month);
		
		return sqlSession.selectOne(namespace + "selectAdminMonCafeLastMonthCnt", map);
	}

	// 파워링크 게시일 등록
	@Override
	public void updateAdminMonCafePostDate(String postDate, int powNo) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("postDate", postDate);
		map.put("powNo", powNo);
		
		sqlSession.update(namespace + "updateAdminMonCafePostDate", map);
	}

	// 파워링크 게시 취소
	@Override
	public void updateAdminMonCafePostCancel(PowerLinkVO vo) throws Exception {
		sqlSession.update(namespace + "updateAdminMonCafePostCancel", vo);
	}

	// 취소된 파워 링크 뒤 파워링크
	@Override
	public List<Integer> selectAdminBackMonCafe(int powNo) throws Exception {
		return sqlSession.selectList(namespace + "selectAdminBackMonCafe", powNo);
	}

	
	

}
