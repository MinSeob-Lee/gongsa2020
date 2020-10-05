package com.sample.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.web.view.Notice;

public interface NoticeDao {
	
    void insertNoticeMain(Notice notice);
    void insertNoticeImagePath(Map<String, Object> map);
    
    List<Notice> getAllNotices();
    
    Notice getNoticeById(int noticeId);
    
    List<Notice> getSearchedNotice(String searchString);
    
    void insertNoticeImages(Map<String, String> map);
    
    List<String> getAllNoticeImages();
    
    int getTotalRowsOfNoticeList(Map<String, String> map);
    
    List<Notice> getAllNoticeListForPaging();
    
}