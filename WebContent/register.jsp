<%@page import="org.yolo.holo.dao.DounorsDAO"%>
<%@page import="org.yolo.holo.vo.Theme"%>
<%@page import="org.yolo.holo.dao.ThemeDAO"%>
<%@page import="org.yolo.holo.vo.Dounor"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	String id = request.getParameter("id");
	String nickname = request.getParameter("nickname");
	String pwd = request.getParameter("pwd");

	String blacklist = request.getParameter("blacklist");
	String gender = request.getParameter("gender");
	
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String date = request.getParameter("date");
	Date birthDate = Date.valueOf(year + "-" + month + "-" + date);
	String emailId = request.getParameter("emailId");
	String domain = request.getParameter("domain");
	String email = emailId + "@" + domain;
	
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1 +"-"+ phone2 +"-"+ phone3;
	
	String[] themes = request.getParameterValues("theme");
	
	String name = request.getParameter("name");
	String profile = request.getParameter("profile");
	
	if(profile.length() < 1){
		profile = "profile.png";
	}

	Dounor dounor = new Dounor(id, nickname, pwd, gender, birthDate, email, phone, name, profile, blacklist);
	
	//System.out.println(dounor.getNo());

	int result =  DounorsDAO.insert(dounor);
	
	System.out.println(dounor.getNo());
	System.out.println("result : " + result);
	
	if(result==1) {
		for(String themeCode : themes){
			Theme theme = new Theme(dounor.getNo(),themeCode);
			ThemeDAO.insert(theme);
			System.out.println(themeCode);
		}//for end	
	}//if end
	
	response.sendRedirect("index.jsp");	
	
%>
