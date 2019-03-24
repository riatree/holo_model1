package org.yolo.holo.vo;

import java.sql.Timestamp;

public class TourGrade {
	
	private int no,noDounor,noSpot,hice,noTogether;
	private String photozon,facility,traffic,watch,around;
	private Timestamp regdate;
	
	public TourGrade() {
		
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
