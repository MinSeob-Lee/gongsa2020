package com.sample.web.view;

public class Image {
	
	private String category;
	private String imagePath;
	
	public Image() {
		// TODO Auto-generated constructor stub
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImagePath() {
		
		imagePath = this.imagePath.substring(13);
		
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "Images [category=" + category + ", imagePath=" + imagePath + "]";
	}
	
}
