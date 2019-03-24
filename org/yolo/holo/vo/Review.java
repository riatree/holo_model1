package org.yolo.holo.vo;

import oracle.sql.TIMESTAMP;

public class Review {
	private int no,noSpot,noDounor,noTogether;
	private String contents,picRoute;
	private TIMESTAMP regdate;
	
	public Review() {
		
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getNoSpot() {
		return noSpot;
	}

	public void setNoSpot(int noSpot) {
		this.noSpot = noSpot;
	}

	public int getNoDounor() {
		return noDounor;
	}

	public void setNoDounor(int noDounor) {
		this.noDounor = noDounor;
	}

	public int getNoTogether() {
		return noTogether;
	}

	public void setNoTogether(int noTogether) {
		this.noTogether = noTogether;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getPicRoute() {
		return picRoute;
	}

	public void setPicRoute(String picRoute) {
		this.picRoute = picRoute;
	}

	public TIMESTAMP getRegdate() {
		return regdate;
	}

	public void setRegdate(TIMESTAMP regdate) {
		this.regdate = regdate;
	}
	
	
}
	
	
