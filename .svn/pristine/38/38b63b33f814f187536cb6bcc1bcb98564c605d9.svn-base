package com.sample.dao;

import java.util.List;

import com.sample.web.view.Payment;

public interface PaymentDao {
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
    
}