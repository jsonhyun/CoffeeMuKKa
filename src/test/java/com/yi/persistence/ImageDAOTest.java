package com.yi.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.BoardVO;
import com.yi.domain.ImageVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ImageDAOTest {

	@Autowired
	private ImageDAO dao;
	
	@Test
	public void testDao() {
		System.out.println("dao : " + dao);	
	}
	
	@Test
	public void testInsertImageByBoardNo() throws Exception {
		BoardVO bno = new BoardVO();
		bno.setBoardNo(1);
		ImageVO vo = new ImageVO();
		vo.setImageName("/2020/05/15/s_f62c7cca-3f04-4a51-b540-911512f55698_23g-1.jpg");
		vo.setBoardNo(bno);
		
		System.out.println("vo ------- "+vo);
		dao.insertImageByBoardNo(vo);
	}
	
	@Test
	public void testImageListByBoardNo() throws Exception {
		int boardNo = 1;
		dao.imageListByBoardNo(boardNo);
	}
	
	

}
