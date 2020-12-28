package com.example.domain;



import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ReviewCommentVO {
	private int rccode;
	private String rcode;
	private String gid;
	private String rccontent;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="Asia/Seoul")
	private Date rcdate;
	
	public int getRccode() {
		return rccode;
	}
	public void setRccode(int rccode) {
		this.rccode = rccode;
	}
	public String getRcode() {
		return rcode;
	}
	public void setRcode(String rcode) {
		this.rcode = rcode;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getRccontent() {
		return rccontent;
	}
	public void setRccontent(String rccontent) {
		this.rccontent = rccontent;
	}
	public Date getRcdate() {
		return rcdate;
	}
	public void setRcdate(Date rcdate) {
		this.rcdate = rcdate;
	}
	@Override
	public String toString() {
		return "ReviewCommentVO [rccode=" + rccode + ", rcode=" + rcode + ", gid=" + gid + ", rccontent=" + rccontent
				+ ", rcdate=" + rcdate + "]";
	}
	

}