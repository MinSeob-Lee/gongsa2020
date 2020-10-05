package com.sample.web.view;

public class MateTag {
	private int performanceId;
	private int mateId;
	private String tagName;
	
	public MateTag() {
	}

	public int getMateId() {
		return mateId;
	}

	public void setMateId(int mateId) {
		this.mateId = mateId;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public int getPerformanceId() {
		return performanceId;
	}

	public void setPerformanceId(int performanceId) {
		this.performanceId = performanceId;
	}

	@Override
	public String toString() {
		return "MateTag [performanceId=" + performanceId + ", mateId=" + mateId + ", tagName=" + tagName + "]";
	}

	
}
