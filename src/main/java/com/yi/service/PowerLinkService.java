package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.persistence.PowerLinkDAO;

@Service
public class PowerLinkService {
	@Autowired
	private PowerLinkDAO dao;
	
	public String monthlyCafePostDate() throws Exception {
		return dao.monthlyCafePostDate();
	}
}
