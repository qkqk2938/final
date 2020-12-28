package com.example.domain;

public class ReviewImageVO {
	private int rcode;
	private String image;
	
	public int getRcode() {
		return rcode;
	}
	public void setRcode(int rcode) {
		this.rcode = rcode;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public String toString() {
		return "ReviewImageVO [rcode=" + rcode + ", image=" + image + "]";
	}
}