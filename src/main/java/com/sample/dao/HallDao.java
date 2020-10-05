package com.sample.dao;

import java.util.List;

import com.sample.dto.HallSeatDto;
import com.sample.dto.JsonHallSeat;
import com.sample.web.view.HallInfo;
import com.sample.web.view.HallSeat;

public interface HallDao {
    void insertHallInfo(HallInfo hallInfo);
    HallInfo getHallInfoById(int hallId);
    List<HallSeat> getHallseatsByPerformanceId(int performanceId);
    HallSeat getHallSeatBySeatNo(String seatRow, int seatNo);


    /**
     * mate_main, performance_main, hall_seats 테이블과 함께 insert 
     * @param seats
     */
    void insertHallSeats(JsonHallSeat seat);

    HallInfo getHallInfoByPerformanceInfoId(int performanceId);
    
    List<JsonHallSeat> getHallSeats(int performanceId);
    
    /**
     * mateId를 받아 해당하는 모든 hallSeat의 status를 업데이트한다.
     * @param hallseat
     */
    void updateHallSeatStatusByMateId(HallSeatDto hallSeat);
    /**
     * seatRow, seatCol, seatBlock, performanceId를 인자로 받아 해당하는
     * hallSeat를 한개 업데이트 한다.
     * @param hallSeat
     */
    void updateHallSeatOne(HallSeatDto hallSeat);
    
    void deleteAllHallSeatsByPerformanceId(int performanceId);
    
    List<HallSeatDto> getSeatsByMateId(int mateId);
}