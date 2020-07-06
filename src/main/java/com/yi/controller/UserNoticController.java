package com.yi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserNoticController {
	
	/*이벤트*/
	@RequestMapping(value = "/notice/event", method = RequestMethod.GET)
	public String eventList() throws Exception{
		return "/user/userNoticeEventList";
	}	
	/*FAQ*/
	@RequestMapping(value = "/notice/faq", method = RequestMethod.GET)
	public String faqList() throws Exception{
		return "/user/userNoticeFaqList";
	}	
	/*QNA*/
	@RequestMapping(value = "/notice/qna", method = RequestMethod.GET)
	public String qnaList() throws Exception{
		return "/user/userNoticeQnaList";
	}	

}
