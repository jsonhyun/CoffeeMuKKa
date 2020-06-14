package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.AdminVO;
import com.yi.domain.SearchCriteria;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession sqlsession;
	
	private static final String namespace = "mappers.AdminMapper.";
	
	@Override
	public AdminVO readAdmin(String anoId) throws Exception {
		return sqlsession.selectOne(namespace+"readAdmin", anoId);
	}

	@Override
	public List<AdminVO> selectAdminList(SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cri", cri);
		
		return sqlsession.selectList(namespace + "selectAdminList", map);
	}

	@Override
	public int selectAdminTotalCnt(SearchCriteria cri) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cri", cri);
		
		return sqlsession.selectOne(namespace + "selectAdminTotalCnt", map);
	}

}
