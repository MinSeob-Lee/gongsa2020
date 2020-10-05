package com.sample.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.sample.web.view.HallInfo;
import com.sample.web.view.HallSeat;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;

public class PerformanceDto {

	private int performanceId;
    private String title;
    private String category;
    private Date startDate;
    private Date endDate;
    private int rating;
    private Date runningTime;
    private String provider;
    private int point;
    private int likes;
    private String imagePath;
    private String explain;
    private List<String> genres;
    private List<PerformanceSchedule> schedule;
    private HallInfo hallinfo;
    private List<HallSeat> hallSeats;
    private List<PerformanceSeatPrice> seatPrice;
    
    public PerformanceDto() {};
    
    public PerformanceDto(PerformanceSchedule performanceSchedule) {
    	schedule = new ArrayList<PerformanceSchedule>();
    	schedule.add(performanceSchedule);
    }
    
	public int getPerformanceId() {
		return performanceId;
	}
	public void setPerformanceId(int performanceId) {
		this.performanceId = performanceId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getRunningTime() {
		return runningTime;
	}
	public void setRunningTime(Date runningTime) {
		this.runningTime = runningTime;
	}
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public List<String> getGenres() {
		return genres;
	}
	public void setGenres(List<String> genres) {
		this.genres = genres;
	}
	public List<PerformanceSchedule> getSchedule() {
		return schedule;
	}
	public void setSchedule(List<PerformanceSchedule> schedule) {
		this.schedule = schedule;
	}
	public HallInfo getHallinfo() {
		return hallinfo;
	}
	public void setHallinfo(HallInfo hallinfo) {
		this.hallinfo = hallinfo;
	}
	public List<HallSeat> getHallSeats() {
		return hallSeats;
	}
	public void setHallSeats(List<HallSeat> hallSeats) {
		this.hallSeats = hallSeats;
	}
	public List<PerformanceSeatPrice> getSeatPrice() {
		return seatPrice;
	}

	public void setSeatPrice(List<PerformanceSeatPrice> seatPrice) {
		this.seatPrice = seatPrice;
	}
}
