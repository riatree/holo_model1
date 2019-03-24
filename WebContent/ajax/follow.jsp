<%@page import="org.yolo.holo.dao.FollowDAO"%>
<%@page import="org.yolo.holo.vo.Follow"%>
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
	int noFollower = Integer.parseInt(request.getParameter("followerNo"));
	int noFollowing = Integer.parseInt(request.getParameter("followingNo"));
	String btnColor = request.getParameter("color");
	
	System.out.println("followBtn noFollower : "+ noFollower);
	System.out.println("followBtn noFollowing : "+ noFollowing);
	System.out.println("followBtn btnColor : "+ btnColor);
	
	Follow follow = new Follow();
	follow.setNoFollower(noFollower);
	follow.setNoFollowing(noFollowing);
	System.out.println("follow setNoFollower : "+ noFollower);
	System.out.println("follow setNoFollowing : "+ noFollowing);
	
	int result = 0;
	String value= null;
	
	int flag = FollowDAO.selectFollowingNow(follow);
	System.out.println("팔로우 flag : "+ flag);

	if(flag == 1){
		result = FollowDAO.delete(follow);
		System.out.println("삭제 완료");
		value="delete";
	}else{
		result = FollowDAO.insert(follow);
		System.out.println("입력 완료");
		value="insert";
	}
	
	System.out.println("followBtn result : "+ result);
	
	ObjectMapper om = new ObjectMapper();
	
	value = om.writeValueAsString(value);
		
%>