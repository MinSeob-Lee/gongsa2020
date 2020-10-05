package com.sample.dao;

import java.util.List;

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

}