package com.example.domain;

public class LcategoryVO {
	private String lcode;
	private String lname;
	public String getLcode() {
		return lcode;
	}
	public void setLcode(String lcode) {
		this.lcode = lcode;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	@Override
	public String toString() {
		return "LcategoryVO [lcode=" + lcode + ", lname=" + lname + "]";
	}
	
	

}
