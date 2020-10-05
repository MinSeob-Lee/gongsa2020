package com.sample.utils;

import java.util.List;

import com.sample.dao.MateDao;
import com.sample.service.MateServiceImpl;
import com.sample.web.view.Mate;

public class MateMain {

	public static void main(String[] args) {
		
		MateServiceImpl mateservice = new MateServiceImpl();
		List<Mate> mates = mateservice.getMatesByPerformanceId(11);
		System.out.println(mates);
	}
}
