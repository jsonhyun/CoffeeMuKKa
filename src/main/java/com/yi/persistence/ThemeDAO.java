package com.yi.persistence;

import java.util.List;

import com.yi.domain.ThemeVO;

public interface ThemeDAO {
	// 테마 리스트
	public List<ThemeVO> themeList() throws Exception;
}
