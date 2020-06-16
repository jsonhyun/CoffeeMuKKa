package com.yi.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.CafeCdt;
import com.yi.domain.PowerLinkVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class PowerLinkDAOTest {
	
	@Autowired
	private PowerLinkDAO dao;
	
	//@Test
	public void testDao() {
		System.out.println("dao : " + dao);	
	}
	

	//@Test
	public void test01MonthlyPreCafeUpdate() throws Exception {
		dao.monthlyPreCafeUpdate();
	}

	//@Test
	public void test02MonthlyNextCafeUpdate() throws Exception {
		dao.monthlyNextCafeUpdate("05");
	}
	
	//@Test
	public void testSelectAdminMonCafeLastWaitYearAndMon() throws Exception {
		dao.selectAdminMonCafeLastWaitYearAndMon();
	}
	
	//@Test
	public void testSelectAdminMonCafeLastMonthCnt() throws Exception {
		dao.selectAdminMonCafeLastMonthCnt(2020, 7);
	}
	
	//@Test
	public void testUpdateAdminMonCafePostCancel() throws Exception {
		PowerLinkVO vo = new PowerLinkVO();
		vo.setPowCdt(CafeCdt.CANCEL);
		vo.setPowNo(20);
		
		dao.updateAdminMonCafePostCancel(vo);
	}
	
	@Test
	public void testSelectAdminBackMonCafe() throws Exception {
		dao.selectAdminBackMonCafe(15);
	}

}
