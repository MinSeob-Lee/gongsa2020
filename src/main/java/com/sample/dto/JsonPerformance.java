package com.sample.dto;

import java.sql.Date;

public class JsonPerformance {

	private int id;
	private int infoId;
	private int hallId;
	private Date showDate;
	private String showTime;
	private int showNumber;
	private int index;
	
	public JsonPerformance() {}

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

	
	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "JsonPerformance [id=" + id + ", infoId=" + infoId + ", hallId=" + hallId + ", showDate=" + showDate
				+ ", showTime=" + showTime + ", showNumber=" + showNumber + ", index=" + index + "]";
	}
 

	
	
	
}
