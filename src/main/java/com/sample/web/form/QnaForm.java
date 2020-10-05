package com.sample.web.form;

import java.util.List;

public class QnaForm {
	
	private String qnaCategory;
	private String qnaTitle;
	private String qnaContent;
	private boolean qnaOpened;
	private String qnaId;
	
	public QnaForm() {
		// TODO Auto-generated constructor stub
	}
	
	public String getQnaId() {
		return qnaId;
	}

	public void setQnaId(String qnaId) {
		this.qnaId = qnaId;
	}

	public String getQnaCategory() {
		return qnaCategory;
	}

	public void setQnaCategory(String qnaCategory) {
		this.qnaCategory = qnaCategory;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public boolean isQnaOpened() {
		return qnaOpened;
	}

	public void setQnaOpened(boolean qnaOpened) {
		this.qnaOpened = qnaOpened;
	}
	
	@Override
	public String toString() {
		return "QnaForm [qnaCategory=" + qnaCategory + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent
				+ ", qnaOpened=" + qnaOpened + ", qnaId=" + qnaId + "]";
	}

}
