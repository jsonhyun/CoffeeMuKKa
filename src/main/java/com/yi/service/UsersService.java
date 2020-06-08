package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.UsersVO;
import com.yi.persistence.UsersDAO;

@Service
public class UsersService {
	
	@Autowired
	UsersDAO dao;
	
	public UsersVO readUsers(String userid) throws Exception {
		return dao.readUsers(userid);
	}
	public UsersVO selectUserPage(String userid) throws Exception{
		return dao.selectUserPage(userid);
	}
	public UsersVO findUsers(UsersVO vo) throws Exception {
		return dao.findUsers(vo);
	}
	
	public void modifyUsersPass(UsersVO vo) throws Exception{
		dao.modifyUsersPass(vo);
	}

	public UsersVO duplCheckId(UsersVO vo) throws Exception {
		return dao.duplCheckId(vo);
	}

	public UsersVO duplCheckNick(UsersVO vo) throws Exception {
		return dao.duplCheckNick(vo);
	}

	public void register(UsersVO vo) throws Exception {
		dao.register(vo);
	}
}
