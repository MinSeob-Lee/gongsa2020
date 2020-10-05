package com.sample.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class UserInfoDto {
	
	private String id;
	private String nickname;
	private String password;
	private String gender;
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	private String email;
	private String tel;
	private int getlike;
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date regDate;
	private String likedUser;
	private String likeUser;
	private int totalPoint;
	private String postalCode;
	private String sido;
	private String sigungu;
	private String addr;
	
	public UserInfoDto() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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

	public int getGetlike() {
		return getlike;
	}

	public void setGetlike(int getlike) {
		this.getlike = getlike;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getLikedUser() {
		return likedUser;
	}

	public void setLikedUser(String likedUser) {
		this.likedUser = likedUser;
	}

	public String getLikeUser() {
		return likeUser;
	}

	public void setLikeUser(String likeUser) {
		this.likeUser = likeUser;
	}

	public int getTotalPoint() {
		return totalPoint;
	}

	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
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

	public String getSigungu() {
		return sigungu;
	}

	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	};
	
	

}
