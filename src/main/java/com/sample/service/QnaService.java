package com.sample.service;

import java.util.List;
import java.util.Map;

import com.sample.web.form.AnswerForm;
import com.sample.web.form.QnaForm;
import com.sample.web.view.Qna;
import com.sample.web.view.QnaImage;

public interface QnaService {
	
	void insertQna(Qna qna);
    Qna getQnaDetail(int qnaId);
    List<Qna> getAllQnas();
    List<Qna> getQnasByCategory(String category);
    List<Qna> getQnasByUserId(String userId);
    List<QnaImage> getIamgesById(int qnaId);
    
	
	// 페이징처리의 조건을 만족한 목록들을 반환한다.
	Map<String, Object> getQnAForPaging(int pageNo, int rows, String nowStatus, String searchKeyword);
	void addNewQna(Qna qna);
	void updateQna(QnaForm qnaForm);
	void addNewAnswer(AnswerForm answerForm);
	void modifyAnswer(AnswerForm answerForm);
	void removeQna(int qnaId);
	void addNewImage(Map<String, String> map);
	void addQnaImages(List<String> images);
    
	/**
	 * 아직 답변도지 않은 qna count
	 * @return
	 */
	int getNoAnswerQnaCnt();
	void updateQnaImages(Map<String, Object> map);
	
}
