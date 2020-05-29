package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
