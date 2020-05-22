package com.yi.persistence;

import java.util.List;

import com.yi.domain.ThemeVO;

public interface ThemeDAO {
	// 테마 리스트
	public List<ThemeVO> themeList() throws Exception;
	
	// 카페별 테마 순위
	public List<ThemeVO> cafeThemeRank(int cafeNo) throws Exception;
}