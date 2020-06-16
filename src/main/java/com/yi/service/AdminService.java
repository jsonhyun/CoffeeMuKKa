package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.AdminVO;
import com.yi.domain.SearchCriteria;
import com.yi.persistence.AdminDAO;

@Service
public class AdminService {
	
	@Autowired
	AdminDAO dao;
	
	public AdminVO readAdmin(String anoId) throws Exception{
		return dao.readAdmin(anoId);
	}
	
	public List<AdminVO> selectAdminList(SearchCriteria cri) throws Exception {
		return dao.selectAdminList(cri);
	}
	
	public int selectAdminTotalCnt(SearchCriteria cri) throws Exception {
		return dao.selectAdminTotalCnt(cri);
	}
}
