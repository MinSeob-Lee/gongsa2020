package com.sample.web.form;

import javax.validation.constraints.NotBlank;

public class LoginForm {
	
	@NotBlank(message = "아이디는 필수입력 값입니다.")
	private String id;
	
	@NotBlank(message = "비밀번호는 필수입력 값입니다.")
	private String password;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
