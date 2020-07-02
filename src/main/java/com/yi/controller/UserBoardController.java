package com.yi.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.yi.domain.BoardVO;
import com.yi.domain.Condition;
import com.yi.domain.ImageVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.domain.ThemeVO;
import com.yi.domain.UsersVO;
import com.yi.domain.ZoneVO;
import com.yi.service.BoardService;
import com.yi.service.ThemeService;
import com.yi.util.UploadFileUtils;

@Controller
@RequestMapping("/user/*")
public class UserBoardController {
	
	// 서비스 
	@Autowired
	private BoardService service;
	
	@Autowired
	private ThemeService themeService;
	
	@Resource(name="uploadPath") // String은 자바에 있는 클래스이기 때문에 @Autowired로 주입하지 않고 @Resource(name="uploadPath")로 주입받음
	String uploadPath;
	
	
	// 커뮤니티 - 탐방기 : 경진
	//register/read/modify/remove/list
	
	// 탐방기 리스트
	@RequestMapping(value = "/community/cafeReview", method = RequestMethod.GET)
	public String communityReviewList(String type, SearchCriteria cri, Model model) throws Exception {
		int cBoardNo = 1;
		cri.setPerPageNum(20);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCountJoin(cBoardNo, cri));
		
		//System.out.println("PageMaker---------------------------"+pageMaker);
		//탐방기 오늘의 글 갯수
		int todayCnt = service.todayBoardCount(cBoardNo);
		
		//테마 리스트
		List<ThemeVO> themeList = service.themeList();
		//지역리스트
		List<ZoneVO> zoneList = service.zoneList();
		// 월간 베스트
		List<BoardVO> monthBestList = service.cafeReviewMonthBestList();
		
		List<BoardVO> list = null;
		if(type == null) {
			list = service.cafeReviesList(cBoardNo, cri);
		} else if (type != null) {
			list = service.cafeReviewBestList(cBoardNo, cri);
		}
		
		Map<Integer, List<ThemeVO>> map = new HashMap<Integer, List<ThemeVO>>();
		
