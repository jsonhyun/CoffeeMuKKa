package com.yi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.UsersVO;
import com.yi.service.UsersService;

@Controller
@RequestMapping("/user/*")
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginPost(UsersVO vo, Model model, HttpSession session) throws Exception {
		//DB에 member와 일치하는지 여부 확인
		UsersVO dbVO = service.readUsers(vo.getUserId());
		if(dbVO == null) {//id에 해당하는 member가 없다.
			model.addAttribute("error", 1);
			return "user/userHome";
		}else if(dbVO.getPassword().equals(vo.getPassword()) == false) {//비밀번호가 일치하지 않음
			model.addAttribute("error", 2);
			return "user/userHome";
		}
		System.out.println(dbVO.getNick());
		session.setAttribute("Auth", dbVO.getNick());
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();//session안의 모든 key를 제거
//		session.removeAttribute("Auth");//session안의 key를 선택하여 삭제
		
		return "redirect:/";
	}
}
