package org.yolo.holo.vo;

public class PageVO {
	
	private int start, end, noHLog;
	
	public PageVO() {
		// TODO Auto-generated constructor stub
	}//
	
	public PageVO(int pageNO, int numPage) {
		end = pageNO*numPage;
		start = end-(numPage-1);
	}//
	
	public PageVO(int pageNo, int numPage, int no) {
		
		end = pageNo * numPage;
		start = end - (numPage - 1);
		noHLog = no;
	}
	
	
	
	public int getNoHLog() {
		return noHLog;
	}

	public void setNoHLog(int noHLog) {
		this.noHLog = noHLog;
	}

	//setter, getter 생성
	public final int getStart() {
		return start;
	}

	public final void setStart(int start) {
		this.start = start;
	}

	public final int getEnd() {
		return end;
	}

	public final void setEnd(int end) {
		this.end = end;
	}
	//setter, getter 생성완료
	

}
