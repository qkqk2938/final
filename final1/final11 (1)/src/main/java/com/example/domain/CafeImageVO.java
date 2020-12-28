package com.example.domain;

public class CafeImageVO {
	private String image;
	private int ccode;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}
	@Override
	public String toString() {
		return "CafeImageVO [image=" + image + ", ccode=" + ccode + "]";
	}
	
	
}
