package com.sample.dao;

import java.util.Date;
import java.util.List;
import com.sample.dto.PerformanceDto;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;
import com.sample.dto.PerformanceDetailDto;

public interface PerformanceDao {
	PerformanceDto selectPerformance(int performanceId);

	//Performance selectPerformance(int id);	
	String[] getGenreById(int id);
	//좌석 정보 테이블 필요
	List<PerformanceDetailDto> getPerformancesByCategory(String category);	
	//String[] getGenreByCategory(String category);
	PerformanceDetailDto getPerformanceById(int id);

	List<PerformanceSchedule> selectPerformanceByDate(Date showDate);
	List<PerformanceSchedule> selectPerformanceByDate(String showDate);
	PerformanceSchedule getScheduleByPerformanceMainId(int performanceMainId);
	PerformanceDto selectPerformanceByPerformanceMainId(int performanceMainId);
	
	List<PerformanceSeatPrice> getPerformanceSeatPrice(int performanceId);
}