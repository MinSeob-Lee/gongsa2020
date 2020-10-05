package com.sample.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class replaceUtils {

	public static String replaceTag(String value) throws UnsupportedEncodingException {
	    return URLEncoder.encode(value, "UTF-8")
	    	.replace("[","")
	    	.replace("]","")
	    	.replace("<", "")
	    	.replace(">", "")
	    	.replace("-", "")
	    	.replace("`", "")
	    	.replace("\'", "")
	    	.replace("\"", "")
	    	.replace("+", "")
	    	.replace(":", "");
	    
		    
	    
	}
}
