package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.QnaDao;
import com.sample.web.view.Qna;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	QnaDao qnaDao;
	
	@Override
	public void insertQna(Qna qna) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateQna(Qna qna) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Qna getQnaDetail(int qnaId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Qna> getAllQnas() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Qna> getQnasByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Qna> getQnasByUserId(String userId) {
		
		return qnaDao.getQnasByUserId(userId);
	}

}
