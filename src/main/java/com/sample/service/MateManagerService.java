package com.sample.service;

import java.util.List;

import com.sample.dto.JsonHallSeat;
import com.sample.web.form.MateForm;

public interface MateManagerService {

	public void addMate(MateForm mateForm);
	public void addMateCat(int id,String category);
	public int countMate(List<JsonHallSeat> list);
	List<JsonHallSeat> getHallSeats(int performanceId);
	public void updateMate(MateForm mateForm);
	public void deleteMate(int performanceId);
}
