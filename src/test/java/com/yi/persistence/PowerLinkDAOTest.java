package com.yi.persistence;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class PowerLinkDAOTest {
	
	@Autowired
	private PowerLinkDAO dao;
	
	@Test
	public void testDao() {
		System.out.println("dao : " + dao);	
	}
	

	@Test
	public void test01MonthlyPreCafeUpdate() throws Exception {
		dao.monthlyPreCafeUpdate();
	}

	@Test
	public void test02MonthlyNextCafeUpdate() throws Exception {
		dao.monthlyNextCafeUpdate("05");
	}

}
