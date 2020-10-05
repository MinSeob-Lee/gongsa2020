package com.sample.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.PerformanceDao;
import com.sample.dto.PerformanceDetailDto;
import com.sample.dto.PerformanceDto;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;

@Service
@Transactional
public class PerformanceServiceImpl implements PerformanceService {
	
	@Autowired
	PerformanceDao performanceDao;

	@Override
	public void addPerformance(Performance performance) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<PerformanceDetailDto> getPerformancesByCategory(String category) {
		// TODO Auto-generated method stub
		
		return performanceDao.getPerformancesByCategory(category);
	}

	@Override
	public PerformanceDetailDto getPerformanceDetailById(int performanceId) {
		// TODO Auto-generated method stub
		return performanceDao.getPerformanceById(performanceId);
	}
	
	@Override
	public PerformanceDto getPerformanceDetail(int performanceId) {
		return performanceDao.selectPerformance(performanceId);
	}

	@Override
	public List<PerformanceSchedule> getPerformanceDetailByDate(Date performanceDate) {
		return performanceDao.selectPerformanceByDate(performanceDate);
	}

	@Override
	public PerformanceDto getPerformanceByPerformanceMainId(int performanceMainId) {
		return performanceDao.selectPerformanceByPerformanceMainId(performanceMainId);
	}

	@Override
	public List<Performance> getAllPerformances() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Performance> searchPerformances(Performance performance) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PerformanceSeatPrice> getPerformanceSeatPriceById(int performanceId) {
		return performanceDao.getPerformanceSeatPrice(performanceId);
	}

	@Override
	public List<PerformanceSchedule> getPerformanceDetailByDate(String performanceDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PerformanceSchedule getPerformanceScheduleByPerformanceId(int performanceMainId) {
		return performanceDao.getScheduleByPerformanceMainId(performanceMainId);
	}
}
