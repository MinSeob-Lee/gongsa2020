package com.sample.web.view;

public class QnaImage {
	
	private int id;
	private String imagePath;
	
	public QnaImage() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "QnaImage [id=" + id + ", imagePath=" + imagePath + "]";
	}
	
}
