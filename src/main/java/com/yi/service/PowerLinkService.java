package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.CafeCdt;
import com.yi.domain.PowerLinkVO;
import com.yi.domain.SearchCriteria;
import com.yi.persistence.PowerLinkDAO;

@Service
public class PowerLinkService {
	@Autowired
	private PowerLinkDAO dao;
	
	public String monthlyCafePostDate() throws Exception {
		return dao.monthlyCafePostDate();
	}
	
	// 파워링크 관리 리스트
	public List<PowerLinkVO> selectAdminMonCafeList(SearchCriteria cri) throws Exception {
		return dao.selectAdminMonCafeList(cri);
	}
	
	// 파워링크 전체 갯수
	public int selectAdminMonCafeTotalCnt(SearchCriteria cri) throws Exception {
		return dao.selectAdminMonCafeTotalCnt(cri);
	}
	
	// 파워 링크 게시일 등록
	public void updateAdminMonCafePostDate(int powNo) throws Exception {
		List<Integer> lastList = dao.selectAdminMonCafeLastWaitYearAndMon();
		String lastListRes = lastList.get(0)+"";
		int month = Integer.parseInt(lastListRes.substring(lastListRes.indexOf("=")+1, lastListRes.indexOf("=")+2));
		int year = Integer.parseInt(lastListRes.substring(lastListRes.lastIndexOf("=")+1, lastListRes.length()-1));
		int monCnt = dao.selectAdminMonCafeLastMonthCnt(year, month);
		
		// 게시일 등록된 달이 5개 이상 되었을 때 다음달로 게시일을 등록 할 수 있도록 함
		if(monCnt == 5) {
			if(month == 12) {
				year++;
				month = 1;
			} else {
				month++;
			}
		} 
		
		String postDate = String.valueOf(year)+"/"+String.valueOf(month)+"/01";
//		System.out.println("month ------------------ " + month);
//		System.out.println("postDate-------------------" + postDate);
		
		dao.updateAdminMonCafePostDate(postDate, powNo);
	}
	
	// 파워 링크 게시대기중 인 카페 게시 취소
	@Transactional
	public void updateAdminMonCafePostCancel(int powNo, int year, int month) throws Exception {
		PowerLinkVO vo = new PowerLinkVO();
		vo.setPowCdt(CafeCdt.CANCEL);
		vo.setPowNo(powNo);
		
		dao.updateAdminMonCafePostCancel(vo);
		
		List<Integer> list = dao.selectAdminBackMonCafe(powNo);
		
		
//		System.out.println("list --------------------" + list);
		
		for(Integer l : list) {
//			System.out.println("l ------------" + l);
			int monCnt = dao.selectAdminMonCafeLastMonthCnt(year, month);
//			System.out.println("monCnt ----------------- " + monCnt);
			
			// 게시일 등록된 달이 5개 이상 되었을 때 다음달로 게시일을 등록 할 수 있도록 함
			if(monCnt == 5) {
				if(month == 12) {
					year++;
					month = 1;
				} else {
					month++;
				}
			} 
			
			String postDate = String.valueOf(year)+"/"+String.valueOf(month)+"/01";
			dao.updateAdminMonCafePostDate(postDate, l);
//			System.out.println("postDate -------------" + postDate);
		}
		
	}
}
