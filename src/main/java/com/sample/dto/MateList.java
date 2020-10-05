package com.sample.dto;

import java.util.List;
import java.util.Map;

import com.sample.web.view.Performance;

public class MateList {

	private Performance performance;
	private int totalHallSeat;
	private int totalCnt;
	private int Rseats;
	private int Sseats;
	private int Aseats;
	private List<Map<String, Object>> categories;
	private List<Map<String, Object>> rStatus;
	private List<Map<String, Object>> sStatus;
	private List<Map<String, Object>> aStatus;
	private List<Map<String, Object>> rGroupsize;
	private List<Map<String, Object>> sGroupsize;
	private List<Map<String, Object>> aGroupsize;
	
	
	public MateList() { }

	public Performance getPerformance() {
		return performance;
	}

	public void setPerformance(Performance performance) {
		this.performance = performance;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public int getRseats() {
		return Rseats;
	}

	public void setRseats(int rseats) {
		Rseats = rseats;
	}

	public int getSseats() {
		return Sseats;
	}

	public void setSseats(int sseats) {
		Sseats = sseats;
	}

	public int getAseats() {
		return Aseats;
	}

	public void setAseats(int aseats) {
		Aseats = aseats;
	}


	public List<Map<String, Object>> getrStatus() {
		return rStatus;
	}

	public void setrStatus(List<Map<String, Object>> rStatus) {
		this.rStatus = rStatus;
	}

	public List<Map<String, Object>> getsStatus() {
		return sStatus;
	}

	public void setsStatus(List<Map<String, Object>> sStatus) {
		this.sStatus = sStatus;
	}

	public List<Map<String, Object>> getaStatus() {
		return aStatus;
	}

	public void setaStatus(List<Map<String, Object>> aStatus) {
		this.aStatus = aStatus;
	}

	public int getTotalHallSeat() {
		return totalHallSeat;
	}

	public void setTotalHallSeat(int totalHallSeat) {
		this.totalHallSeat = totalHallSeat;
	}

	public List<Map<String, Object>> getCategories() {
		return categories;
	}

	public void setCategories(List<Map<String, Object>> categories) {
		this.categories = categories;
	}

	public List<Map<String, Object>> getrGroupsize() {
		return rGroupsize;
	}

	public void setrGroupsize(List<Map<String, Object>> rGroupsize) {
		this.rGroupsize = rGroupsize;
	}

	public List<Map<String, Object>> getsGroupsize() {
		return sGroupsize;
	}

	public void setsGroupsize(List<Map<String, Object>> sGroupsize) {
		this.sGroupsize = sGroupsize;
	}

	public List<Map<String, Object>> getaGroupsize() {
		return aGroupsize;
	}

	public void setaGroupsize(List<Map<String, Object>> aGroupsize) {
		this.aGroupsize = aGroupsize;
	}
	

	
	
}
