package com.example.domain;

public class GoodVO {
	private String gid;
	private int rcode;
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public int getRcode() {
		return rcode;
	}
	public void setRcode(int rcode) {
		this.rcode = rcode;
	}
	@Override
	public String toString() {
		return "GoodVO [gid=" + gid + ", rcode=" + rcode + "]";
	}
}
