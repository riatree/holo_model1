package org.yolo.holo.vo;

import java.sql.Timestamp;

public class Theme {
	private int no,noDounor;
	private String themeCode;
	private Timestamp regdate;

	public Theme() {
		
	}
	
	public Theme(int noDounor, String themeCode) {
		super();
		this.noDounor = noDounor;
		this.themeCode = themeCode;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getNoDounor() {
		return noDounor;
	}

	public void setNoDounor(int noDounor) {
		this.noDounor = noDounor;
	}


	public String getThemeCode() {
		return themeCode;
	}

	public void setThemeCode(String themeCode) {
		this.themeCode = themeCode;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
