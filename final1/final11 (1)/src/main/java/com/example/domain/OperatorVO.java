package com.example.domain;

public class OperatorVO {
	private String image;
	private String bcode;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getBcode() {
		return bcode;
	}
	public void setBcode(String bcode) {
		this.bcode = bcode;
	}
	@Override
	public String toString() {
		return "Operator [image=" + image + ", bcode=" + bcode + "]";
	}
	
}
