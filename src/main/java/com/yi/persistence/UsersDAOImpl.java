package com.yi.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UsersDAOImpl implements UsersDAO {

	@Autowired
	private SqlSession sqlsession;
	
	private static final String namespace = "mappers.UsersMapper.";
	
	@Override
	public void updateUsersGrade(int gredeNo, int userNo) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("gredeNo", gredeNo);
		map.put("userNo", userNo);
		sqlsession.update(namespace + "updateUsersGrade", map);
	}

}
