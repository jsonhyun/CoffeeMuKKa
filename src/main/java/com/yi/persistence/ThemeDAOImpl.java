package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ThemeVO;

@Repository
public class ThemeDAOImpl implements ThemeDAO{
	@Autowired
	public SqlSession sqlsession;
	
	private static final String namespace = "mappers.ThemeMapper.";

	// 테마 리스트
	@Override
	public List<ThemeVO> themeList() throws Exception {
		return sqlsession.selectList(namespace + "themeList");
	}

	// 카페별 테마 순위
	@Override
	public List<ThemeVO> cafeThemeRank(int cafeNo) throws Exception {
		return sqlsession.selectList(namespace + "cafeThemeRank", cafeNo);
	}
	
}
