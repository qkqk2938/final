package com.example.domain;

import java.util.ArrayList;

public class CafeVO {
	private int rn;
	private int ccode;
	private String cname;
	private String caddr;
	private String ctel;
	private String cimage="";
	private String mcode;
	private ArrayList<String> images;
	private String favorites;
	private String cmenu;
	private String x;
	private String y;
	private String ccontent;
	private int viewcnt;
	private ArrayList<String> menus;
	public double getDistance() {
		return distance;
	}
	public void setDistance(double distance) {
		this.distance = distance;
	}
	public String getRscope() {
		return rscope;
	}
	public void setRscope(String rscope) {
		this.rscope = rscope;
	}
	private double distance;
	private String rscope;
	
	
	
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public ArrayList<String> getMenus() {
		return menus;
	}
	public void setMenus(ArrayList<String> menus) {
		this.menus = menus;
	}
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public int getCcode() {
		return ccode;
	}
	public void setCcode(int ccode) {
		this.ccode = ccode;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public String getCtel() {
		return ctel;
	}
	public void setCtel(String ctel) {
		this.ctel = ctel;
	}
	public String getCimage() {
		return cimage;
	}
	public void setCimage(String cimage) {
		this.cimage = cimage;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public ArrayList<String> getImages() {
		return images;
	}
	public void setImages(ArrayList<String> images) {
		this.images = images;
	}
	public String getFavorites() {
		return favorites;
	}
	public void setFavorites(String favorites) {
		this.favorites = favorites;
	}
	public String getCmenu() {
		return cmenu;
	}
	public void setCmenu(String cmenu) {
		this.cmenu = cmenu;
	}
	public String getX() {
		return x;
	}
	public void setX(String x) {
		this.x = x;
	}
	public String getY() {
		return y;
	}
	public void setY(String y) {
		this.y = y;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	@Override
	public String toString() {
		return "CafeVO [rn=" + rn + ", ccode=" + ccode + ", cname=" + cname + ", caddr=" + caddr + ", ctel=" + ctel
				+ ", cimage=" + cimage + ", mcode=" + mcode + ", images=" + images + ", favorites=" + favorites
				+ ", cmenu=" + cmenu + ", x=" + x + ", y=" + y + ", ccontent=" + ccontent + ", viewcnt=" + viewcnt
				+ ", menus=" + menus + ", distance=" + distance + ", rscope=" + rscope + "]";
	}

}
	
