package com.sample.service;

import java.util.Date;
import java.util.List;

import com.sample.dto.PerformanceDto;
import com.sample.dto.PerformanceDetailDto;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;

public interface PerformanceService {
    void addPerformance(Performance performance);

    List<Performance> getAllPerformances();
    List<Performance> searchPerformances(Performance performance);
    PerformanceDto getPerformanceDetail(int performanceId);
    List<PerformanceSchedule> getPerformanceDetailByDate(Date performanceDate);
    List<PerformanceSchedule> getPerformanceDetailByDate(String performanceDate);
    PerformanceDto getPerformanceByPerformanceMainId(int performanceMainId);
    List<PerformanceDetailDto> getPerformancesByCategory(String category);	// 파라미터에 category추가
    PerformanceDetailDto getPerformanceDetailById(int performanceId);
    List<PerformanceSeatPrice> getPerformanceSeatPriceById(int performanceId);
    PerformanceSchedule getPerformanceScheduleByPerformanceId(int performanceMainId);
    //List<PerformanceDetailDto> searchPerformances(Performance performance);
    //Performance getPerformanceDetail(int performanceId);
}