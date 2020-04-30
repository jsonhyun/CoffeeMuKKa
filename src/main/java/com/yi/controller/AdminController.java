package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	// 서비스 
	
	
	// home
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home() {
		return "/admin/adminHome";
	}
}
