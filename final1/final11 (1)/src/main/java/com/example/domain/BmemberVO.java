package com.example.domain;

import java.util.Date;

public class BmemberVO {
	private String bcode;
	private String bname;
	private String bpass;
	private String btel;
	private String bemail;
	private String bbirth;
	private String bgender;
	public String getBcode() {
		return bcode;
	}
	public void setBcode(String bcode) {
		this.bcode = bcode;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBpass() {
		return bpass;
	}
	public void setBpass(String bpass) {
		this.bpass = bpass;
	}
	public String getBtel() {
		return btel;
	}
	public void setBtel(String btel) {
		this.btel = btel;
	}
	public String getBemail() {
		return bemail;
	}
	public void setBemail(String bemail) {
		this.bemail = bemail;
	}
	public String getBbirth() {
		return bbirth;
	}
	public void setBbirth(String bbirth) {
		this.bbirth = bbirth;
	}
	public String getBgender() {
		return bgender;
	}
	public void setBgender(String bgender) {
		this.bgender = bgender;
	}
	@Override
	public String toString() {
		return "BmemberVO [bcode=" + bcode + ", bname=" + bname + ", bpass=" + bpass + ", btel=" + btel + ", bemail="
				+ bemail + ", bbirth=" + bbirth + ", bgender=" + bgender + "]";
	}
	
}
