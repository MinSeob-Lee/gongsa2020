package com.sample.dto;

public class PerformanceAgeReserveStats {

	private int performanceInfoId;
	private int ageGroup;
	private int reserveCount;
	
	public PerformanceAgeReserveStats() {}

	public int getPerformanceInfoId() {
		return performanceInfoId;
	}

	public void setPerformanceInfoId(int performanceInfoId) {
		this.performanceInfoId = performanceInfoId;
	}

	public int getAgeGroup() {
		return ageGroup;
	}

	public void setAgeGroup(int ageGroup) {
		this.ageGroup = ageGroup;
	}

	public int getReserveCount() {
		return reserveCount;
	}

	public void setReserveCount(int reserveCount) {
		this.reserveCount = reserveCount;
	}
	
	
	
}
