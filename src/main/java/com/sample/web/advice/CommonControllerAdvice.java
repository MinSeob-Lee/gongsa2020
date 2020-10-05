package com.sample.web.advice;

import java.io.Console;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;

@ControllerAdvice
public class CommonControllerAdvice {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
		simpleDateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(simpleDateFormat, false));	
	}
}
