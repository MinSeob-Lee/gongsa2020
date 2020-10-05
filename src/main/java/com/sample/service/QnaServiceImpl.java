package com.sample.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mariadb.jdbc.internal.io.socket.SocketUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.QnaDao;
import com.sample.web.form.AnswerForm;
import com.sample.web.form.QnaForm;
import com.sample.web.view.Pagination;
import com.sample.web.view.Qna;
import com.sample.web.view.QnaImage;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	QnaDao qnaDao;

	@Override
	public void insertQna(Qna qna) {
	}

	@Override
	public List<Qna> getAllQnas() {
		return null;
	}

	@Override
	public List<Qna> getQnasByCategory(String category) {
		return null;
	}

	@Override
	public List<Qna> getQnasByUserId(String userId) {
		return qnaDao.getQnasByUserId(userId);
	}
	
	@Override
	public Qna getQnaDetail(int qnaId) {
		
		return qnaDao.getQnaDetail(qnaId);
		
	}
	
	@Override
	public void updateQna(QnaForm qnaForm) {

		Map<String, Object> map = new HashMap<>();
		
		map.put("qnaForm", qnaForm);
		
		qnaDao.updateQna(map);
	}
	
	@Override
	public void updateQnaImages(Map<String, Object> map) {
		
		int qnaId = (Integer)map.get("qnaId");
		
		qnaDao.deleteQnaImages(qnaId);
		
		List<String> images = (List<String>)map.get("images");

		if (images.size() != 0) {
			qnaDao.insertModifyQnaImages(map);
		}
	}
	
	@Override
	public void removeQna(int qnaId) {
		
		qnaDao.deleteQna(qnaId);
		
	}
	
	
	@Override
	public Map<String, Object> getQnAForPaging(int pageNo, int rows, String status, String Keyword) {
		
		// 검색조건을 담을 맵을 생성한다.
		Map<String, String> map = new HashMap<>();
		map.put("status", status);
		map.put("keyword", Keyword);
		
		// 검색조건을 만족하는 qna갯수 조회하기
		int totalRows= qnaDao.getTotalRowsOfQnaList(map);
		
		// 페이지 네비게이션에 필요한 정보 생성하기
		// 한 화면에 보여질 갯수, 블록당 페이지번호 수, 현재 페이지 번호, 총 행의 갯수
		Pagination pagination = new Pagination(rows, 5, pageNo, totalRows);
		// 현재 페이지번호에 해당하는 데이터 조회에 필요한 구간 계산하기
		int beginIndex = (pageNo - 1) * rows + 1;
		
		if (beginIndex == 1) {
			beginIndex = 0;
		}
		if ((beginIndex-1) % 10 == 0) {
			beginIndex -= 1;
		}
		int endIndex = rows;
		
		// 조회조건을 만족하는 글 조회하기
		Map<String, Object> map2 = new HashMap<>();
		map2.put("status", status);
		map2.put("keyword", Keyword);
		map2.put("beginIndex", beginIndex);
		map2.put("endIndex", endIndex);

		List<Qna> qnas = qnaDao.getQnas(map2);
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("qnas", qnas);
		returnMap.put("pagination", pagination);
		returnMap.put("totalRows", totalRows);
		
		return returnMap;
	}
	
	@Override
	public void addNewQna(Qna qna) {
		qnaDao.insertQna(qna);
	}
	
	@Override
	public void addQnaImages(List<String> images) {
		
		if (images.size() != 0) {
			qnaDao.insertNewQnaImages(images);
		}
		
	}
	
	@Override
	public void addNewAnswer(AnswerForm answerForm) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("answerForm", answerForm);
		
		qnaDao.insertAnswer(map);
		
	}
	
	@Override
	public void modifyAnswer(AnswerForm answerForm) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("answerForm", answerForm);
		
		qnaDao.insertAnswer(map);
		
	}
	
	@Override
	public void addNewImage(Map<String, String> map) {
		
		qnaDao.insertQnaImages(map);
		
	}
	
	public int getNoAnswerQnaCnt() {
		return qnaDao.getNoAnswerQnaCnt();
	}
	
	@Override
	public List<QnaImage> getIamgesById(int qnaId) {
		return qnaDao.getQnaImagesById(qnaId);
	}
	

}
