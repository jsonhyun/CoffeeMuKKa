package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ImageVO;

@Repository
public class ImageDAOImpl implements ImageDAO {
	
	@Autowired
	public SqlSession sqlSession;
	
	private static final String namespace = "mappers.ImageMapper.";

	@Override
	public void insertImageByBoardNo(ImageVO vo) throws Exception {
		sqlSession.insert(namespace + "insertImageByBoardNo", vo);
	}

	@Override
	public List<ImageVO> imageListByBoardNo(int boardNo) throws Exception {
		return sqlSession.selectList(namespace + "imageListByBoardNo", boardNo);
	}

}
