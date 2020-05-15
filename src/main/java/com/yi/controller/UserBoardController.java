package com.yi.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.multi.MultiProgressBarUI;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.mysql.jdbc.StringUtils;
import com.yi.domain.BoardKindsVO;
import com.yi.domain.BoardVO;
import com.yi.domain.ImageVO;
import com.yi.service.BoardService;
import com.yi.util.UploadFileUtils;

@Controller
@RequestMapping("/user/*")
public class UserBoardController {

	private String innerUploadPath = "/resources/upload";
	
	// 서비스 
	@Autowired
	BoardService service;
	
	@Resource(name="uploadPath") // String은 자바에 있는 클래스이기 때문에 @Autowired로 주입하지 않고 @Resource(name="uploadPath")로 주입받음
	String uploadPath;
	
	
	// 커뮤니티 - 탐방기 : 경진
	//register/read/modify/remove/list
	@RequestMapping(value = "/community/cafeReview", method = RequestMethod.GET)
	public String communityReviewList(Model model) throws Exception {
		//탐방기 오늘의 글 갯수
		int cBoardNo = 1;
		int todayCnt = service.todayBoardCount(cBoardNo);
		model.addAttribute("todayCnt", todayCnt);
		return "/user/userCommunityReviewList";
	}
	
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.GET)
	public String communityReviewRegisterGet() {
		return "/user/userCommunityReviewRegister";
	}
	
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.POST)
	public String communityReviewRegisterPost() {
		
		return "/user/userCommunityReviewRegister";
	}
	
	@RequestMapping(value = "/ckdFileUpload", method = RequestMethod.POST)
	public String ckeditorFileUpload(HttpServletRequest req, HttpServletResponse resp, 
            MultipartHttpServletRequest multiFile) throws IOException {
		Calendar cal = Calendar.getInstance();
		String yearPath = "/" + cal.get(Calendar.YEAR); // /2020
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH)+1); // /2020/04
		String datePath = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE)); // /2020/04/29
		
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;

		if(file != null && file.getSize() > 0) {
			try {
	
				printWriter = resp.getWriter();
				resp.setContentType("text/html");
				
				String fileUploadName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				String fileD = fileUploadName.substring(0, fileUploadName.lastIndexOf("/")+1);
				String fileN = fileUploadName.substring(fileUploadName.lastIndexOf("/")+3, fileUploadName.length());
				String saveName = fileD+fileN;
				
				// 파일 한글 이름 디코딩
				//String fileName = URLDecoder.decode(saveName, "utf-8");
				// 파일 한글 이름 인코딩
				String fileName = URLEncoder.encode(fileN, "utf-8");
				
				json.addProperty("uploaded", 1);
				json.addProperty("fileName", fileN);
				json.addProperty("url", "http://localhost:8080/coffeemukka/user/displayFile?filename="+fileD+fileName);
				

				printWriter.println(json);
//				System.out.println("url : " + fileUploadName);
//				System.out.println("saveName : " + saveName);
//				System.out.println("file : " + fileD + fileName);
//				System.out.println(json);
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				if(out != null){
					out.close();
				}
				if(printWriter != null){
					printWriter.close();
				}		
			}
		}

		
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "displayFile", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayFile(String filename){
		//서버에 있는 데이터가 아닌 외부 데이터를 들고오는 것이기 때문에 서버에서 전달할 수 없음 직접 전달할 수 있도록 데이터를 까서 전달
		
		ResponseEntity<byte[]> entity = null;
		System.out.println("displayFile -----" + filename);
		
		InputStream in = null;
		try {
			in = new FileInputStream(uploadPath+"/" + filename);
			String format = filename.substring(filename.lastIndexOf(".") + 1); //확장자
			MediaType mType = null;
			if(format.equalsIgnoreCase("png")) {
				mType = MediaType.IMAGE_PNG;
			} else if(format.equalsIgnoreCase("jpg") || format.equalsIgnoreCase("jpeg")) {
				mType = MediaType.IMAGE_JPEG;
			} else if(format.equalsIgnoreCase("gif")) {
				mType = MediaType.IMAGE_GIF;
			}
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(mType);
			
			//IOUtils.toByteArray(in) : byte while 처리 대신 함
			// 이미지 확장자 마다 디코딩하는 방법이 따로 있기 때문에 headers와 같은 처리를 해줘야 함
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	// 커뮤니티 - 무까추천 : 아름
	/** 커뮤니티 - MuKKa人 추천 카페 cafeRecommendList : 리스트(list)/등록(register)/상세보기(read)/수정(modify) **/
	//list -- 리스트
	@RequestMapping(value = "/community/cafeRecommend", method = RequestMethod.GET)
	public String communityRecommendList(Model model) throws Exception {
		int cBoardNo = 2;
		
		List<BoardVO> list = service.recommendboardList();
		for(BoardVO ll : list) {
			//System.out.println(ll.getBoardNo2());
		}
		int todayCnt = service.todayBoardCount(cBoardNo);
		model.addAttribute("list",list);
		model.addAttribute("todayCnt", todayCnt);
		return "/user/userCommunityRecommendList";
	}
	//register -- 글등록
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.GET)
	public String communityRecommendRegister() {
		return "/user/userCommunityRecommendRegister";
	}
	
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.POST)
	public String communityRecommendRegisterPOST() {
		return "redirect:/user/community/cafeRecommend";
	}
	//read -- 상세보기
	@RequestMapping(value = "/community/cafeRecommend/read", method = RequestMethod.GET)
	public String communityRecommendRead(int boardNo, Model model) throws Exception{
		System.out.println(boardNo);
		BoardVO vo = service.recommendReadByNo(boardNo);
		System.out.println(vo.toString());
		model.addAttribute("board", vo);
		return "/user/userCommunityRecommendRead";
	}
	//modify -- 수정
	@RequestMapping(value = "/community/cafeRecommend/modify", method = RequestMethod.GET)
	public String communityRecommendModify() {
		return "/user/userCommunityRecommendModify";
	}
}
