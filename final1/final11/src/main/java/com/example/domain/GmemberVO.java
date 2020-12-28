package com.example.domain;


public class GmemberVO {
	private String gid;
	private String gname;
	private String gpass;
	private String gimage;
	private String gtel;
	private String gbirth;
	private String gnickname;
	private String gaddr;
	private String gemail;
	private String ggender;
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGpass() {
		return gpass;
	}
	public void setGpass(String gpass) {
		this.gpass = gpass;
	}
	public String getGimage() {
		return gimage;
	}
	public void setGimage(String gimage) {
		this.gimage = gimage;
	}
	public String getGtel() {
		return gtel;
	}
	public void setGtel(String gtel) {
		this.gtel = gtel;
	}
	public String getGbirth() {
		return gbirth;
	}
	public void setGbirth(String gbirth) {
		this.gbirth = gbirth;
	}
	public String getGnickname() {
		return gnickname;
	}
	public void setGnickname(String gnickname) {
		this.gnickname = gnickname;
	}
	public String getGaddr() {
		return gaddr;
	}
	public void setGaddr(String gaddr) {
		this.gaddr = gaddr;
	}
	public String getGemail() {
		return gemail;
	}
	public void setGemail(String gemail) {
		this.gemail = gemail;
	}
	public String getGgender() {
		return ggender;
	}
	public void setGgender(String ggender) {
		this.ggender = ggender;
	}
	@Override
	public String toString() {
		return "GmemberVO [gid=" + gid + ", gname=" + gname + ", gpass=" + gpass + ", gimage=" + gimage + ", gtel=" + gtel
				+ ", gbirth=" + gbirth + ", gnickname=" + gnickname + ", gaddr=" + gaddr + ", gemail=" + gemail
				+ ", ggender=" + ggender + "]";
	}
	
}
