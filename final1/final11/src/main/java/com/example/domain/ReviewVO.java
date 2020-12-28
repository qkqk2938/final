package com.example.domain;

import java.util.ArrayList;
import java.util.Date;

public class ReviewVO extends GmemberVO {
	private int rcode;
	private String gid;
	private int ccode;
	private String rcontent;
	private Date rdate;
	private int rscope;
	private String rimage;
	private int rn;
	private String gnickname;
	private String gimage;
	private int count; //���ƿ� ��
	private ArrayList<String> images;
	private int good;
	
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	public ArrayList<String> getImages() {
		return images;
	}
	public void setImages(ArrayList<String> images) {
		this.images = images;
	}
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public String getGnickname() {
		return gnickname;
	}
	public void setGnickname(String gnickname) {
		this.gnickname = gnickname;
	}
	public String getGimage() {
		return gimage;
	}
	public void setGimage(String gimage) {
		this.gimage = gimage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getRcode() {
		return rcode;
	}
	public void setRcode(int rcode) {
		this.rcode = rcode;
	}
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
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public int getRscope() {
		return rscope;
	}
	public void setRscope(int rscope) {
		this.rscope = rscope;
	}
	public String getRimage() {
		return rimage;
	}
	public void setRimage(String rimage) {
		this.rimage = rimage;
	}
	@Override
	public String toString() {
		return "ReviewVO [rcode=" + rcode + ", gid=" + gid + ", ccode=" + ccode + ", rcontent=" + rcontent + ", rdate="
				+ rdate + ", rscope=" + rscope + ", rimage=" + rimage + ", rn=" + rn + ", gnickname=" + gnickname
				+ ", gimage=" + gimage + ", count=" + count + ", images=" + images + ", good=" + good + "]";
	}
	
}
