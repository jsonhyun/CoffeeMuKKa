package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserController {

	// 서비스 
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String userHome() {
		return "/user/userHome";
	}
	
	@RequestMapping(value = "/mukkaCafe", method = RequestMethod.GET)
	public String cafeList() {
		return "/user/mukkaCafeMain";
	}
}
