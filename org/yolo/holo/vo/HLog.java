package org.yolo.holo.vo;

import java.sql.Clob;
import java.sql.Date;
import java.sql.Timestamp;

public class HLog {
	private int no,hice;
	private String title,open,titlePic,tripStyle, contents;
	private Date goDate,comeDate;
	private Timestamp regdate;
	
	public HLog() {
		
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getHice() {
		return hice;
	}

	public void setHice(int hice) {
		this.hice = hice;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getTitlePic() {
		return titlePic;
	}

	public void setTitlePic(String titlePic) {
		this.titlePic = titlePic;
	}

	public String getTripStyle() {
		return tripStyle;
	}

	public void setTripStyle(String tripStyle) {
		this.tripStyle = tripStyle;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getGoDate() {
		return goDate;
	}

	public void setGoDate(Date goDate) {
		this.goDate = goDate;
	}

	public Date getComeDate() {
		return comeDate;
	}

	public void setComeDate(Date comeDate) {
		this.comeDate = comeDate;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
