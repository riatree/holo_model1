package org.yolo.holo.vo;

import java.sql.Timestamp;

public class GetDonut {
	private int no, noDounor,noDonut;
	private Timestamp regdate;
	
	public GetDonut() {
		
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

	public int getNoDonut() {
		return noDonut;
	}

	public void setNoDonut(int noDonut) {
		this.noDonut = noDonut;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
