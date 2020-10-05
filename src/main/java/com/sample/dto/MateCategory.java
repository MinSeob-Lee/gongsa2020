package com.sample.dto;

public class MateCategory {

	private int id;
	private String category;
	
	public MateCategory() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "MateCategory [id=" + id + ", category=" + category + "]";
	}
	
	
}
