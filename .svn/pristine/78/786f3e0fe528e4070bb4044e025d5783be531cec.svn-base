package com.sample.web.form;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

public class PerformanceForm {
	// 공연 기본정보
	//private int id;
	private String category;
	private String title;
	private String[] genre; 
	@JsonFormat(pattern="yyyy-MM-dd")
    private Date startDate;   
	@JsonFormat(pattern="yyyy-MM-dd")
    private Date endDate;
    private int rating;
    private String runningTime;
    private String provider;    
    private MultipartFile upfile;
    private String imagePath;
    private String explain;
    
    
    // 공연장 입력정보
    private String hallInputType;
    private int hallId;
    private String hallName;
    private String hallAddress;
    private String gpsX;
    private String gpsY;
    
    // 좌석 입력정보
    private int aPrice;	// A석 가격
    private int sPrice; // S석 가격
    private int rPrice; // R석 가격
    //private List<String> genres;
   
    public PerformanceForm() {}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String[] getGenre() {
		return genre;
	}

	public void setGenre(String[] genre) {
		this.genre = genre;
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

	public MultipartFile getUpfile() {
		return upfile;
	}

	public void setUpfile(MultipartFile upfile) {
		this.upfile = upfile;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public String getHallInputType() {
		return hallInputType;
	}

	public void setHallInputType(String hallInputType) {
		this.hallInputType = hallInputType;
	}

	public int getHallId() {
		return hallId;
	}

	public void setHallId(int hallId) {
		this.hallId = hallId;
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
    
    public String getGpsX() {
		return gpsX;
	}
    
    public void setGpsX(String gpsX) {
		this.gpsX = gpsX;
	}
    
    public String getGpsY() {
		return gpsY;
	}
    
    public void setGpsY(String gpsY) {
		this.gpsY = gpsY;
	}
    
    public int getaPrice() {
		return aPrice;
	}
    
    public void setaPrice(int aPrice) {
		this.aPrice = aPrice;
	}
    
    public int getsPrice() {
		return sPrice;
	}
    
    public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
	}
    
    public int getrPrice() {
		return rPrice;
	}
    
    public void setrPrice(int rPrice) {
		this.rPrice = rPrice;
	}
    
    public String getImagePath() {
		return imagePath;
	}
    
    public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
    
}
