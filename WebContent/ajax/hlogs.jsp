<%@page import="org.yolo.holo.vo.PageVO"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="org.yolo.holo.util.PaginateUtil"%>
<%@page import="org.yolo.holo.dao.HLogsDAO"%>
<%@page import="org.yolo.holo.vo.HLog"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String pageNoStr= request.getParameter("pageNo");
	int pageNo = 1;
	if(pageNoStr != null){
		pageNo = Integer.parseInt(pageNoStr);
	}//if end
	int numPage = 9;
	PageVO pageVO = new PageVO(pageNo, numPage);
	
	
	Map<String,Object> map = new HashMap();
	
	List<HLog> list = HLogsDAO.selectList(pageVO);
	
	int total = HLogsDAO.selectTotal();
	
	int numBlock = 5;
	String url = "/hlogmain.jsp";
	String param = "page=";
	String paginate = PaginateUtil.getPaginate(pageNo, total, numPage, numBlock, url, param);
	
	map.put("list",list);
	map.put("paginate",paginate);
	
	ObjectMapper om = new ObjectMapper();
	
	String json = om.writeValueAsString(map);
		
%>
<%=json%>