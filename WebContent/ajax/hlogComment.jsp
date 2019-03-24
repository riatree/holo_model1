<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="org.yolo.holo.util.PaginateUtil"%>
<%@page import="org.yolo.holo.dao.HLogsCommentsDAO"%>
<%@page import="org.yolo.holo.vo.HLogComment"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.yolo.holo.vo.PageVO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pageNoStr = request.getParameter("pageNo");
	String noStr = request.getParameter("no");
	
	int pageNo = 1, no = 1;
	if(pageNoStr != null){
		pageNo = Integer.parseInt(pageNoStr);
	}//if end
	if(noStr != null){
		no = Integer.parseInt(noStr);
	}//if end
	
	int numPage = 5;
	PageVO pageVO = new PageVO(pageNo, numPage, no);
	
	Map<String,Object> map = new HashMap();
	
	List<HLogComment> list = HLogsCommentsDAO.selectList(pageVO);
	
	int total = HLogsCommentsDAO.selectTotal(no);
	
	int numBlock = 5;
	String url = "/hlog.jsp?no="+no;
	String param = "page=";
	String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url,param);
	
	map.put("list", list);
	map.put("paginate",paginate);
	map.put("total",total);
	
	ObjectMapper om = new ObjectMapper();
	String json = om.writeValueAsString(map);
	//System.out.println(json);
%>
<%=json%>