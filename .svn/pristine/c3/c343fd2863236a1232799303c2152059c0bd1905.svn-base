package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.PaymentDao;
import com.sample.dao.ReserveDao;
import com.sample.dao.UserDao;
import com.sample.dto.PaymentDto;
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
}
