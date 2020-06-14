package com.yi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yi.domain.CafeVO;
import com.yi.domain.Condition;
import com.yi.domain.Criteria;
import com.yi.domain.GradeVO;
import com.yi.domain.PageMaker;
import com.yi.domain.ReplyVO;
import com.yi.domain.StarpointVO;
import com.yi.domain.UsersVO;
import com.yi.service.BoardService;
import com.yi.service.CafeService;
import com.yi.service.ReplyService;
import com.yi.service.UsersService;

@RestController
@RequestMapping("/rest/*")
public class UserRestController {
	
	@Autowired
	private CafeService cafeService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private UsersService usersService;
	
	@Autowired
	private JavaMailSender mailSender;
	
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
	/*-------- starpoint ------------------------------------------------------------------*/
	@RequestMapping(value = "/starpoint/{cafeNo}/{page}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> starPointList(@PathVariable("cafeNo") int cafeNo, @PathVariable("page") int page){
		ResponseEntity<Map<String, Object>> entity = null;
		
		try {
			Criteria cri = new Criteria();
			cri.setPage(page);
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(replyService.totalCountByCafeNo(cafeNo));
			
			List<StarpointVO> list = replyService.listByCafeNo(cafeNo, cri);
			
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
	
	@RequestMapping(value = "/starpoint/", method = RequestMethod.POST)
	public ResponseEntity<String> starPointRegister(@RequestBody StarpointVO vo){
		ResponseEntity<String> entity = null;
		
		try {
			replyService.insertStarPoint(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/starpoint/{starPointNo}", method = RequestMethod.PUT)
	public ResponseEntity<String> starpointUpdate(@PathVariable("starPointNo") int starPointNo, @RequestBody StarpointVO vo) {
		ResponseEntity<String> entity = null;
		
		try {
			vo.setStarPointNo(starPointNo);
			replyService.updateStarPoint(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/starpoint/{starPointNo}", method = RequestMethod.DELETE)
	public ResponseEntity<String> starpointDelete(@PathVariable("starPointNo") int starPointNo) {
		ResponseEntity<String> entity = null;
		
		try {
			replyService.deleteStarPoint(starPointNo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	/*-------- 아이디, 비밀번호 찾기 ------------------------------------------------------------------*/
	//아이디 찾기
	@RequestMapping(value = "/findid", method = RequestMethod.POST)
	public ResponseEntity<String> findUsers(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			UsersVO dbVO = usersService.findUsers(vo);
			
			if(dbVO == null) {
				entity = new ResponseEntity<String>("NULL", HttpStatus.OK);
			}else {
				entity = new ResponseEntity<String>(dbVO.getUserId(), HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	// 비밀번호 찾기(비밀번호 재생성)
	@RequestMapping(value = "/findpass", method = RequestMethod.POST)
	public ResponseEntity<String> mailSending(@RequestBody UsersVO vo) throws Exception {
		ResponseEntity<String> entity = null;
		
		UsersVO dbVO = usersService.readUsers(vo.getUserId());
		//보내는 사람 메일 주소
		String setfrom = "airplant02342@gmail.com";
		
		//메일 받을 주소
		String tomail = dbVO.getEmail();
		
		//비밀번호 생성
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		for(int i=0;i<10;i++) {
			 if(rnd.nextBoolean()){
			        buf.append((char)((int)(rnd.nextInt(26))+97));
			    }else{

			        buf.append((rnd.nextInt(10)));
			    }
			}
		String newPass = String.format("%s", buf);
		String title = "[Coffee MuKKa] 임시 비밀번호 재발급 메일입니다."; // 제목
		String content = String.format("임시비밀번호는 %s 입니다. 해당 비밀번호로 로그인 해주세요.", newPass); // 내용
		
		//임시비밀번호 DB 업데이트
		dbVO.setPassword(newPass);
		usersService.modifyUsersPass(dbVO);

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("FAIL", HttpStatus.BAD_REQUEST);
		}

		return entity;
	}
	
	//아이디 중복 체크
	@RequestMapping(value = "/duplcheckid", method = RequestMethod.POST)
	public ResponseEntity<String> duplCheckId(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			UsersVO dbVO = usersService.duplCheckId(vo);
			if(dbVO != null) {
				entity = new ResponseEntity<String>("duplicate", HttpStatus.OK);
			}else {
				entity = new ResponseEntity<String>("Ok", HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//닉네임 중복 체크
	@RequestMapping(value = "/duplchecknick", method = RequestMethod.POST)
	public ResponseEntity<String> duplCheckNick(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			UsersVO dbVO = usersService.duplCheckNick(vo);
			if(dbVO != null) {
				entity = new ResponseEntity<String>("duplicate", HttpStatus.OK);
			}else {
				entity = new ResponseEntity<String>("Ok", HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//회원 가입
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			vo.setUserLeaveCondition(Condition.NO);
			GradeVO grade = new GradeVO();
			grade.setUserGrede(1);
			vo.setUserGrade(grade);
			usersService.register(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//회원 정보수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public ResponseEntity<String> modify(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			usersService.modifyUsers(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//현재 비밀번호 확인
	@RequestMapping(value = "/nowpassconfirm", method = RequestMethod.POST)
	public ResponseEntity<String> nowPassConfirm(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			UsersVO dbVO = usersService.duplCheckId(vo);
			if(dbVO.getPassword().equals(vo.getPassword())) {
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//비밀번호 수정
	@RequestMapping(value = "/modifypass", method = RequestMethod.POST)
	public ResponseEntity<String> modifyPass(@RequestBody UsersVO vo){
		ResponseEntity<String> entity = null;
		try {
			usersService.modifyUsersPass(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
