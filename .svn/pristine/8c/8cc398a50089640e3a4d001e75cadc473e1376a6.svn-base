package com.sample.service;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;import org.springframework.instrument.classloading.tomcat.TomcatLoadTimeWeaver;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.NoticeDao;
import com.sample.web.view.Notice;
import com.sample.web.view.Pagination;

/**
 * 
 * @author semin
 *
 */
@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao noticeDao;
	
	
	@Override
	public List<Notice> displayAllNotice() {
		
		List<Notice> notices = noticeDao.getAllNotices();
		
		return notices;
	}

	@Override
	public void addNewImage(Map<String, String> map) {
		noticeDao.insertNoticeImages(map);
	}
	
	@Override
	public List<String> displayAllNoticeImages() {
		List<String> images = noticeDao.getAllNoticeImages();
		
		return images;
	}
	
	@Override
	public void addNewNotice(Notice notice) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", notice.getImages());
		
		noticeDao.insertNoticeMain(notice);
		noticeDao.insertNoticeImagePath(map);
	}
	
	@Override
	public Map<String, Object> getNoticeForPaging(int pageNo, int rows, String status, String keyword) {
		
		// 검색조건을 담을 맵을 생성한다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("status", status);
		map.put("keyword", keyword);
		
		// 공지 갯수 조회하기
		int totalRows = noticeDao.getTotalRowsOfNoticeList(map);
		
		// 페이지 네비게이션에 필요한 정보 생성하기
		// 한 화면에 보여줄 행의 갯수, 블록당 페이지번호 수, 현재 페이지 번호, 총 행의 갯수
		Pagination pagination = new Pagination(rows, 5, pageNo, totalRows);
		// 현재 페이지번호에 해당하는 데이터 조회에 필요한 구간 계산하기
		int beginIndex = (pageNo - 1)*rows + 1;
		if (beginIndex == 1) {
			beginIndex = 0;
		}
		int endIndex = rows;
		
		// 조회조건을 만족하는 글 조회하기
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("status", status);
		map2.put("keyword", keyword);
		map2.put("beginIndex", beginIndex);
		map2.put("endIndex", endIndex);
		
		List<Notice> notices = noticeDao.getNotices(map2);
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		returnMap.put("notices", notices);
		returnMap.put("pagination", pagination);
		returnMap.put("totalRows", totalRows);
		
		return returnMap;
	}
}
