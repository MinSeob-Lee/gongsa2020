package com.sample.service;

import java.util.List;

import com.sample.web.view.Reserve;

public interface ReserveService {
    void addReserve(Reserve reserve);
    List<Reserve> getReservesByUserId(String userId);
    void updateReserve(Reserve reserve);
    Reserve getLastestReserveByUserId(String userId);
    
    /**
     * reserve_main 테이블에서  userId와 performanceId와
     * 일치하는 Reserve 객체 1개를 반환 받는다.
     * 해당 유저가 특정 회차 공연을 예약했는지 알 수 있는 테이블
     * @param userId 
     * @param performanceId
     * @return Reserve 객체 1개
     */
    Reserve getReserveByUserIdAndPerformanceId(String userId, int performanceId);
}