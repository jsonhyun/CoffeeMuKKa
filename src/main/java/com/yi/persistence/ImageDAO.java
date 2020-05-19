package com.yi.persistence;

import java.util.List;

import com.yi.domain.ImageVO;

public interface ImageDAO {
	/* 카페탐방기 대표 이미지 */
	// 이미지 등록
	public void insertImageByBoardNo(ImageVO vo) throws Exception;
	// 이미지 리스트
	public List<ImageVO> imageListByBoardNo(int boardNo) throws Exception;
	// 이미지 수정
	public void updateImageByBoardNo(ImageVO vo) throws Exception;
}
