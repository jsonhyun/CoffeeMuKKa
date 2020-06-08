package com.yi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.AdminVO;
import com.yi.domain.UsersVO;
import com.yi.service.AdminService;
import com.yi.service.UsersService;

@Controller
@RequestMapping("/user/*")
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String loginPost(UsersVO vo, Model model, HttpSession session) throws Exception {
		//UsersVO로 받아온 ID와 Password를 AdminVO에 ID와 Password 입력시켜서 관리자인지 판단하는 단계
		AdminVO admin = new AdminVO();
		admin.setAnoId(vo.getUserId());
		admin.setAnoPassword(vo.getPassword());
		AdminVO adminResult = adminService.readAdmin(admin.getAnoId());
		if(adminResult != null) {
			System.out.println(adminResult.getAnoId());
			if(adminResult.getAnoPassword().equals(admin.getAnoPassword()) == false) {
				model.addAttribute("error", 2);
				return "/user/userHome";
			}else {
				if(adminResult.getAnoAuthorityNo().getAnoAuthorityNo() == 2 ) {
					model.addAttribute("error", 3);
					return "/user/userHome";
				}
				session.setAttribute("Auth","관리자");
				return "redirect:/";
			}
		}else {
			//DB에 member와 일치하는지 여부 확인
			UsersVO dbVO = service.readUsers(vo.getUserId());
			if(dbVO == null) {//id에 해당하는 member가 없다.
				model.addAttribute("error", 1);
				return "/user/userHome";
			}else if(dbVO.getPassword().equals(vo.getPassword()) == false) {//비밀번호가 일치하지 않음
				model.addAttribute("error", 2);
				return "/user/userHome";
			}
			session.setAttribute("Auth", dbVO.getNick());
			session.setAttribute("userId", dbVO.getUserId());
			session.setAttribute("AuthNo", dbVO.getUserNo());
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();//session안의 모든 key를 제거
//		session.removeAttribute("Auth");//session안의 key를 선택하여 삭제
		
		return "redirect:/";
	}
	
	// 마이페이지 이동
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(String userId, Model model)throws Exception{
		UsersVO dbVO = service.selectUserPage(userId);
		System.out.println(dbVO);
		model.addAttribute("dbVO",dbVO);
		return "/user/userMypage";
	}
	
	//마이페이지에서 정보 수정
	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String modifyMypage(UsersVO vo, Model model) throws Exception{
		System.out.println(vo);
//		service.modifyUsers(vo);
//		UsersVO dbVO = service.selectUserPage(vo.getUserId());
//		model.addAttribute("dbVO",dbVO);
		return null;
	}
	
}
