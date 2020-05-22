package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ThemeVO;
import com.yi.persistence.ThemeDAO;

@Service
public class ThemeService {

	@Autowired
	private ThemeDAO dao;
	
	public List<ThemeVO> cafeThemeRank(int cafeNo) throws Exception {
		return dao.cafeThemeRank(cafeNo);
	}
}
