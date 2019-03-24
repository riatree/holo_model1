<%@page import="org.yolo.holo.vo.Review"%>
<%@page import="org.yolo.holo.dao.ReviewsDAO"%>
<%@page import="org.yolo.holo.vo.PageVO"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="org.yolo.holo.util.PaginateUtil"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int noDounor = Integer.parseInt(request.getParameter("noDounor"));
	int hice = Integer.parseInt(request.getParameter("hice"));

	Review review = new Review();
	review.setNo(no);
	review.setNoDounor(noDounor);
	review.setHice(hice);
	System.out.println("reviewNo : "+review.getNo());
	System.out.println("reviewDounorNo : "+review.getNoDounor());
	System.out.println("hice : "+review.getHice());

	Review list = ReviewsDAO.selectProReviewPic(review);
	
	System.out.println("reviewList no : "+list.getNo());
	System.out.println("reviewList noDounor : "+list.getNoDounor());
	list.setHice(hice);
	System.out.println("reviewList hice : "+list.getHice());
	ObjectMapper om = new ObjectMapper();
	
	String json = om.writeValueAsString(list);
		
%>
<%=json%>