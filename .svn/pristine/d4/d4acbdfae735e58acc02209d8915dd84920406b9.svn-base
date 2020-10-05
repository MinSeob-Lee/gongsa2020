package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.PerformanceDao;
import com.sample.dao.ReserveDao;
import com.sample.dao.UserDao;
import com.sample.dto.PerformanceDetailDto;
import com.sample.dto.PerformanceDto;
import com.sample.web.view.Performance;
import com.sample.web.view.Reserve;
import com.sample.web.view.User;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDao reserveDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private PerformanceDao performanceDao;
	
	@Override
	public void addReserve(Reserve reserve) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Reserve> getReservesByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateReserve(Reserve reserve) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Reserve getLastestReserveByUserId(String userId) {
		// TODO Auto-generated method stub
		return reserveDao.getReserveDetailByUserId(userId);
	}

	 /**
     * reserve_main 테이블에서  userId와 performanceId와
     * 일치하는 Reserve 객체 1개를 반환 받는다.
     * 해당 유저가 특정 회차 공연을 예약했는지 알 수 있는 테이블
     * @param userId 
     * @param performanceId
     * @return Reserve 객체 1개
     */
	public Reserve getReserveByUserIdAndPerformanceId(String userId, int performanceId) {

		System.out.println(userId);
		System.out.println(performanceId);
		
		User user = userDao.getUserById(userId);
		if(user == null) {
			throw new RuntimeException("해당 유저가 없습니다.");
		}
		PerformanceDetailDto performance = performanceDao.getPerformanceByPerformanceMainId(performanceId);
		if(performance == null) {
			throw new RuntimeException("해당 회차의 공연이 없습니다.");
		}
		
		Reserve reserve = reserveDao.getReserveByUserIdAndPerformanceId(userId, performanceId);
		if(reserve == null) {
			throw new RuntimeException("해당 예약정보가 없습니다.");
		}
		
		return reserve;
	}
	 /**
     * performanceId와 userId를 입력받아 Reserve객체를 한개 반환받는다.
     * user가 메이트 방에 참여하지 않아, mateId가  null 일경우 null을 반환받는다.
     * mateid 와 Reserve id를 조인함
     * @param performanceId
     * @param userId
     * @return null or Reserve 객체
     */
	public Reserve getReservedMateByPerformanceIdAndUserId(String userId, int performanceId) {
		return reserveDao.getReservedMateByPerformanceIdAndUserId(performanceId, userId);
	}
	
}
