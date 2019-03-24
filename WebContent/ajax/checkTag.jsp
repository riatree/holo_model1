<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="org.yolo.holo.dao.TagsDAO"%>
<%@page import="org.yolo.holo.vo.Tag"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	name = "%" + name + "%";
	List<Tag> list = TagsDAO.selectKeyword(name);
	ObjectMapper om = new ObjectMapper();
	String json = om.writeValueAsString(list);
%>
<%=json%>