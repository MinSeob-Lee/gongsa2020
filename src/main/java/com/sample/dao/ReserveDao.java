package com.sample.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sample.web.view.PerformanceMain;
import com.sample.web.view.Reserve;

public interface ReserveDao {
    void insertReserve(Reserve reserve);
    List<Reserve> getReservesByUserId(@Param("offset")int offset,@Param("userId")String userId);
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
    List<Reserve> getReserveByUserIdAndPerformanceId(
    		@Param("userId") String userId,
    		@Param("performanceId") int performanceId);
    
    /**
     * performanceId와 userId를 입력받아 Reserve객체를 한개 반환받는다.
     * user가 메이트 방에 참여하지 않아, mateId가  null 일경우 null을 반환받는다.
     * mateid 와 Reserve id를 조인함
     * @param performanceId
     * @param userId
     * @return null or Reserve 객체
     */
    Reserve getReservedMateByPerformanceIdAndUserId(@Param("performanceId") int performanceId,
    		@Param("userId") String userId);
    
    /**
     * Reserve 테이블을 업데이트한다.
     * @param reserve
     */
    void updateReserve(Reserve reserve);
 
    /**
     * performanceId 에 해당하는 모든 reserve 테이블 요소의 mateId 를 null로 변환한다.
     * @param performanceId
     */
    void updateMateIdToNull(int performanceId);
    
    List<Reserve> getReserveCurrentCnt();
 
    List<Reserve> getReserveMyMateId(int mateId);
    
    List<Reserve> getReserveByPerformanceId(int performanceId);
    
    void updateReserveToMateNull(Reserve reserve);
    
    PerformanceMain getPerformanceMainByReserveId(int reserveId);
}