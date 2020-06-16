package com.yi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) //매개변수 추가 안됨. 기본 매개변수를 활용해야함
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Object object = session.getAttribute("adminId");
		if(object == null) { //login 안 한 경우
			response.sendRedirect(request.getContextPath() + "/user/");
			
			return false; //기본 controller 진입을 막게 됨
		}
		
		return true; //기본 controller로 이동됨
	}

}
