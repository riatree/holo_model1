<%@page import="org.yolo.holo.dao.DounorsDAO"%>
<%@page import="org.yolo.holo.dao.DonutsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nickname = request.getParameter("nickname");
	
	int cnt = DounorsDAO.selectNickname(nickname);

%>
{"count" : <%=cnt %>}