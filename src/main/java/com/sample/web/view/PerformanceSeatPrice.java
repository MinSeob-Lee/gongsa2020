package com.sample.web.view;

public class PerformanceSeatPrice {

	private int infoId;	// performance_info 테이블의 id이며, Vo객체에서는 performance의 id와 동일하다.
	private String seatRate;
	private int price;
	
	public PerformanceSeatPrice() {}

	public int getInfoId() {
		return infoId;
	}

	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}

	public String getSeatRate() {
		return seatRate;
	}

	public void setSeatRate(String seatRate) {
		this.seatRate = seatRate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
