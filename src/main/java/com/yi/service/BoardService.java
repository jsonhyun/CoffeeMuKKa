package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.BoardVO;
import com.yi.domain.Criteria;
import com.yi.domain.ImageVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;
import com.yi.domain.ZoneVO;
import com.yi.persistence.BoardDAO;
import com.yi.persistence.ImageDAO;
import com.yi.persistence.ThemeDAO;
import com.yi.persistence.UsersDAO;
import com.yi.persistence.ZoneDAO;

@Service
public class BoardService {
	@Autowired
	BoardDAO dao;
	
	@Autowired
	ImageDAO imgDao;
	
	@Autowired
	UsersDAO userDao;
	
	@Autowired
	ThemeDAO themeDao;
	
	@Autowired
	ZoneDAO zoneDao;
	
	/*** 카페추천 ***/
	//추천카페 -- 리스트	(테스트용)
	public List<BoardVO> recommendboardList() throws Exception{
		return dao.recommendboardList();
	}
	//추천카페 -- 페이징된 리스트	
	public List<BoardVO> recommendboardListCriteria(Criteria cri) throws Exception{
		return dao.recommendboardListCriteria(cri);
	}
	public List<ImageVO> recommendboardImgList(int boardNo) throws Exception {
		return dao.recommendboardImgList(boardNo);
	}
	
	//추천카페 -- 등록
	@Transactional
	public void recommendInsert(BoardVO vo) throws Exception{
		dao.recommendInsert(vo);
		int boardNo = vo.getBoardNo();
		//System.out.println("service=============================="+ vo.getFiles());
		for(String file : vo.getStringFiles()) {
			dao.recommendInsertImages(file,boardNo);
		}	
	}	
	//추천카페 -- 상세보기
	public BoardVO recommendReadByNo(int boardNo) throws Exception{
		return dao.recommendReadByNo(boardNo);
	}
	
	/*** 공통 ***/
	// 오늘 등록된 글 갯수(**커뮤니티 공통**)
	public int todayBoardCount(int cBoardNo) throws Exception{
		return dao.todayBoardCount(cBoardNo);
	}
	// 각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용)
	public int totalSearchCount(int cBoardNo) throws Exception {
		return dao.totalSearchCount(cBoardNo);
	}
	// 각 서브게시물별 등록된 게시글 총 갯수(페이징시 이용 - join)
	public int totalSearchCountJoin(SearchCriteria cri) throws Exception {
		return dao.totalSearchCountJoin(cri);
	}

	// 테마 리스트
	public List<ThemeVO> themeList() throws Exception{
		return themeDao.themeList();
	}
	// 지역 리스트
	public List<ZoneVO> zoneList() throws Exception {
		return zoneDao.zoneList();
	}
	
	/*** 탐방기 ***/
	@Transactional
	public void cafeReviewInsert(BoardVO vo, ImageVO imgVO) throws Exception {
		dao.cafeReviewInsert(vo);
		imgDao.insertImageByBoardNo(imgVO);
		
		userGradeUpdate(vo);
	}
	
	public List<BoardVO> cafeReviesList(SearchCriteria cri) throws Exception {
		return dao.cafeReviesList(cri);
	}
	
	
	
	// 유저가 올린 게시글 갯수 판단 후 등급 업데이트 메소드
	private void userGradeUpdate(BoardVO vo) throws Exception {
		int userNo = vo.getUserNo().getUserNo();
		int boardTotalCnt = dao.totalUserBoardCount(userNo);
		if(boardTotalCnt >= 20) {
			userDao.updateUsersGrade(2, userNo);
		} else if (boardTotalCnt >= 100) {
			userDao.updateUsersGrade(3, userNo);
		}
	}
}
