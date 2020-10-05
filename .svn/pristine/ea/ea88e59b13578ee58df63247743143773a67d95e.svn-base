package com.sample.dao;

import java.util.List;

import com.sample.dto.PaymentDto;
import com.sample.web.view.Payment;

public interface PaymentDao {
	/**
	 * 주문정보를 DB에 저장한다.
	 * @param payment
	 */
    void insertPayment(Payment payment);
//    void updatePayment(Payment payment);
//    List<Payment> getPaymentsByUserId(String userId);
//    Payment getPaymentDetail(int paymentId);
//    List<Payment> getAllPayments();
    
    /**
     * unique 키 reserveId로 Payment 객체를 1개 반환한다.
     * @param reserveId
     * @return Payment 객체
     */
    Payment getPaymentByReserveId(int reserveId);
    
    List<PaymentDto> getPaymentStatus(PaymentDto paymentDto);
    
    List<PaymentDto> getPaymentAll(PaymentDto paymentDto);
    
    List<PaymentDto> getTotalSales(PaymentDto paymentDto);
}