package com.example.domain;

public class McategoryVO {
	private String mcode;
	private String mname;
	private String lcode;
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLcode() {
		return lcode;
	}
	public void setLcode(String lcode) {
		this.lcode = lcode;
	}
	@Override
	public String toString() {
		return "McategoryVO [mcode=" + mcode + ", mname=" + mname + ", lcode=" + lcode + "]";
	}
	
}
