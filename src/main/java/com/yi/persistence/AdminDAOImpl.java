package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession sqlsession;
	
	private static final String namespace = "mappers.AdminMapper.";
	
	@Override
	public AdminVO readAdmin(String anoId) throws Exception {
		return sqlsession.selectOne(namespace+"readAdmin", anoId);
	}

}
