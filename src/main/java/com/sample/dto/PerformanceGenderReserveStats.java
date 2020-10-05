package com.sample.dto;

public class PerformanceGenderReserveStats {

	private int performanceInfoId;
	private String gender;
	private int reserveCount;
	
	public PerformanceGenderReserveStats() {}

	public int getPerformanceInfoId() {
		return performanceInfoId;
	}

	public void setPerformanceInfoId(int performanceInfoId) {
		this.performanceInfoId = performanceInfoId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getReserveCount() {
		return reserveCount;
	}

	public void setReserveCount(int reserveCount) {
		this.reserveCount = reserveCount;
	}
	
	
	
}
