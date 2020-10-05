package com.sample.dto;

public class MateOrigin {
	private int id;
	private int performanceId;
	private String seatGroup;
	private int category;
	private int groupSize;
	private String seatRate;
	private String status;
	private int groupCnt;
	
	public MateOrigin() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPerformanceId() {
		return performanceId;
	}

	public void setPerformanceId(int performanceId) {
		this.performanceId = performanceId;
	}

	public String getSeatGroup() {
		return seatGroup;
	}

	public void setSeatGroup(String seatGroup) {
		this.seatGroup = seatGroup;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getGroupSize() {
		return groupSize;
	}

	public void setGroupSize(int groupSize) {
		this.groupSize = groupSize;
	}

	public String getSeatRate() {
		return seatRate;
	}

	public void setSeatRate(String seatRate) {
		this.seatRate = seatRate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getGroupCnt() {
		return groupCnt;
	}

	public void setGroupCnt(int groupCnt) {
		this.groupCnt = groupCnt;
	}

	@Override
	public String toString() {
		return "MateOrigin [id=" + id + ", performanceId=" + performanceId + ", seatGroup=" + seatGroup + ", category="
				+ category + ", groupSize=" + groupSize + ", seatRate=" + seatRate + ", status=" + status
				+ ", groupCnt=" + groupCnt + "]";
	}
	
}
