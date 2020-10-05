package com.sample.web.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.support.SessionStatus;

import com.sample.service.UserService;
import com.sample.web.security.Auth;
import com.sample.web.view.User;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	UserService userService;
	
	@Auth
	@RequestMapping("/mypagemain.do")
	public String main(HttpSession session, Model model) {
		User user = (User)session.getAttribute("LOGIN_USER");
		user = userService.getUserDetail(user.getId());
		model.addAttribute("user", user);
		return "mypage/mypagemain";
	}
	@RequestMapping("/myperformance.do")
	public String myPerformance() {
		return "mypage/myperformance";
	}
	@RequestMapping("/myperformanceDetail.do")
	public String myPerformanceDetail() {
		return "mypage/myperformanceDetail";
	}
}
