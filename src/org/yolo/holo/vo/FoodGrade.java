package org.yolo.holo.vo;

import java.sql.Timestamp;

public class FoodGrade {
	private int no,noDounor,noSpot,hice,noTogether,spotNo;
	private String flavor,service,clean,feeling,cheap,togetherGood,spotName;
	private Timestamp regdate;
	
	// 추가
	private int noDounorCount,cleanCount,flavorCount,serviceCount,feelingCount,togetherGoodCount,cheapCount;
	private double hiceCount;
	
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

	public int getNoSpot() {
		return noSpot;
	}

	public void setNoSpot(int noSpot) {
		this.noSpot = noSpot;
	}

	public int getHice() {
		return hice;
	}

	public void setHice(int hice) {
		this.hice = hice;
	}

	public int getNoTogether() {
		return noTogether;
	}

	public void setNoTogether(int noTogether) {
		this.noTogether = noTogether;
	}

	public int getSpotNo() {
		return spotNo;
	}

	public void setSpotNo(int spotNo) {
		this.spotNo = spotNo;
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

	public String getSpotName() {
		return spotName;
	}

	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getNoDounorCount() {
		return noDounorCount;
	}

	public void setNoDounorCount(int noDounorCount) {
		this.noDounorCount = noDounorCount;
	}

	public int getCleanCount() {
		return cleanCount;
	}

	public void setCleanCount(int cleanCount) {
		this.cleanCount = cleanCount;
	}

	public int getFlavorCount() {
		return flavorCount;
	}

	public void setFlavorCount(int flavorCount) {
		this.flavorCount = flavorCount;
	}

	public int getServiceCount() {
		return serviceCount;
	}

	public void setServiceCount(int serviceCount) {
		this.serviceCount = serviceCount;
	}

	public int getFeelingCount() {
		return feelingCount;
	}

	public void setFeelingCount(int feelingCount) {
		this.feelingCount = feelingCount;
	}

	public int getTogetherGoodCount() {
		return togetherGoodCount;
	}

	public void setTogetherGoodCount(int togetherGoodCount) {
		this.togetherGoodCount = togetherGoodCount;
	}

	public int getCheapCount() {
		return cheapCount;
	}

	public void setCheapCount(int cheapCount) {
		this.cheapCount = cheapCount;
	}

	public double getHiceCount() {
		return hiceCount;
	}

	public void setHiceCount(double hiceCount) {
		this.hiceCount = hiceCount;
	}
	
	
	
}
