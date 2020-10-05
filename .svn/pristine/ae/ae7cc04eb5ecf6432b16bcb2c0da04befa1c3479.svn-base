package com.sample.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.PerformanceDetailDto;
import com.sample.dto.PerformanceDto;
import com.sample.service.PerformanceService;
import com.sample.web.view.Performance;

@Controller
@RequestMapping("/manager")
public class MateManageController {

	@Autowired
	PerformanceService performanceService;
	
	
	@GetMapping("/mateManager.do")
	public String MateManager() {
		
		
		
		
		return "mate/mateManager";
	}
	@RequestMapping("/mateManagerJson.do")
	public @ResponseBody Map<String, Object> MateManagerAjax() {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<PerformanceDetailDto> performanceList = performanceService.getAllPerformances();
		
		map.put("performanceList", performanceList);
		
		return map;
	}
	
	
}
