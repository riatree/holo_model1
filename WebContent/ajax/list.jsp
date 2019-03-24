<%@page import="org.yolo.holo.dao.LocationsDAO"%>
<%@page import="org.yolo.holo.vo.Location"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="org.yolo.holo.vo.Spot"%>
<%@page import="org.yolo.holo.dao.SpotsDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	name = "%" + name + "%";
	
	//List<Location> list = LocationsDAO.selectKeyword(name);
 	
 	
 	ObjectMapper om = new ObjectMapper();
 	
 	//String json = om.writeValueAsString(list);
 	
%>
