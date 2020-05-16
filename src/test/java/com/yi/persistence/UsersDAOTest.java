package com.yi.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UsersDAOTest {
	
	@Autowired
	public UsersDAO dao;
	
	@Test
	public void testDao() {
		System.out.println("UsersDao : " + dao);
	}

	@Test
	public void testUpdateUsersGrade() throws Exception {
		int gredeNo = 1;
		int userNo = 4;
		dao.updateUsersGrade(gredeNo, userNo);
	}

}
