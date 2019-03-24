package org.yolo.holo.vo;

import java.sql.Timestamp;

public class DounorSave {
	private int no,contentsNo,noDounor,spotNo,price;
	private String contentsType,type,spotName,picname,nickname,profile;
	private Timestamp regdate;
	
	public DounorSave() {
		
	}
	
	

	public String getProfile() {
		return profile;
	}



	public void setProfile(String profile) {
		this.profile = profile;
	}



	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public String getPicname() {
		return picname;
	}



	public void setPicname(String picname) {
		this.picname = picname;
	}



	public int getSpotNo() {
		return spotNo;
	}



	public void setSpotNo(int spotNo) {
		this.spotNo = spotNo;
	}



	public String getSpotName() {
		return spotName;
	}



	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getContentsNo() {
		return contentsNo;
	}

	public void setContentsNo(int contentsNo) {
		this.contentsNo = contentsNo;
	}

	public int getNoDounor() {
		return noDounor;
	}

	public void setNoDounor(int noDounor) {
		this.noDounor = noDounor;
	}

	public String getContentsType() {
		return contentsType;
	}

	public void setContentsType(String contentsType) {
		this.contentsType = contentsType;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
