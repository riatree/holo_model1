package org.yolo.holo.vo;

import java.sql.Timestamp;

public class Siren {

	private int no,noDounor,noCriminal;
	private String type,choiceReason,reason;
	private Timestamp regdate;
	
	public Siren() {
		
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

	public int getNoCriminal() {
		return noCriminal;
	}

	public void setNoCriminal(int noCriminal) {
		this.noCriminal = noCriminal;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getChoiceReason() {
		return choiceReason;
	}

	public void setChoiceReason(String choiceReason) {
		this.choiceReason = choiceReason;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	
	
}
