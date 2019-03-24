package org.yolo.holo.vo;

import java.sql.Timestamp;

public class TourGrade {
	
	// togetherGood
	private int no,noDounor,noSpot,hice,noTogether,spotNo;	
	private String photozon,facility,traffic,watch,around,togetherGood,spotName;
	private Timestamp regdate;
	
	// 추가
	private int noDounorCount,photozonCount,facilityCount,trafficCount,watchCount,togetherGoodCount,aroundCount;
	private double hiceCount;
	
	
	
	public String getTogetherGood() {
		return togetherGood;
	}

	public void setTogetherGood(String togetherGood) {
		this.togetherGood = togetherGood;
	}

	public int getNoDounorCount() {
		return noDounorCount;
	}

	public void setNoDounorCount(int noDounorCount) {
		this.noDounorCount = noDounorCount;
	}

	public int getPhotozonCount() {
		return photozonCount;
	}

	public void setPhotozonCount(int photozonCount) {
		this.photozonCount = photozonCount;
	}

	public int getFacilityCount() {
		return facilityCount;
	}

	public void setFacilityCount(int facilityCount) {
		this.facilityCount = facilityCount;
	}

	public int getTrafficCount() {
		return trafficCount;
	}

	public void setTrafficCount(int trafficCount) {
		this.trafficCount = trafficCount;
	}

	public int getWatchCount() {
		return watchCount;
	}

	public void setWatchCount(int watchCount) {
		this.watchCount = watchCount;
	}

	public int getTogetherGoodCount() {
		return togetherGoodCount;
	}

	public void setTogetherGoodCount(int togetherGoodCount) {
		this.togetherGoodCount = togetherGoodCount;
	}

	public int getAroundCount() {
		return aroundCount;
	}

	public void setAroundCount(int aroundCount) {
		this.aroundCount = aroundCount;
	}

	public double getHiceCount() {
		return hiceCount;
	}

	public void setHiceCount(double hiceCount) {
		this.hiceCount = hiceCount;
	}

	public TourGrade() {
		
	}
	
	int getSpotNo() {
		return spotNo;
	}

	void setSpotNo(int spotNo) {
		this.spotNo = spotNo;
	}

	String getSpotName() {
		return spotName;
	}

	void setSpotName(String spotName) {
		this.spotName = spotName;
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

	public String getPhotozon() {
		return photozon;
	}

	public void setPhotozon(String photozon) {
		this.photozon = photozon;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public String getTraffic() {
		return traffic;
	}

	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}

	public String getWatch() {
		return watch;
	}

	public void setWatch(String watch) {
		this.watch = watch;
	}

	public String getAround() {
		return around;
	}

	public void setAround(String around) {
		this.around = around;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	
}
