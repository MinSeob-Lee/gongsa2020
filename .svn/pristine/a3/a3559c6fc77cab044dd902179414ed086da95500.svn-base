package com.sample.web.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sample.service.UserService;
import com.sample.web.form.LoginForm;
import com.sample.web.view.User;

@Controller
@SessionAttributes("LOGIN_USER")
public class SigninController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/signin.do")
	public String signinForm(Model model) {
		LoginForm loginForm = new LoginForm();
		model.addAttribute("loginForm", loginForm);
		
		return "user/signin";
		
	}
	
	@RequestMapping("/signin.do")
	public String signin(@ModelAttribute("loginForm") @Valid LoginForm loginForm, BindingResult errors, Model model) {
		
		if (errors.hasErrors()) {
			
			return "user/signin";
		}
		//로그인 처리
		User user = userService.loginUser(loginForm.getId(), loginForm.getPassword());
		if (user == null) {
			
			return "redirect:/signin.do?error=fail";
			
		}
		
		// 로그인된 사용자 정보를 세션에 저장
		model.addAttribute("LOGIN_USER", user);
		
		return "redirect:/home.do";

	}
	
	@GetMapping("/signout.do")
	public String signout(SessionStatus sessionStatus, HttpSession session) {
		sessionStatus.setComplete();
 

		return "redirect:/home.do";
	}
	
	
	
	@RequestMapping("/findId.do")
	public String findId(Model model) {

		return "user/findId";
	}
	@RequestMapping("/findPwd.do")
	public String findPwd(Model model) {
		
		return "user/findPwd";
	}

 

	
	
}
