package com.sample.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sample.web.view.Reserve;

public interface ReserveDao {
    void insertReserve(Reserve reserve);
    List<Reserve> getReservesByUserId(String userId);
    List<Reserve> getAllReserves();
    Reserve getReserveDetail(int reserveId);
    Reserve getReserveDetailByUserId(String userId);
	
    
    /**
     * reserve_main 테이블에서  userId와 performanceId와
     * 일치하는 Reserve 객체 1개를 반환 받는다.
     * 해당 유저가 특정 회차 공연을 예약했는지 알 수 있는 테이블
     * @param userId 
     * @param performanceId
     * @return Reserve 객체 1개
     */
    Reserve getReserveByUserIdAndPerformanceId(
    		@Param("userId") String userId,
    		@Param("performanceId") int performanceId);
}