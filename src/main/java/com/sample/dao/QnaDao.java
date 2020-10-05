package com.sample.dao;

import java.util.List;
import java.util.Map;

import com.sample.web.form.AnswerForm;
import com.sample.web.form.QnaForm;
import com.sample.web.view.Qna;
import com.sample.web.view.QnaImage;

public interface QnaDao {
	
    Qna getQnaDetail(int qnaId);
    List<Qna> getAllQnas();
    List<Qna> getQnasByCategory(String category);
    List<Qna> getQnasByUserId(String userId);
    List<QnaImage> getQnaImagesById(int qnaId); 
    
    void insertAnswer(Map<String, Object> map);
    void insertQna(Qna qna);
	int getTotalRowsOfQnaList(Map<String, String> map);
	List<Qna> getQnas(Map<String, Object> map);
	void updateQna(Map<String, Object> map);
	void deleteQna(int qnaId);
	void insertQnaImages(Map<String, String> map);
	void insertNewQnaImages(List<String> images);
	void deleteQnaImages(int qnaId);
	void insertModifyQnaImages(Map<String, Object> map);
	
	/**
	 * 아직 답변되지 않은 qna 숫자
	 * @return
	 */
	int getNoAnswerQnaCnt();
	
}