		for(int i=0; i<list.size(); i++) {			
			 List<ThemeVO> theme = themeService.cafeThemeRank(list.get(i).getCafeNo().getCafeNo());
			 //System.out.println("theme---------------------------"+theme);
			 map.put(list.get(i).getCafeNo().getCafeNo(), theme);
			 //System.out.println("list ----------------------- " + themeService.cafeThemeRank(list.get(i).getCafeNo().getCafeNo()));
			 //System.out.println("theme-----------------------" + theme);
		}
		model.addAttribute("todayCnt", todayCnt);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("cri", cri);
		model.addAttribute("themeList", themeList);
		model.addAttribute("zoneList", zoneList);
		model.addAttribute("monthBestList", monthBestList);
		model.addAttribute("themeMap", map);
		
		
		//System.out.println("themeRank -------------------------" + map);
		return "/user/userCommunityReviewList";
	}
	
	@RequestMapping(value = "/community/cafeReview/read", method = RequestMethod.GET)
	public String communityReviewRead(int boardNo, HttpSession session, boolean flag, SearchCriteria cri, Model model) throws Exception {
		BoardVO vo = service.cafeReviewRead(boardNo);
		//System.out.println("vo-----------------" + vo.getCafeNo().getCafeNo());
		
		// 조회수 
		if(flag) {
			service.cafeReviewViewUpdate(vo.getBoardNo());
		}
		
		List<BoardVO> sameVo = service.cafeReviewSameList(vo);
		int sameCnt = service.cafeReivewSameCnt(vo);
		
		List<ThemeVO> themeRank = themeService.cafeThemeRank(vo.getCafeNo().getCafeNo());
		
		// 로그인회원 좋아요 여부
		int userNo = session.getAttribute("AuthNo") == null ? 0 : (Integer)session.getAttribute("AuthNo");
		int voteCdt = service.userVoteCdt(userNo, boardNo);
		
		//System.out.println("themeRank ------------------------- " + themeRank);
		model.addAttribute("board", vo);
		model.addAttribute("cri", cri);
		model.addAttribute("sameBoard", sameVo);
		model.addAttribute("sameCnt", sameCnt);
		model.addAttribute("themeRank", themeRank);
		model.addAttribute("voteCdt", voteCdt);
		
		System.out.println("voteCdt---------------------" + voteCdt);
		//System.out.println("themeRank-----------------------------------" + themeRank);
		return "/user/userCommunityReviewRead";
	}
	
	//탐방기 등록
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.GET)
	public String communityReviewRegisterGet() {
		return "/user/userCommunityReviewRegister";
	}
	
	@RequestMapping(value = "/community/cafeReview/register", method = RequestMethod.POST)
	public String communityReviewRegisterPost(BoardVO vo, MultipartFile imgFile) throws Exception {
		//System.out.println("register POST ----------------- " + vo);
		//System.out.println("register POST ----------------- " + imgFile);
		
		String imageName = UploadFileUtils.uploadFile(uploadPath, imgFile.getOriginalFilename(), imgFile.getBytes());

		ImageVO imgVO = new ImageVO();
		imgVO.setImageName(imageName);

		// 회원 no 임시 설정 - login 기능 만들어지면 삭제 후 테스트 해봐야 함
//		UsersVO userNo = new UsersVO();
//		userNo.setUserNo(3);
//		vo.setUserNo(userNo);
		
		service.cafeReviewInsert(vo, imgVO);
		
		return "redirect:/user/community/cafeReview";
	}
	
	// 탐방기 수정
	@RequestMapping(value = "/community/cafeReview/modify", method = RequestMethod.GET)
	public String communityReviewModifyGet(int boardNo, SearchCriteria cri, Model model) throws Exception {
		BoardVO vo = service.cafeReviewRead(boardNo);
		model.addAttribute("board", vo);
		model.addAttribute("cri", cri);
		return "/user/userCommunityReviewModify";
	}
	
	@RequestMapping(value = "/community/cafeReview/modify", method = RequestMethod.POST)
	public String communityReviewModifyPost(String inImgFile, MultipartFile imgFile, BoardVO vo, SearchCriteria cri, Model model) throws Exception {
//		System.out.println("modefy Post vo ------------- " + vo);
//		System.out.println("modefy Post inImgFile ------------- " + inImgFile);
//		System.out.println("modefy Post imgFileSize ------------- " + imgFile.getSize());
//		System.out.println("modefy Post cri ------------- " + cri);
		
		
		if(imgFile.getSize() > 0) {
			String imageName = UploadFileUtils.uploadFile(uploadPath, imgFile.getOriginalFilename(), imgFile.getBytes());

			ImageVO imgVO = new ImageVO();
			imgVO.setBoardNo(vo);
			imgVO.setImageName(imageName);
			
			// 파일 삭제
			File file = new File(uploadPath + inImgFile);
			file.delete();
			// 원본 삭제
			String originlName = inImgFile.substring(0, 12) + inImgFile.substring(14);
			//System.out.println("originlName -------------------- " + originlName);
			
			File originFile = new File(uploadPath + originlName);
			originFile.delete();
			
			service.cafeReviewAndImgModify(vo, imgVO);
		} else {
			service.cafeReviewModify(vo);
		}
		
		model.addAttribute("board", vo);
		model.addAttribute("page", cri.getPage());
		model.addAttribute("searchZone", cri.getSearchZone());
		model.addAttribute("searchTheme", cri.getSearchTheme());
		model.addAttribute("searchType", cri.getSearchType());
		model.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/user/community/cafeReview/read?boardNo="+vo.getBoardNo();
	}
	
	// 탐방기 삭제 (삭제 여부 변경 : db에 데이터는 남겨둠)
	@RequestMapping(value = "/community/cafeReview/remove", method = RequestMethod.GET)
	public String communityReviewRemove(BoardVO vo, SearchCriteria cri, Model model) throws Exception {
		vo.setBoardDelCdt(Condition.YES);
		service.cafeReviewRemove(vo);
		model.addAttribute("page", cri.getPage());
		model.addAttribute("searchZone", cri.getSearchZone());
		model.addAttribute("searchTheme", cri.getSearchTheme());
		model.addAttribute("searchType", cri.getSearchType());
		model.addAttribute("keyword", cri.getKeyword());
		return "redirect:/user/community/cafeReview";
	}
	
	// ckd에디터 이미지 등록
	@RequestMapping(value = "/ckdFileUpload", method = RequestMethod.POST)
	public String ckeditorFileUpload(HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile) throws IOException {		
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");

		if(file != null && file.getSize() > 0) {
			try {
	
				printWriter = resp.getWriter();
				resp.setContentType("text/html");
				
				String fileUploadName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				String fileD = fileUploadName.substring(0, fileUploadName.lastIndexOf("/")+1);
				String fileN = fileUploadName.substring(fileUploadName.lastIndexOf("/")+3, fileUploadName.length());
				//String saveName = fileD+fileN;
				
				// 파일 한글 이름 디코딩
				//String fileName = URLDecoder.decode(saveName, "utf-8");
				// 파일 한글 이름 인코딩
				String fileName = URLEncoder.encode(fileN, "utf-8");
				
				json.addProperty("uploaded", 1);
				json.addProperty("fileName", fileN);
				json.addProperty("url", "/coffeemukka/user/displayFile?filename="+fileD+fileName);
				

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
	
	// 외부에 저장된 이미지 데이터 불러와 전달
	@ResponseBody
	@RequestMapping(value = "displayFile", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayFile(String filename){
		//서버에 있는 데이터가 아닌 외부 데이터를 들고오는 것이기 때문에 서버에서 전달할 수 없음 직접 전달할 수 있도록 데이터를 까서 전달
		
		ResponseEntity<byte[]> entity = null;
		//System.out.println("displayFile -----" + filename);
		
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
	
	
	// 커뮤니티 - 무까추천 : 아름  (MuKKa人 추천 카페 cafeRecommendList : 리스트(list)/등록(register)/상세보기(read)/수정(modify))
	
	//list -- 리스트
	@RequestMapping(value = "/community/cafeRecommend", method = RequestMethod.GET)
	public String communityRecommendList(SearchCriteria cri, Model model) throws Exception {
		//카페추천 게시판번호 - 2번
		int cBoardNo = 2;
		cri.setPerPageNum(16); //한페이지당 16개씩
		
		List<BoardVO> list = service.recommendboardListSearchCriteria(cBoardNo,cri);	
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCountJoin(cBoardNo, cri));
		
		
		model.addAttribute("list",list);
		model.addAttribute("cri",cri);
		model.addAttribute("pageMaker",pageMaker);
		
		//오늘의 글 등록 갯수
		int todayCnt = service.todayBoardCount(cBoardNo);
		model.addAttribute("todayCnt", todayCnt);
	
		//대표이미지 가져오기
		List<ImageVO> listImg = new ArrayList<ImageVO>();
		for(int i=0;i<list.size();i++) {
			int sboardNo = list.get(i).getBoardNo();
			listImg.addAll(service.recommendboardImgList(sboardNo));
			
		}
		model.addAttribute("listImg", listImg);

		//지역 리스트
		List<ZoneVO> zoneList = service.zoneList();
		model.addAttribute("zoneList", zoneList);
		//테마 리스트
		List<ThemeVO> themeList = service.themeList();
		model.addAttribute("themeList", themeList);
		
		//전월 베스트글 리스트
		List<BoardVO> rcBestList = service.rcRankVoteLastMonth();
		model.addAttribute("rcBestList",rcBestList);
		
		return "/user/userCommunityRecommendList";
	}
	
	//register -- 글등록
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.GET)
	public String communityRecommendRegister() {
		return "/user/userCommunityRecommendRegister";
	}
	
	@RequestMapping(value = "/community/cafeRecommend/register", method = RequestMethod.POST)
	public String communityRecommendRegisterPOST(BoardVO vo, List<MultipartFile> imgfiles) throws Exception {
		//System.out.println("테스트 POST ==============="+vo); // ok
		//System.out.println("테스트 POST ==============="+imgfiles);  // ok
		
		ArrayList<String> fullName = new ArrayList<String>();
		
		for(MultipartFile file : imgfiles) {
			//System.out.println("파일이름 : "+file.getOriginalFilename());  // ok
			//System.out.println("파일사이즈 : "+file.getSize());  // ok
			
			if(file.getSize() != 0) {			
				//upload처리
				String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				//System.out.println("저장이름"+savedName);				
				fullName.add(savedName);
				//System.out.println("찍어라"+fullName.toString());
			}
		}
		
		vo.setStringFiles(fullName);
		//System.out.println("찍어라2"+vo);
		
		service.recommendInsert(vo);
		return "redirect:/user/community/cafeRecommend";
	}
	
	//read -- 상세보기(해당번호글의 내용 + (same)해당카페에 관한 추천글&개수 + (same)해당지역+해당키워드글&개수) // 댓글페이징 // 조회수
	@RequestMapping(value = "/community/cafeRecommend/read", method = RequestMethod.GET)
	public String communityRecommendRead(int boardNo, SearchCriteria cri, Model model) throws Exception{
		//해당번호글의 내용
		BoardVO vo = service.recommendReadByNo(boardNo);
		model.addAttribute("board", vo);
		
		
		//(same)해당카페에 관한 추천글List
		List<BoardVO> sameCafe = service.recommendSameCafeList(vo);
		model.addAttribute("sameCafe", sameCafe);
		
		//(same)해당카페에 관한 추천글 : 개수
		int sameCafeCnt = service.recommendSameCafeCnt(vo);
		model.addAttribute("sameCafeCnt", sameCafeCnt);
		
		//(same)해당카페에 이미지
		List<ImageVO> slistImg = new ArrayList<ImageVO>();		
		 for(int i=0;i<sameCafe.size();i++) { 
			 int sboardNo = sameCafe.get(i).getBoardNo();
			 slistImg.addAll(service.recommendboardImgList(sboardNo));
		 }	
		model.addAttribute("slistImg", slistImg);
		
		//(same)해당지역+해당키워드글List
		List<BoardVO> sameKeyword = service.recommendSameKeywordList(vo);
		model.addAttribute("sameKeyword", sameKeyword);
		
		//(same)해당지역+해당키워드글 : 개수
		int sameKeywordCnt = service.recommendSameKeywordCnt(vo);
		model.addAttribute("sameKeywordCnt", sameKeywordCnt);
		
		//(same)해당키워드에 이미지
		List<ImageVO> klistImg = new ArrayList<ImageVO>();
		for(int i=0;i<sameKeyword.size();i++) {
			int sboardNo = sameKeyword.get(i).getBoardNo();
		    klistImg.addAll(service.recommendboardImgList(sboardNo));
		    }
		model.addAttribute("klistImg", klistImg);
		
		model.addAttribute("cri", cri);


		return "/user/userCommunityRecommendRead";
	}
	//modify -- 수정
	@RequestMapping(value = "/community/cafeRecommend/modify", method = RequestMethod.GET)
	public String communityRecommendModify(int boardNo, SearchCriteria cri, Model model) throws Exception {
		BoardVO vo = service.recommendReadByNo(boardNo);
		System.out.println("번호는요"+boardNo);
		System.out.println("TEST============================================="+vo);
		model.addAttribute("board", vo);
		System.out.println(vo);
		model.addAttribute("cri", cri);
		
		return "/user/userCommunityRecommendModify";
	}
	
	// 수정 - 리스트로 가기 // 리스트 검색 키워드 유지
	@RequestMapping(value = "/community/cafeRecommend/modify", method = RequestMethod.POST)
	public String communityRecommendModifyPOST(BoardVO vo, String[] delfiles, List<MultipartFile> imgfiles, SearchCriteria cri, Model model) throws Exception {
		System.out.println("TEST==========================="+delfiles);
		//추가한 이미지 파일 중 삭제할 파일이 있다면
		if(delfiles !=null) {
			for(int i=0;i<delfiles.length;i++) {
				String test1 = delfiles[i].substring(0,12);
				String test2 = delfiles[i].substring(14);
				service.removeRecommendImg(delfiles[i]);
				System.out.println("지웠다==========================================================="); //ok
				
				//썸네일 지우기
				File file = new File(uploadPath+delfiles[i]);
				file.delete();
				
				System.out.println("썸네일삭제===============================================================");  //ok
				//원본파일 지우기
				String orignName = test1 + test2;
				File orignfile = new File(uploadPath+orignName);
				orignfile.delete();	
				System.out.println("원본파일삭제===============================================================");  //ok
			}
		}
		
		//새로추가할 파일이 있다면
	    ArrayList<String> fullName = new ArrayList<String>();
		
		for(MultipartFile file : imgfiles) {
			System.out.println("파일이름 : "+file.getOriginalFilename()); // ok
			System.out.println("파일사이즈 : "+file.getSize()); // ok
			if(file.getSize() != 0) {
				//upload처리
				String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
				
				fullName.add(savedName);
				System.out.println(savedName);
			}
		}
		vo.setStringFiles(fullName);
    
	service.recommendUpdate(vo);
	
	
	
	model.addAttribute("page", cri.getPage());
	model.addAttribute("searchType", cri.getSearchType() );
	model.addAttribute("keyword", cri.getKeyword());		
		return "redirect:/user/community/cafeRecommend";
	}
	
	//추천카페 베스트 리스트
	@RequestMapping(value = "/community/cafeRecommend/bestAll", method = RequestMethod.GET)
	public String communityRecommendBestList(Model model) throws Exception {
		//전체 조회순 랭킹
		List<BoardVO> voteAll = service.rcRankVoteAll();
		model.addAttribute("voteAll", voteAll);
		
		List<ImageVO> voteAllImg = new  ArrayList<ImageVO>();
		for(int i=0;i<voteAll.size();i++) {
			int sboardNo = voteAll.get(i).getBoardNo();
			voteAllImg.addAll(service.recommendboardImgList(sboardNo));
		}
		model.addAttribute("voteAllImg", voteAllImg);
		
		//당월 추천순 랭킹
		List<BoardVO> voteList = service.rcRankVoteMonth();
		model.addAttribute("voteList",voteList);
		
		List<ImageVO> voteListImg = new  ArrayList<ImageVO>();
		for(int i=0;i<voteList.size();i++) {
			int sboardNo = voteList.get(i).getBoardNo();
			voteListImg.addAll(service.recommendboardImgList(sboardNo));
		}
		model.addAttribute("voteListImg", voteListImg);
		
		//당월 조회순 랭킹
		List<BoardVO> viewList = service.rcRankViewMonth();
		model.addAttribute("viewList",viewList);
		
		List<ImageVO> viewListImg = new  ArrayList<ImageVO>();
		for(int i=0;i<viewList.size();i++) {
			int sboardNo = viewList.get(i).getBoardNo();
			viewListImg.addAll(service.recommendboardImgList(sboardNo));
		}
		model.addAttribute("viewListImg", viewListImg);
		
		//당월 댓글순 랭킹
		List<BoardVO> replyList = service.rcRankReplyMonth();
		model.addAttribute("replyList",replyList);
		
		List<ImageVO> replyListImg = new  ArrayList<ImageVO>();
		for(int i=0;i<replyList.size();i++) {
			int sboardNo = replyList.get(i).getBoardNo();
			replyListImg.addAll(service.recommendboardImgList(sboardNo));
		}
		model.addAttribute("replyListImg", replyListImg);
		
		return "/user/userCommunityRecommendBestAll";
	}
}
