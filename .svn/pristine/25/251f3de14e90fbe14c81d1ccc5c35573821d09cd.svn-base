package com.sample.web.view;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class PerformanceSchedule {
    private int id;
    private int infoId;
    private HallInfo hallinfo;
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date showDate;
//    @JsonFormat(pattern="hh시 mm분")
    private String showTime;
    private int showNumber;
    private List<HallSeat> hallSeats;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public HallInfo getHallinfo() {
		return hallinfo;
	}
	public void setHallinfo(HallInfo hallinfo) {
		this.hallinfo = hallinfo;
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
	public List<HallSeat> getHallSeats() {
		return hallSeats;
	}
	public void setHallSeats(List<HallSeat> hallSeats) {
		this.hallSeats = hallSeats;
	}
	public int getInfoId() {
		return infoId;
	}
	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}
	@Override
	public String toString() {
		return "PerformanceSchedule [id=" + id + ", infoId=" + infoId + ", hallinfo=" + hallinfo + ", showDate="
				+ showDate + ", showTime=" + showTime + ", showNumber=" + showNumber + ", hallSeats=" + hallSeats + "]";
	}
	
    
}