package com.sample.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.dto.NoticeDetailDto;
import com.sample.dto.NoticeInsideContentDto;
import com.sample.web.form.NoticeForm;
import com.sample.web.view.Image;
import com.sample.web.view.Notice;
import com.sample.web.view.NoticeImage;

public interface NoticeDao {
	
    void insertNoticeMain(Notice notice);
    void insertNoticeImagePath(Map<String, Object> map);
    void insertNoticeInsideContent(Map<String, Object> map);
    
    void deleteNotice(int noticeId);
    
    NoticeDetailDto getNoticeById(int noticeId);
    List<String> getNoticeImagesById(int noticeId);
    List<NoticeInsideContentDto> getNoticeInsideContentDtoById(int noticeId);
    
    List<Notice> getAllNotices();
    
    List<Notice> getSearchedNotice(String searchString);
    
    void insertNoticeImages(Map<String, String> map);
    
    List<String> getAllNoticeImages();
    
    List<Image> getAllImages();
    
    List<Image> getAllImagesBySearchKeyword(String keyword);
    
    int getTotalRowsOfNoticeList(Map<String, String> map);
    
    List<Notice> getAllNoticeListForPaging();
    
    // 조회조건을 만족하는 글 조회하기
    List<Notice> getNotices(Map<String, Object> map);
    
    void updateViewCount(Map<String, Integer> map);
    
    Notice getNextNoticeInfo(int noticeId);
    
    Notice getPreNoticeInfo(int noticeId);
    
    void modifyNoticeMain(NoticeForm notice);
	void modifyNoticeImg(NoticeImage noticeImg);
	void modifyNoticeTitlesAndContents(Map<String, Object> map);
	
	void deleteNoticeImgTable(int NoticeId);
    
}