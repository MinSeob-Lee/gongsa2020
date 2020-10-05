package com.sample.service;

import java.util.List;

import com.sample.dto.HallSeatDto;
import com.sample.web.view.HallInfo;

public interface HallService {

	HallInfo getHallInfoByPerformanceId(int performanceId);
	
	List<HallSeatDto> getSeatsByMateId(int mateId);
}
