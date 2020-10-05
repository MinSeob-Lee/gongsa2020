package com.sample.web.view;

public class UserIntrest {
	private String id;
	private String interestTag;
	private String interestCategory;
	public UserIntrest() {}

	public UserIntrest(String id, String interestTag, String interestCategory) {
		this.id = id;
		this.interestTag = interestTag;
		this.interestCategory = interestCategory;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getInterestTag() {
		return interestTag;
	}
	public void setInterestTag(String interestTag) {
		this.interestTag = interestTag;
	}
	public String getInterestCategory() {
		return interestCategory;
	}
	public void setInterestCategory(String interestCategory) {
		this.interestCategory = interestCategory;
	}
	
	
}
