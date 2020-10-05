package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.PaymentDao;
import com.sample.dao.PerformanceDao;
import com.sample.dao.ReserveDao;
import com.sample.dao.UserDao;
import com.sample.dto.PaymentDto;
import com.sample.dto.PerformanceDetailDto;
import com.sample.web.form.PaymentForm;
import com.sample.web.view.Payment;
import com.sample.web.view.Performance;
import com.sample.web.view.Reserve;
import com.sample.web.view.User;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao paymentDao;
	
	@Autowired
	ReserveDao reserveDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	PerformanceDao performanceDao;
	
	@Override
	@Transactional
	public Payment addPayment(PaymentForm paymentForm) {
		Reserve reserve = new Reserve();
		User user = new User();
		Performance performance = new Performance();
		Payment payment = new Payment();
		
		performance.setId(paymentForm.getPerformanceId());
		user.setId(paymentForm.getUserId());
		reserve.setReserveUser(user);
		reserve.setPerformance(performance);
		reserve.setReceiveType(paymentForm.getMethod());
		reserve.setSeatRate(paymentForm.getSeatRate());
				
		reserveDao.insertReserve(reserve);
		payment.setReserve(reserve);
		payment.setPay(paymentForm.getPay());
		payment.setMethod(paymentForm.getPayMethodReal());
		payment.setUsedPoint(paymentForm.getUsedPoint());
		
		paymentDao.insertPayment(payment);
		
		// performance_info 테이블의 reserveCount 변경
		// performance_main 아이디가 저장된 performance2
		Performance performance2 = payment.getReserve().getPerformance();	
		// performance_main 아이디를 통해 performance_info 아이디가 담긴 performanceDetailDto 정보조회
		PerformanceDetailDto performanceOrigin = 
				performanceDao.getPerformanceByPerformanceMainId(performance2.getId());
		// performance2에 바뀐 예약자수를 저장한다.
		performance2.setReserveCount(performanceOrigin.getReserveCount());
		// performance2의 아이디를 performance_main의 아이디에서 performance_info의 아이디로 변경해준다.
		performance2.setId(performanceOrigin.getId());
		// performance_info 테이블에 있는 해당하는 공연정보의 예약자수를 업데이트한다.
		performanceDao.updatePerformanceReserveCount(performance2);
			
		return payment;
	}
	
	@Override
	public List<Payment> getAllPayments() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Payment getPaymentDetail(int reserveId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Payment> getUsersPayments(String userId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void updatePayment(Payment payment) {
		// TODO Auto-generated method stub
		
	}
		
	/**
     * unique 키 reserveId로 Payment 객체를 1개 반환한다.
     * @param reserveId
     * @return Payment 객체
     */
	public Payment getPaymentByReserveId(int reserveId) {
		return paymentDao.getPaymentByReserveId(reserveId);
	}

	@Override
	public List<PaymentDto> getPaymentStatus(PaymentDto paymentDto) {
		return paymentDao.getPaymentStatus(paymentDto);
	}

	@Override
	public List<PaymentDto> getPaymentAll(PaymentDto paymentDto) {
		return paymentDao.getPaymentAll(paymentDto);
	}

	@Override
	public List<PaymentDto> getTotalSales(PaymentDto paymentDto) {
		return paymentDao.getTotalSales(paymentDto);
	}	
	
	public int getCurrentMothPaymentCnt() {
		return paymentDao.getCurrentMothPaymentCnt();
	}
}
