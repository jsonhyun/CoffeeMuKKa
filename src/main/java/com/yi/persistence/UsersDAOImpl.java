package com.yi.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.UsersVO;

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

	@Override
	public UsersVO readUsers(String userid) throws Exception {
		return sqlsession.selectOne(namespace+"readUsers", userid);
	}

	@Override
	public UsersVO findUsers(UsersVO vo) throws Exception {
		return sqlsession.selectOne(namespace+"findUsers", vo);
	}

	@Override
	public void modifyUsers(UsersVO vo) throws Exception {
		sqlsession.update(namespace+"modifyUsers", vo);
	}

}
