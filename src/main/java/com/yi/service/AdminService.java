package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.AdminVO;
import com.yi.persistence.AdminDAO;

@Service
public class AdminService {
	
	@Autowired
	AdminDAO dao;
	
	public AdminVO readAdmin(String anoId) throws Exception{
		return dao.readAdmin(anoId);
	}
}
