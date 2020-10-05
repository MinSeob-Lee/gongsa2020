package com.sample.web.form;

import java.util.List;

import com.sample.dto.JsonHallSeat;
import com.sample.dto.JsonPerformance;

public class MateForm {

	private JsonPerformance performance;
	private List<JsonHallSeat> seats;
	public JsonPerformance getPerformance() {
		return performance;
	}
	public void setPerformance(JsonPerformance performance) {
		this.performance = performance;
	}
	public List<JsonHallSeat> getSeats() {
		return seats;
	}
	public void setSeats(List<JsonHallSeat> seats) {
		this.seats = seats;
	}
	@Override
	public String toString() {
		return "MateForm [performance=" + performance + ", seats=" + seats + "]";
	}
	
	
}
