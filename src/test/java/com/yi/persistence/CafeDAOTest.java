package com.yi.persistence;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.Criteria;
import com.yi.domain.SearchCriteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class CafeDAOTest {
	
	@Autowired
	private CafeDAO dao;
	
	//@Test
	public void test08ListCriteria() throws Exception {
		SearchCriteria cri = new SearchCriteria(); //페이지 번호, 페이지당 display 게시글 갯수
		cri.setPage(1);
		cri.setPerPageNum(20);
		dao.listSearchCriteria(cri);
		
	}
	
//	@Test
	public void testDAO() throws Exception {
		System.out.println(dao);
		
	}
	
	@Test
	public void testCafeMainSearch() throws Exception {
		Criteria cri = new Criteria();
		cri.setPage(1);
		cri.setPerPageNum(20);
		String themeNos = "3,4,";
		dao.cafeMainSearch(10, themeNos, cri);
	}

}
