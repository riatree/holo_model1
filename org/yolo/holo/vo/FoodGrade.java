package org.yolo.holo.vo;

import java.sql.Timestamp;

public class FoodGrade {
	private int no,noDounor,noSpotHice,noTogether;
	private String flavor,service,clean,feeling,cheap,togetherGood;
	private Timestamp regdate;
	
	public FoodGrade() {
		
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

	public int getNoSpotHice() {
		return noSpotHice;
	}

	public void setNoSpotHice(int noSpotHice) {
		this.noSpotHice = noSpotHice;
	}

	public int getNoTogether() {
		return noTogether;
	}

	public void setNoTogether(int noTogether) {
		this.noTogether = noTogether;
	}

	public String getFlavor() {
		return flavor;
	}

	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getClean() {
		return clean;
	}

	public void setClean(String clean) {
		this.clean = clean;
	}

	public String getFeeling() {
		return feeling;
	}

	public void setFeeling(String feeling) {
		this.feeling = feeling;
	}

	public String getCheap() {
		return cheap;
	}

	public void setCheap(String cheap) {
		this.cheap = cheap;
	}

	public String getTogetherGood() {
		return togetherGood;
	}

	public void setTogetherGood(String togetherGood) {
		this.togetherGood = togetherGood;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
