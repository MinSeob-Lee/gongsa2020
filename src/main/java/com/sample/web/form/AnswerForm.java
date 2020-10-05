package com.sample.web.form;

public class AnswerForm {
	
	private String qnaId;
	private String answerTitle;
	private String answerContent;
	private String adminId;
	
	public AnswerForm() {
		// TODO Auto-generated constructor stub
	}

	public String getQnaId() {
		return qnaId;
	}

	public void setQnaId(String qnaId) {
		this.qnaId = qnaId;
	}

	public String getAnswerTitle() {
		return answerTitle;
	}
	public void setAnswerTitle(String answerTitle) {
		this.answerTitle = answerTitle;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	
	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	@Override
	public String toString() {
		return "AnswerForm [qnaId=" + qnaId + ", answerTitle=" + answerTitle + ", answerContent=" + answerContent + "]";
	}
	
}
