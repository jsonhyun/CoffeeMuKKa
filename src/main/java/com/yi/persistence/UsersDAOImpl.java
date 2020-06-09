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
	public void modifyUsersPass(UsersVO vo) throws Exception {
		sqlsession.update(namespace+"modifyUsersPass", vo);
	}

	@Override
	public UsersVO duplCheckId(UsersVO vo) throws Exception {
		return sqlsession.selectOne(namespace+"duplCheckId", vo);
	}

	@Override
	public UsersVO duplCheckNick(UsersVO vo) throws Exception {
		return sqlsession.selectOne(namespace+"duplCheckNick", vo);
	}

	@Override
	public void register(UsersVO vo) throws Exception {
		sqlsession.insert(namespace+"register", vo);
	}

	@Override
	public UsersVO selectUserPage(String userid) throws Exception {
		return sqlsession.selectOne(namespace+"selectUserPage", userid);
	}

	@Override
	public void modifyUsers(UsersVO vo) throws Exception {
		sqlsession.update(namespace+"modifyUsers", vo);
	}

	//경진 추가 ----------------------------------------------------------------------------
	// 게시글 등록 시 포인트 적립
	@Override
	public void updatePoint(int amount, int userNo) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("amount", amount);
		map.put("userNo", userNo);
		sqlsession.update(namespace + "updatePoint", map);
	}

}
