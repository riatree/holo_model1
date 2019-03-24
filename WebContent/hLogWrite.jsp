<%@page import="org.yolo.holo.vo.ContentsTag"%>
<%@page import="org.yolo.holo.dao.ContentsTagsDAO"%>
<%@page import="org.apache.el.lang.ELSupport"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.yolo.holo.dao.HLogsDAO"%>
<%@page import="org.yolo.holo.vo.HLog"%>
<%@page import="java.sql.Date"%>
<%@page import="org.yolo.holo.vo.Dounor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Dounor loginDounor = (Dounor) session.getAttribute("loginDounor");

	int dounorNo = loginDounor.getNo();
	String profile = loginDounor.getProfile();
	String nickname = loginDounor.getNickname();

	String title = request.getParameter("title");
	String goDateStr = request.getParameter("goDate");
	String comeDateStr = request.getParameter("comeDate");

	String open = request.getParameter("open");
	String contents = request.getParameter("contents");
	String titlePic = request.getParameter("titlePic");
	String colorCode = request.getParameter("colorCode");

	if (titlePic.contains(".")) {
		titlePic = request.getParameter("titlePic");
	} else if (colorCode.contains("#")) {
		titlePic = request.getParameter("colorCode");
	} else {
		titlePic = "#EEEEEE";
	}

	String tripStyle = request.getParameter("tripStyle");
	String hiceStr = request.getParameter("hice");

	Date goDate = Date.valueOf(goDateStr);
	Date comeDate = Date.valueOf(comeDateStr);
	int hice = Integer.parseInt(hiceStr);

	HLog hLog = new HLog(title, goDate, comeDate, open, contents, titlePic, tripStyle, hice, dounorNo, profile, nickname);
	
	
	String[] themes = request.getParameterValues("theme");
	String contentsType = request.getParameter("contentsType");
	
	
/* 	 //파라미터 값 확인
	System.out.println(hLog.getTitle());
	System.out.println(hLog.getGoDate());
	System.out.println(hLog.getComeDate());
	System.out.println(hLog.getOpen());
	System.out.println(hLog.getContents());
	System.out.println(hLog.getTitlePic());
	System.out.println(hLog.getTripStyle());
	System.out.println(hLog.getHice());
	System.out.println(hLog.getDounorNo());
	System.out.println(hLog.getProfile());
	System.out.println(hLog.getNickname());
	System.out.println(contentsType);
	//System.out.println(themes);
	//System.out.println(themes[0]);
	//System.out.println(themes[1]);
	//System.out.println(themes[2]);
 */			
	int result = HLogsDAO.insert(hLog);
	
	/*
	System.out.println("HLog 게시글 등록 : " + result);

	if(result == 1){
		for(String theme :themes){
			int noTag = Integer.parseInt(theme);
			ContentsTag contentsTag = new ContentsTag(noTag, hLog.getNo(), contentsType);
			ContentsTagsDAO.insertToHLog(contentsTag);
		}//for() end
	}//if() end
	*/
	 
	
	response.sendRedirect("hlog.jsp?no=" + hLog.getNo());
%>
