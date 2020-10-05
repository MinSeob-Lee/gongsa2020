package com.sample.web.view;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class PerformanceMain {
	private int id;
	private int infoId;
	private int hallId;
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date showDate;
	private String showTime;
	private int showNumber;
	
	public PerformanceMain() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getInfoId() {
		return infoId;
	}

	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}

	public int getHallId() {
		return hallId;
	}

	public void setHallId(int hallId) {
		this.hallId = hallId;
	}

	public Date getShowDate() {
		return showDate;
	}

	public void setShowDate(Date showDate) {
		this.showDate = showDate;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public int getShowNumber() {
		return showNumber;
	}

	public void setShowNumber(int showNumber) {
		this.showNumber = showNumber;
	}
	
	
	
	
}
