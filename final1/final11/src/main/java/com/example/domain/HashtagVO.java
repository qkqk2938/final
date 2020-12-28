package com.example.domain;

public class HashtagVO {

		private String tag;
		private int ccode;
		private String himage;
		public String getHimage() {
			return himage;
		}
		public void setHimage(String himage) {
			this.himage = himage;
		}
		public String getTag() {
			return tag;
		}
		public void setTag(String tag) {
			this.tag = tag;
		}
		public int getCcode() {
			return ccode;
		}
		public void setCcode(int ccode) {
			this.ccode = ccode;
		}
		@Override
		public String toString() {
			return "HashtagVO [tag=" + tag + ", ccode=" + ccode + "]";
		}

		
}
