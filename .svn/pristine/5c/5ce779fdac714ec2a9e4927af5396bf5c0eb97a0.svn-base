package com.sample.web.controller;


import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sample.service.UserService;
import com.sample.web.form.UserSignupForm;
import com.sample.web.view.User;




@Controller
@SessionAttributes("userSignupForm")
public class SignupController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/signup.do")
	public String form(Model model) {
		UserSignupForm userSignupForm = new UserSignupForm();
		model.addAttribute("userSignupForm", userSignupForm);
		return "user/signup";
				
	}
	
	@GetMapping("/snsSignup.do")
	public String form2(Model model) {
		UserSignupForm userSignupForm = new UserSignupForm();
		model.addAttribute("userSignupForm", userSignupForm);
		return "user/snsSignup";
		
	}
	
	
	@PostMapping("/signup.do")
	public String signup(@ModelAttribute("userSignupForm") @Valid UserSignupForm userForm,BindingResult errors) {
		
		//System.out.println(userForm.getId());
		// 아이디 중복체크
		User savedUser = userService.getUserDetail(userForm.getId());
		System.out.println(savedUser);
		if (savedUser != null) {
			errors.rejectValue("id", null, "이미 사용중인 아이디입니다.");
		}
		
		if (savedUser != null) {
			errors.rejectValue("nickname", null, "이미 사용중인 닉네임입니다.");
		}
		
		System.out.println("유효성 체크결과 에러가 발견되었는가? " + errors.hasErrors());
		if (errors.hasErrors()) {
			return "user/signup"; //입력화면으로 내부이동하기
		}
		 
		// 유효성 체크를 통한 입력값을 User객체에 복사한다.
		User user = new User();
		BeanUtils.copyProperties(userForm, user);
		//System.out.println(user);
		
		// 회원가입 처리
		userService.addUser(user);
				
		return "redirect:/signupCompl.do";
	}
	
	@PostMapping("/snsSignup.do")
	public String snsSignup(@ModelAttribute("userSignupForm") @Valid UserSignupForm userForm,BindingResult errors) {
		
		//System.out.println(userForm.getId());
		// 아이디 중복체크
		User savedUser = userService.getUserDetail(userForm.getId());
		System.out.println(savedUser);
		if (savedUser != null) {
			errors.rejectValue("id", null, "이미 사용중인 아이디입니다.");
		}
		
		if (savedUser != null) {
			errors.rejectValue("nickname", null, "이미 사용중인 닉네임입니다.");
		}
		
		System.out.println("유효성 체크결과 에러가 발견되었는가? " + errors.hasErrors());
		if (errors.hasErrors()) {
			return "user/snsSignup"; //입력화면으로 내부이동하기
		}
		
		// 유효성 체크를 통한 입력값을 User객체에 복사한다.
		User user = new User();
		BeanUtils.copyProperties(userForm, user);
		//System.out.println(user);
		
		// 회원가입 처리
		userService.addUser(user);
		
		return "redirect:/signupCompl.do";
	}
	
	@RequestMapping("/signupCompl.do")
	public String signupCompl() {		
		return "user/signupCompl";
	}
	

	
	@RequestMapping("/term.do")
	public String term(Model model) {
		
		return "user/term";
	}
	
	@RequestMapping("/snsTerm.do")
	public String snsTerm(Model model) {
		
		return "user/snsTerm";
	}
	@RequestMapping("/signupComplete.do")
	public String signupComplete() {
		return "redirect:/home.do";
	}
}
