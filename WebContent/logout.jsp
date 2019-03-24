<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session.invalidate();

	String url = request.getHeader("referer");
	
	response.sendRedirect(url);
%>