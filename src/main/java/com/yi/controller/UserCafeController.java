package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserCafeController {
	
	// 서비스
	
	@RequestMapping(value = "/mukkaCafe/zone", method = RequestMethod.GET)
	public String cafeZoneList() {
		return "/user/userMukkaCafeZoneList";
	}
}
