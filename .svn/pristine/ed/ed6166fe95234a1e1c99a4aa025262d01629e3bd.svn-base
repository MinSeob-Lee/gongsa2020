package com.sample.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sample.web.security.Auth;
import com.sample.web.view.User;

public class AuthInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//컨트롤러인지 확인.
		if(handler instanceof HandlerMethod == false) {
			return true;
		}
		// 컨트롤러로 형변환.
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		
		// autn어노테이션 받기.
		Auth auth = handlerMethod.getMethodAnnotation(Auth.class);
		
		// auth 어노테이션이 달렸는지 확인. 없으면 인증이 필요 없는 요청.
		if(auth== null) {
			return true;
		}
		
		// 세션이 있는지 체크. 없으면 로그인 화면으로 이동.
		HttpSession session = request.getSession();
		if(session == null) {
			response.sendRedirect(request.getContextPath() + "/signin.do");
			return false;
		}
		
		// 세션이 있으면 유효한 유저인지 확인. 아니면 로그인 화면으로 이동.
		User authUser = (User)session.getAttribute("LOGIN_USER");
		if(authUser == null) {
			response.sendRedirect(request.getContextPath() + "/signin.do");
			return false;
		}
		
		// admin 권한이 요구된 경우, admin 권한이 없을 시 홈으로.
		String role = auth.role().toString();
		if("ADMIN".equals(role)) {
			if(!authUser.isAdmin()) {
				response.sendRedirect(request.getContextPath() + "/home.do");
				return false;
			}
		}
		
		// 접근허가.
		return true;
	}

}
