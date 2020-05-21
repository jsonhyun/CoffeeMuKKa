package com.yi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yi.domain.BoardVO;
import com.yi.domain.CafeVO;
import com.yi.domain.Criteria;
import com.yi.domain.PageMaker;
import com.yi.domain.ReplyVO;
import com.yi.domain.UsersVO;
import com.yi.service.BoardService;
import com.yi.service.CafeService;
import com.yi.service.ReplyService;

@RestController
@RequestMapping("/rest/*")
public class UserRestController {
	
	@Autowired
	private CafeService cafeService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ReplyService replyService;
	
	
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
	public ResponseEntity<Integer> updateVotePlusCnt(int boardNo, int userNo){
		ResponseEntity<Integer> entity = null;
		try {
			boardService.insertVotePlusCnt(boardNo, userNo);
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
	public ResponseEntity<Integer> updateVoteMinusCnt(int boardNo, int userNo){
		ResponseEntity<Integer> entity = null;
		try {
			boardService.deleteVoteMinusCnt(boardNo, userNo);
			int boardVoteCnt = boardService.boardVoteCnt(boardNo);
			entity = new ResponseEntity<Integer>(boardVoteCnt, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	/*-------- reply ------------------------------------------------------------------*/
	@RequestMapping(value = "/replies/{boardNo}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> replyList(@PathVariable("boardNo") int boardNo, @PathVariable("page") int page){
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			Criteria cri = new Criteria();
			cri.setPage(page);
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(replyService.totalCountByReply(boardNo));
			
			List<ReplyVO> list = replyService.listByBoardNo(boardNo, cri);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("pageMaker", pageMaker);
			
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/replies/", method = RequestMethod.POST)
	public ResponseEntity<String> replyRegister(@RequestBody ReplyVO vo){
		//System.out.println("reply vo ---------------"+vo);
		ResponseEntity<String> entity = null;
		
		try {
			replyService.insertReply(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/replies/{commentNo}", method = RequestMethod.PUT)
	public ResponseEntity<String> replyUpdate(@PathVariable("commentNo") int commentNo, @RequestBody ReplyVO vo) {
		ResponseEntity<String> entity = null;
		
		try {
			vo.setCommentNo(commentNo);
			replyService.updateReply(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value = "/replies/{commentNo}", method = RequestMethod.DELETE)
	public ResponseEntity<String> replyDelete(@PathVariable("commentNo") int commentNo) {
		ResponseEntity<String> entity = null;
		
		try {
			replyService.deleteReply(commentNo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
