package com.sample.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.HallDao;
import com.sample.web.view.HallInfo;

@Service
public class HallServiceImpl implements HallService {

	@Autowired
	HallDao hallDao;
	
	@Override
	public HallInfo getHallInfoByPerformanceId(int performanceId) {
		return hallDao.getHallInfoByPerformanceInfoId(performanceId);
	}

}
