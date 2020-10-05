package com.sample.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

	private static final SimpleDateFormat hhmm = new SimpleDateFormat("HH시 mm분");
	private static final SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyy년 M월 d일");
	
	public static String DateToHourMinute(Date date) {
		if (date == null) {
			return "";
		}
		return hhmm.format(date);
	}
	
	public static String DateToYearMonthDay(Date date) {
		if (date == null) {
			return "";
		}
		return yyyyMMdd.format(date);
	}
	
}
