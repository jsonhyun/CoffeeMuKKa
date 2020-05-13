package com.yi.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class CafeDAOTest {
	
	@Autowired
	private CafeDAO dao;
	
	@Test
	public void test08ListCriteria() throws Exception {
		Criteria cri = new Criteria(); //페이지 번호, 페이지당 display 게시글 갯수
		cri.setPage(1);
		cri.setPerPageNum(20);
		dao.listCriteria(cri);
		
	}
	
//	@Test
	public void testDAO() throws Exception {
		System.out.println(dao);
		
	}

}
