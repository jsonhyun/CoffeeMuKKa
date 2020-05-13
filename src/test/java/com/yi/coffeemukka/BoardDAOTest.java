package com.yi.coffeemukka;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.BoardVO;
import com.yi.persistence.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDAOTest {
	
	@Autowired
	public BoardDAO dao;
	
	@Test
	public void testDao() {
		System.out.println("BoardDAO값 "+dao);
	}
	
	@Test
	public void testRcInsert() throws Exception{
		BoardVO vo = new BoardVO();
		vo.setBoardNo2(2);
		vo.setUserNo(0);
		vo.setZoneNo(1);
		vo.setThemeNo(1);
		vo.setWritingTitle(writingTitle);
		dao.rcInsert(vo);
	}
	
}
