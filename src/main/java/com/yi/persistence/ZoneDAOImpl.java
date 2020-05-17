package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ZoneVO;

@Repository
public class ZoneDAOImpl implements ZoneDAO {
	@Autowired
	public SqlSession sqlsession;
	
	private static final String namespace = "mappers.ZoneMapper.";

	@Override
	public List<ZoneVO> zoneList() throws Exception {
		return sqlsession.selectList(namespace + "zoneList");
	}

}
