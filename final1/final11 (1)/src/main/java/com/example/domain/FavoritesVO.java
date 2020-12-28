package com.example.domain;

public class FavoritesVO {
	private String gid;
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}
	private int ccode;
	@Override
	public String toString() {
		return "FavoritesVO [gid=" + gid + ", ccode=" + ccode + "]";
	}
	
	
	
}
