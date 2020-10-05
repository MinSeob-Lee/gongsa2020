package com.sample.web.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.PerformanceDetailDto;
import com.sample.service.PerformanceService;



@Controller
@RequestMapping("/performance")
public class PerformanceContoller {

	@Autowired
	private PerformanceService performanceService;
	
	@GetMapping("/list.do")
	public String list(Model model) {
		
		// 나중에는 getParameter = category로 하기
		
		List<PerformanceDetailDto> performances = performanceService.getPerformancesByCategory("콘서트");
		model.addAttribute("performances", performances);
					
		return "/performance/list";
	}
	
	@GetMapping("/detail.do")
	public @ResponseBody PerformanceDetailDto getProduct(@RequestParam("id") int performanceId) {
		PerformanceDetailDto performance = performanceService.getPerformanceDetailById(performanceId);
		//System.out.println("detail옴");
		
		return performance;
	}
	
}
