package com.sample.dto;

public class JsonHallSeat {

	private int performanceId;
	private int hallId;
	private int groupSize;
	private String seatBlock;
	private int seatRow;
	private int seatCol;
	private String seatRate;
	private int mateNo;
	
	public JsonHallSeat() {}

	
	public int getGroupSize() {
		return groupSize;
	}
	public void setGroupSize(int groupSize) {
		this.groupSize = groupSize;
	}
	public int getPerformanceId() {
		return performanceId;
	}

	public void setPerformanceId(int performanceId) {
		this.performanceId = performanceId;
	}

	public int getHallId() {
		return hallId;
	}

	public void setHallId(int hallId) {
		this.hallId = hallId;
	}

	public String getSeatBlock() {
		return seatBlock;
	}

	public void setSeatBlock(String seatBlock) {
		this.seatBlock = seatBlock;
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

	public int getMateNo() {
		return mateNo;
	}

	public void setMateNo(int mateNo) {
		this.mateNo = mateNo;
	}

	
	public String getSeatRate() {
		return seatRate;
	}

	public void setSeatRate(String seatRate) {
		this.seatRate = seatRate;
	}


	@Override
	public String toString() {
		return "JsonHallSeat [performanceId=" + performanceId + ", hallId=" + hallId + ", groupSize=" + groupSize
				+ ", seatBlock=" + seatBlock + ", seatRow=" + seatRow + ", seatCol=" + seatCol + ", seatRate="
				+ seatRate + ", mateNo=" + mateNo + "]";
	}


	@Override
	public int hashCode() {
		return (mateNo+seatRow+seatCol+seatRate).hashCode();
	}


	public boolean equals(Object obj) {
		JsonHallSeat other = (JsonHallSeat) obj;
		if((other.mateNo == this.mateNo)){
			return true;
		} else {
			return false;
		}
	}
	
	

	
	
	
	
}
