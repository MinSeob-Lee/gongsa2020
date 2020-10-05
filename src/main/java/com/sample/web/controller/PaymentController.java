package com.sample.web.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sample.dto.PaymentDto;
import com.sample.dto.PerformanceDetailDto;
import com.sample.dto.PerformanceDto;
import com.sample.service.PaymentService;
import com.sample.service.PerformanceService;
import com.sample.service.UserService;
import com.sample.web.form.PaymentForm;
import com.sample.web.security.Auth;
import com.sample.web.view.Coupon;
import com.sample.web.view.Payment;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceMain;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;
import com.sample.web.view.User;
import com.sample.web.view.UserPoint;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@Autowired
	private PerformanceService performanceService;

	@Autowired
	private UserService userService;

	@Autowired
	private PaymentService paymentService;
	@Auth
	@RequestMapping("/step1.do")
	public String detailPerformance(@RequestParam("no") int performanceId, String userId, Model model) {
		PerformanceDto performanceDto = performanceService.getPerformanceDetail(performanceId);
		List<Coupon> coupons = userService.getCouponByUserId(userId);
		User user = userService.getUserDetail(userId);
		List<PerformanceMain> data = performanceService.getPerformanceMain(performanceId);
		
		StringBuffer bf = new StringBuffer();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		for(PerformanceMain p : data) {
			bf.append(sd.format(p.getShowDate()));
			bf.append(",");
		}
		
		
		
		PaymentForm paymentForm = new PaymentForm();
		
		model.addAttribute("pDate", bf);
		model.addAttribute("performanceDto", performanceDto);
		model.addAttribute("coupons", coupons);
		model.addAttribute("user", user);
		model.addAttribute("paymentForm", paymentForm);

		return "payment/step1";
	}

	@RequestMapping("/performanceSchedule.do")
	@ResponseBody
	public List<PerformanceSchedule> getPerformanceSchedule(@RequestParam("no") int performanceId,
			@RequestParam("date") Date performanceDate) {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("no", performanceId);
		data.put("date", performanceDate);

		List<PerformanceSchedule> performanceSchedules = performanceService.getPerformanceDetailByMap(data);

		return performanceSchedules;
	}

	@RequestMapping("/performanceMain.do")
	@ResponseBody
	public PerformanceDto getPerformanceByPerformanceMainId(@RequestParam("no") int performanceMainId)
			throws ParseException {

		PerformanceSchedule schedule = performanceService.getPerformanceScheduleByPerformanceId(performanceMainId);
		List<PerformanceSeatPrice> seats = performanceService.getPerformanceSeatPriceById(schedule.getInfoId());
		PerformanceDto dto = new PerformanceDto(schedule);
		dto.setSeatPrice(seats);

		return dto;
	}
	@Auth
	@RequestMapping("/add.do")
	public String paymentInsert(@ModelAttribute PaymentForm paymentForm, HttpSession session, RedirectAttributes redirect) {

		User user = (User) session.getAttribute("LOGIN_USER");
		if(paymentForm.getUsedPoint() != 0) {
			user.setPoint(user.getPoint() + paymentForm.getUsedPoint());
		}
		
		Payment payment = new Payment();
		payment.setId(paymentForm.getId());
		
		UserPoint userPoint = new UserPoint();
		userPoint.setUser(user);
		userPoint.setValue(paymentForm.getUsedPoint());
		
		payment = paymentService.addPayment(paymentForm);
		
		// 주석된 아래의 코드는 paymentService의 addPayment 코드에 추가되는 것으로 변경 (트랜잭션 처리)
		// performance_info의 reserveCount 변경
		//Performance performance = payment.getReserve().getPerformance();	// main 아이디가 저장됨
				
		// main id를 통해 performanceDetailDto 정보 조회
		//PerformanceDetailDto performanceOrigin = performanceService.getPerformanceByPerformanceMainId(performance.getId());
		
		//System.out.println("이전 예약자수: " + performanceOrigin.getReserveCount());
		//performance.setReserveCount(performanceOrigin.getReserveCount());
		//performance.setId(performanceOrigin.getId()); 	// info 아이디로 변경
		//performanceService.updatePerformanceReserveCount(performance);
		
		userService.updateUser(user);
		userPoint.setPayment(payment);
		
		userService.addUserPointHistory(userPoint);
		userPoint.setValue(payment.getPay()/100);
		userService.addUserPointHistory(userPoint);
		
		int performanceId = paymentForm.getPerformanceId();
		redirect.addAttribute("pid", performanceId);
		
		return "redirect:/mate/mate.do";
	}
	
	@RequestMapping("/admin_payment.do")
	public String adminPayment() {
		
		return "payment/admin_payment";
	}
	
	@RequestMapping("/paymentStatus.do")
	@ResponseBody
	public List<PaymentDto> getPaymentStatus(PaymentDto paymentDto) {
		
		return paymentService.getPaymentStatus(paymentDto);
	}
	
	@RequestMapping("/paymentAll.do")
	@ResponseBody
	public List<PaymentDto> getPaymentAll(PaymentDto paymentDto) {
		
		return paymentService.getPaymentAll(paymentDto);
	}
	
	@RequestMapping("/totalSales.do")
	@ResponseBody
	public List<PaymentDto> getTotalSales(PaymentDto paymentDto) {
		
		return paymentService.getTotalSales(paymentDto);
	}

}
