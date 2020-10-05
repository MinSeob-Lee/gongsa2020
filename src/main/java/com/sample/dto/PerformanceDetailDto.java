package com.sample.dto;

import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import org.apache.commons.text.StringEscapeUtils;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sample.web.view.PerformanceSeatPrice;

public class PerformanceDetailDto {
	private int id;
    private String title;
    private String category;
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date startDate;
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date endDate;
    private int rating;
    private String runningTime;
    private String provider;
    private int point;
    private int likes;
    private String imagePath;
    private String explain;
    private String hallName;
    private String hallAddress;
    private List<String> genres;
    private List<PerformanceSeatPrice> seatPrices;
    private int hallInfoId;
    // 예매횟수 추가해야함 
    private int reserveCount;
    private int performanceMainId;
    
    //private List<PerformanceSchedule> schedule;
    // 지도 gpsX, gpsy 추가
    // 게시판 수 추가
    // 메이트그룹 인원현황 추가
    // 좌석정보테이블 추가
    // 통계정보 추가
    // 이벤트 정보 추가
   
   
    public PerformanceDetailDto() {}

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

	public String getRunningTime() {
		return runningTime;
	}
	
	public void setRunningTime(String runningTime) {
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

	public String getHallName() {
		return hallName;
	}

	public void setHallName(String hallName) {
		this.hallName = hallName;
	}

	public String getHallAddress() {
		return hallAddress;
	}

	public void setHallAddress(String hallAddress) {
		this.hallAddress = hallAddress;
	}

	public List<String> getGenres() {
		return genres;
	}


	public void setGenres(List<String> genres) {
		this.genres = genres;
	}
 
	public List<PerformanceSeatPrice> getSeatPrices() {
		
		return sortSeatPrice(seatPrices);
	}
	
	public void setSeatPrices(List<PerformanceSeatPrice> seatPrices) {
		this.seatPrices = sortSeatPrice(seatPrices);
	}
	
	public List<PerformanceSeatPrice> sortSeatPrice(List<PerformanceSeatPrice> seatPrices) {		
		Comparator<PerformanceSeatPrice> seatComparator = new Comparator<PerformanceSeatPrice>() {

			@Override
			public int compare(PerformanceSeatPrice p1, PerformanceSeatPrice p2) {
				// TODO Auto-generated method stub
				return p1.getPrice() - p2.getPrice();
			}			
		};				
        Collections.sort(seatPrices,seatComparator);	
        return seatPrices;
	}
	
	public int getReserveCount() {
		return reserveCount;
	}
	
	public void setReserveCount(int reserveCount) {
		this.reserveCount = reserveCount;
	}

	public int getHallInfoId() {
		return hallInfoId;
	}

	public void setHallInfoId(int hallInfoId) {
		this.hallInfoId = hallInfoId;
	}

	public int getPerformanceMainId() {
		return performanceMainId;
	}

	public void setPerformanceMainId(int performanceMainId) {
		this.performanceMainId = performanceMainId;
	}
	
	
}
