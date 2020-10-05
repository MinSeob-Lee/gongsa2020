package com.sample.web.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.json.XML;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.sample.dto.APIData;
import com.sample.dto.APIPerformance;

@RestController
public class TestController {

	private static final String dataGoActualDeaAptTradeUrl = "http://www.culture.go.kr/openapi/rest/publicperformancedisplays/period?serviceKey=zJdQE0D3PCV2HvwH9gTu1y4X51r%2BR59iG6CquMRT7s%2B3LAJGiZ1pDWyKMju4higrrIfF%2FCV9eeDRL2%2FZTBp2lA%3D%3D&keyword=&sortStdr=1&ComMsgHeader=&RequestTime=&CallBackURI=&MsgBody=&from=&to=&cPage=1&rows=10";

	@GetMapping("/performanceJson.do")
	public APIData getActualDealPrice(@RequestParam Map<String, Object> paramMap) throws Exception {
        System.out.println("### getActualDealPrice paramMap=>"+paramMap);
        Map<String, Object> resultMap = new HashMap<>();
        APIData apiData = null;
        try {
 
            StringBuilder urlBuilder = new StringBuilder(dataGoActualDeaAptTradeUrl);
     

 
            URL url = new URL(urlBuilder.toString());
 
            System.out.println("###url=>"+url);
 
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json");
            System.out.println("Response Code:"+conn.getResponseCode());
 
 
            BufferedReader rd;
            if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            } else {
                rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
            }
 
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line=rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();
 
            org.json.JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
            String xmlJSONObjString = xmlJSONObj.toString();
            System.out.println("### xmlJSONObjString=>"+xmlJSONObjString);
 
            ObjectMapper objectMapper = new ObjectMapper();
            Map<String, Object> map = new HashMap<>();
            
            
            map = objectMapper.readValue(xmlJSONObjString, new TypeReference<Map<String, Object>>(){});
            Map<String, Object> dataResponse = (Map<String, Object>) map.get("response");
            Map<String, Object> body = (Map<String, Object>) dataResponse.get("msgBody");
//            Map<String, Object> items = null;
            List<Map<String, Object>> itemList = null;
//            items = (Map<String, Object>) body.get("perforList");
//            System.out.println("items : " + items);
            itemList = (List<Map<String, Object>>) body.get("perforList");
            System.out.println("items : " + itemList);
 
            System.out.println("### map="+map);
            System.out.println("### dataResponse="+dataResponse);
            System.out.println("### body="+body);
//            System.out.println("### items="+items);
            System.out.println("### itemList="+itemList);
 
            resultMap.put("result", "0000");
            resultMap.put("totalCount", body.get("totalCount"));
            resultMap.put("cPage", body.get("cPage"));
            resultMap.put("rows", body.get("rows"));
            resultMap.put("data", itemList);
 
            String json = objectMapper.writeValueAsString(resultMap);
            apiData = objectMapper.readValue(json, APIData.class);
            
//            readValues = new ObjectMapper().readValue(
//            		json, new TypeReference<Collection<APIPerformance>>() { }
//            	);
//            
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.clear();
            resultMap.put("Result", "0001");
        }
 
        return apiData;
    }
}
