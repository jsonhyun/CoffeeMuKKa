package com.yi.controller;

import java.util.List;

import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yi.domain.CafeVO;
import com.yi.service.BoardService;
import com.yi.service.CafeService;

@RestController
@RequestMapping("/rest/*")
public class UserRestController {
	
	@Autowired
	private CafeService cafeService;
	
	@Autowired
	private BoardService boardService;
	
	
	/*-------- cafe ------------------------------------------------------------------*/
	// 카페 검색
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ResponseEntity<List<CafeVO>> cafeList(String cafeName){
		ResponseEntity<List<CafeVO>> entity = null;
		
		try {
			List<CafeVO> list = cafeService.searchCafeByName(cafeName);
			entity = new ResponseEntity<List<CafeVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<CafeVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	//카페 리스트 : 카페테이블 + 지역테이블
	@RequestMapping(value = "/cafeZone", method = RequestMethod.GET)
	public ResponseEntity<List<CafeVO>> cafeAllList(String cafeName){
		ResponseEntity<List<CafeVO>> entity = null;
		
		try {
			List<CafeVO> list = cafeService.rcSearchCafeByName(cafeName);
			entity = new ResponseEntity<List<CafeVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<CafeVO>>(HttpStatus.BAD_REQUEST);
		}		
		return entity;
	}	
	
	
	/*-------- board ------------------------------------------------------------------*/
	// 게시글 추천(좋아요) 추가
	@RequestMapping(value = "/votePlus", method = RequestMethod.GET)
	public ResponseEntity<Integer> updateVotePlusCnt(int boardNo){
		ResponseEntity<Integer> entity = null;
		try {
			boardService.updateVotePlusCnt(boardNo);
			int boardVoteCnt = boardService.boardVoteCnt(boardNo);
			entity = new ResponseEntity<Integer>(boardVoteCnt, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//게시글 추천(좋아요) 취소
	@RequestMapping(value = "/voteMinus", method = RequestMethod.GET)
	public ResponseEntity<Integer> updateVoteMinusCnt(int boardNo){
		ResponseEntity<Integer> entity = null;
		try {
			boardService.updateVoteMinusCnt(boardNo);
			int boardVoteCnt = boardService.boardVoteCnt(boardNo);
			entity = new ResponseEntity<Integer>(boardVoteCnt, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
