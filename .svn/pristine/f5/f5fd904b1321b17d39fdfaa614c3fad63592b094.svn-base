package com.sample.web.form;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;


public class UserSignupForm {
	
	@NotBlank(message="필수입력값입니다.")
	private String id;
	@NotBlank(message="필수입력값입니다.")
    private String password;
	@NotBlank(message="필수입력값입니다.")
    private String password2;
	@NotBlank(message="필수입력값입니다.")
    private String nickname;
	@NotNull(message="필수입력값입니다.")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthday;
    private String gender;
    @NotBlank(message="필수입력값입니다.")
    private String email;
    @NotBlank(message="필수입력값입니다.")
    private String tel;
    private Date regDate;
    private String postalCode;
    private String sido;
    private String gungu;
    private String addr;
    
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
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getGungu() {
		return gungu;
	}
	public void setGungu(String gungu) {
		this.gungu = gungu;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	public UserSignupForm() {
		super();
	}
	@Override
	public String toString() {
		return "UserSignupForm [id=" + id + ", password=" + password + ", password2=" + password2 + ", nickname="
				+ nickname + ", birthday=" + birthday + ", gender=" + gender + ", email=" + email + ", tel=" + tel
				+ ", regDate=" + regDate + ", postalCode=" + postalCode + ", sido=" + sido + ", gungu=" + gungu
				+ ", addr=" + addr + "]";
	}

	
	
    

}
