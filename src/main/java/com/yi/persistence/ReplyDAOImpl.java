package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Criteria;
import com.yi.domain.ReplyVO;
import com.yi.domain.StarpointVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	
	private static final String namesapces = "mappers.ReplyMapper.";
	
	@Autowired
	public SqlSession sqlsession;

	@Override
	public List<ReplyVO> listByBoardNo(int boardNo, Criteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardNo", boardNo);
		map.put("cri", cri);
		return sqlsession.selectList(namesapces + "listByBoardNo", map);
	}

	@Override
	public int totalCountByReply(int boardNo) throws Exception {
		return sqlsession.selectOne(namesapces + "totalCountByReply", boardNo);
	}

	@Override
	public ReplyVO selectByCmtNo(int commentNo) throws Exception {
		return sqlsession.selectOne(namesapces + "selectByCmtNo", commentNo);
	}

	@Override
	public void insertReply(ReplyVO vo) throws Exception {
		sqlsession.insert(namesapces + "insertReply", vo);
	}

	@Override
	public void updateReply(ReplyVO vo) throws Exception {
		sqlsession.update(namesapces + "updateReply", vo);
	}

	@Override
	public void deleteReply(int commentNo) throws Exception {
		sqlsession.delete(namesapces + "deleteReply", commentNo);
	}

	@Override
	public List<StarpointVO> listByCafeNo(int cafeNo, Criteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cafeNo", cafeNo);
		map.put("cri", cri);
		return sqlsession.selectList(namesapces + "listByCafeNo", map);
	}

	@Override
	public int totalCountByCafeNo(int cafeNo) throws Exception {
		return sqlsession.selectOne(namesapces+"totalCountByCafeNo", cafeNo);
	}

	@Override
	public StarpointVO selectByStarPointNo(int starPointNo) throws Exception {
		return sqlsession.selectOne(namesapces+"selectByStarPointNo", starPointNo);
	}

	@Override
	public void insertStarPoint(StarpointVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateStarPoint(StarpointVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteStarPoint(int starPointNo) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
