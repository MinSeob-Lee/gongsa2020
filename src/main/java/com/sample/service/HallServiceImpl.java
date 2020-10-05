package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.HallDao;
import com.sample.dto.HallSeatDto;
import com.sample.web.view.HallInfo;

@Service
public class HallServiceImpl implements HallService {

	@Autowired
	HallDao hallDao;

	@Override
	public HallInfo getHallInfoByPerformanceId(int performanceId) {
		return hallDao.getHallInfoByPerformanceInfoId(performanceId);
	}
	public List<HallSeatDto> getSeatsByMateId(int mateId) {
		return hallDao.getSeatsByMateId(mateId);
	}
}
