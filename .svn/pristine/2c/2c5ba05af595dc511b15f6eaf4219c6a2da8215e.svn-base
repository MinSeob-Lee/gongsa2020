package com.sample.service;

import java.util.List;

import com.sample.web.view.Reserve;

public interface ReserveService {
    void addReserve(Reserve reserve);
    List<Reserve> getReservesByUserId(int offset, String userId);
    void updateReserve(Reserve reserve);
    Reserve getLastestReserveByUserId(String userId);
    Reserve getReserveDetail(int reserveId);
    /**
     * reserve_main 테이블에서  userId와 performanceId와
     * 해당 유저가 특정 회차 공연을 예약했는지 알 수 있는 테이블
     * @param userId 
     * @param performanceId
     * @return Reserve 객체 1개
     */
    List<Reserve> getReserveByUserIdAndPerformanceId(String userId, int performanceId);
    /**
     * performanceId와 userId를 입력받아 Reserve객체를 한개 반환받는다.
     * user가 메이트 방에 참여하지 않아, mateId가  null 일경우 null을 반환받는다.
     * mateid 와 Reserve id를 조인함
     * @param performanceId
     * @param userId
     * @return null or Reserve 객체
     */
    Reserve getReservedMateByPerformanceIdAndUserId(String userId, int performanceId);
    List<Reserve> getReserveCurrentCnt();
}