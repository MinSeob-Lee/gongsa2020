package com.sample.web.form;

public class MateSearchForm {

	//해당 퍼포먼스 아이디
	private int pid;
	//모집 인원수
	private int groupsize;
	//카테고리 아이디 넘버
	private int categoryId;
	//풀방여부 , 모집 중 표시
	private String isFull;
	//빈방여부
	private String isEmpty;
	//페이지 넘버
	private int pageNo;
	private int beginIndex;
	private int endIndex;

	public MateSearchForm() {
	}

	public int getPid() {
		return pid;
	}

	public int getBeginIndex() {
		return beginIndex;
	}

	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}


	public int getGroupsize() {
		return groupsize;
	}

	public void setGroupsize(int groupsize) {
		this.groupsize = groupsize;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public String getIsFull() {
		return isFull;
	}

	public void setIsFull(String isFull) {
		this.isFull = isFull;
	}

	public String getIsEmpty() {
		return isEmpty;
	}

	public void setIsEmpty(String isEmpty) {
		this.isEmpty = isEmpty;
	}

	@Override
	public String toString() {
		return "MateSearchForm [pid=" + pid + ", groupsize=" + groupsize + ", categoryId=" + categoryId + ", isFull="
				+ isFull + ", isEmpty=" + isEmpty + ", pageNo=" + pageNo + ", beginIndex=" + beginIndex + ", endIndex="
				+ endIndex + "]";
	}



	
	
	
}
