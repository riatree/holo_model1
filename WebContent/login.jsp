<%@page import="org.yolo.holo.dao.DounorsDAO"%>
<%@page import="org.yolo.holo.vo.Dounor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 파라미터 : id, password
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	Dounor dounor = new Dounor(id, pwd);
	
	Dounor loginDounor = DounorsDAO.selectLogin(dounor);
	
	session.setAttribute("loginDounor", loginDounor);
	
	String url = request.getHeader("referer");
	
	response.sendRedirect(url);
%>
<% System.out.println(id); %>
<% System.out.println(pwd); %>