package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.SearchCriteria;
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
	
	public void modifyUsers(UsersVO vo) throws Exception{
		dao.modifyUsers(vo);
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
	
	//경진 추가 ----------------------------------------------------------------------------
	// 회원 list
	public List<UsersVO> selectUserList(int userType, SearchCriteria cri) throws Exception {
		return dao.selectUserList(userType, cri);
	}
	
	// 회원 list total count
	public int selectUserListTotalCnt(int userType, SearchCriteria cri) throws Exception {
		return dao.selectUserListTotalCnt(userType, cri);
	}
}
