package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.PaymentDao;
import com.sample.web.view.Payment;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao paymentDao;
	
	@Override
	public void addPayment(Payment payment) {
		// TODO Auto-generated method stub
		
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
	
	
	
}
