<%@page import="org.yolo.holo.dao.HLogsCommentsDAO"%>
<%@page import="org.yolo.holo.vo.HLogComment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String noHLogStr = request.getParameter("noHLog");
	String noDounorStr = request.getParameter("noDounor");
	String contents = request.getParameter("contents");
	
	int noHLog = Integer.parseInt(noHLogStr);
	int noDounor = Integer.parseInt(noDounorStr);
	
	HLogComment hLogComment = new HLogComment(noDounor,noHLog,contents);
	
	
	int result = HLogsCommentsDAO.insert(hLogComment);
	
%>
{"result":<%=result==1%>}