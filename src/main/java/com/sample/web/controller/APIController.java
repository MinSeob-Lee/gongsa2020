package com.sample.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sample.dto.APIData;
import com.sample.dto.APIPerformance;
import com.sample.dto.APIPerformanceDetail;
import com.sample.service.APIPerformanceService;

@Controller
@RequestMapping("/manager")
public class APIController {

	@Autowired
	APIPerformanceService apiPerformanceService;
	
	@RequestMapping("/test.do")
	public String getAPIData() {
				
		return "manager/test";
	}
	
	@RequestMapping("/apijson.do")
	@ResponseBody
	public APIData getAllAPIData(APIData apiData) {
		
		return apiPerformanceService.getAPIData(apiData);
	}
	
	@RequestMapping("/apidatadetail.do")
	@ResponseBody
	public APIPerformanceDetail getAPIDataDetail(@RequestParam("seq") int seqNo) {
		
		return apiPerformanceService.getAPIDataDetailBySeqNo(seqNo);    
	}
}
