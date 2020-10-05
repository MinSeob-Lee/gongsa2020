package com.sample.dto;

public class HallSeatDto {

	private int hallId;
	private String seatRate;
	private String seatStatus;
	private int mateGroup;
	private int seatRow;
	private int seatCol;
	private String seatBlock;
	private int performanceId;
	
	public HallSeatDto() {}

	public int getHallId() {
		return hallId;
	}

	public void setHallId(int hallId) {
		this.hallId = hallId;
	}

	public String getSeatRate() {
		return seatRate;
	}

	public void setSeatRate(String seatRate) {
		this.seatRate = seatRate;
	}

	public String getSeatStatus() {
		return seatStatus;
	}

	public void setSeatStatus(String seatStatus) {
		this.seatStatus = seatStatus;
	}

	public int getMateGroup() {
		return mateGroup;
	}

	public void setMateGroup(int mateGroup) {
		this.mateGroup = mateGroup;
	}

	public int getSeatRow() {
		return seatRow;
	}

	public void setSeatRow(int seatRow) {
		this.seatRow = seatRow;
	}

	public int getSeatCol() {
		return seatCol;
	}

	public void setSeatCol(int seatCol) {
		this.seatCol = seatCol;
	}

	public String getSeatBlock() {
		return seatBlock;
	}

	public void setSeatBlock(String seatBlock) {
		this.seatBlock = seatBlock;
	}

	public int getPerformanceId() {
		return performanceId;
	}

	public void setPerformanceId(int performanceId) {
		this.performanceId = performanceId;
	}

	@Override
	public String toString() {
		return "HallSeatDto [hallId=" + hallId + ", seatRate=" + seatRate + ", seatStatus=" + seatStatus
				+ ", mateGroup=" + mateGroup + ", seatRow=" + seatRow + ", seatCol=" + seatCol + ", seatBlock="
				+ seatBlock + ", performanceId=" + performanceId + "]";
	}
	
	
}
