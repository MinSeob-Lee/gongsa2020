package com.sample.dto;

import java.util.Date;
import java.util.List;

import com.sample.web.view.NoticeImage;
import com.sample.web.view.User;

public class NoticeDetailDto {
	
    private int id;
    private String title;
    private int category;
    private Date regDate;
    private int badge;
    private int hits;
    private String imoticon;
    private User admin;
    private List<NoticeImage> images;
    private List<NoticeInsideContentDto> insideContents;
	
	public NoticeDetailDto() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public User getAdmin() {
		return admin;
	}

	public void setAdmin(User admin) {
		this.admin = admin;
	}

	public int getBadge() {
		return badge;
	}

	public void setBadge(int badge) {
		this.badge = badge;
	}

	public List<NoticeImage> getImages() {
		return images;
	}

	public void setImages(List<NoticeImage> images) {
		this.images = images;
	}

	public List<NoticeInsideContentDto> getInsideContents() {
		return insideContents;
	}

	public void setInsideContents(List<NoticeInsideContentDto> insideContents) {
		this.insideContents = insideContents;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getImoticon() {
		return imoticon;
	}

	public void setImoticon(String imoticon) {
		this.imoticon = imoticon;
	}

	@Override
	public String toString() {
		return "NoticeDetailDto [id=" + id + ", title=" + title + ", category=" + category + ", regDate=" + regDate
				+ ", admin=" + admin + ", badge=" + badge + ", hits=" + hits + ", imoticon=" + imoticon + ", images="
				+ images + ", insideContents=" + insideContents + "]";
	}

}
