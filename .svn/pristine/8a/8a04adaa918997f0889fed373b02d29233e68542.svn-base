package com.sample.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class PaymentDto {

	@JsonFormat(pattern="yyyy-MM")
	private Date date;
	private int credit;
	private int card;
	private int payStatus;
	@JsonFormat(pattern="yyyy-MM-dd")
	private Date lineDate;
	private int totalSales;
	
	public PaymentDto() {}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public int getCard() {
		return card;
	}

	public void setCard(int card) {
		this.card = card;
	}

	public int getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(int payStatus) {
		this.payStatus = payStatus;
	}

	public int getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(int totalSales) {
		this.totalSales = totalSales;
	}

	public Date getLineDate() {
		return lineDate;
	}

	public void setLineDate(Date lineDate) {
		this.lineDate = lineDate;
	}

	@Override
	public String toString() {
		return "PaymentDto [date=" + date + ", credit=" + credit + ", card=" + card + ", payStatus=" + payStatus
				+ ", lineDate=" + lineDate + ", totalSales=" + totalSales + "]";
	}
}
