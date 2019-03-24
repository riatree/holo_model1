<%@page import="org.yolo.holo.dao.ContentsTagsDAO"%>
<%@page import="org.yolo.holo.vo.ContentsTag"%>
<%@page import="org.yolo.holo.dao.ServicesDAO"%>
<%@page import="org.yolo.holo.vo.Service"%>
<%@page import="org.yolo.holo.dao.FoodGradesDAO"%>
<%@page import="org.yolo.holo.dao.SpotPicsDAO"%>
<%@page import="org.yolo.holo.vo.FoodGrade"%>
<%@page import="org.yolo.holo.vo.SpotPic"%>
<%@page import="org.yolo.holo.dao.MenuDAO"%>
<%@page import="org.yolo.holo.vo.Menu"%>
<%@page import="org.yolo.holo.dao.SpotsDAO"%>
<%@page import="org.yolo.holo.vo.Spot"%>
<%@page import="org.yolo.holo.vo.Dounor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Dounor loginDounor = (Dounor) session.getAttribute("loginDounor");

	String locationNo = request.getParameter("locationNo");
	
	String foodName = request.getParameter("foodName");
	String foodType = request.getParameter("foodType");
	
	String lat = request.getParameter("lat");
	String lng = request.getParameter("lng");
	String foodAddr1 = request.getParameter("foodAddr1");
	String foodAddr2 = request.getParameter("foodAddr2");
	if(foodAddr2 == null) {
		foodAddr2 = ".";
	}
	
	String foodCall1 = request.getParameter("foodCall1");
	String foodCall2 = request.getParameter("foodCall2");
	String foodCall3 = request.getParameter("foodCall3");
	String foodCall = foodCall1 + "-" + foodCall2 + "-" + foodCall3;
	if(foodCall == null) {
		foodCall = ".";
	}
	
	String foodOpenHour = request.getParameter("foodOpenHour");
	String foodOpenMin = request.getParameter("foodOpenMin");
	String foodCloseHour = request.getParameter("foodCloseHour");
	String foodCloseMin = request.getParameter("foodCloseMin");
	String foodOpenTime = foodOpenHour + "시 " + foodOpenMin + "분";
	String foodCloseTime = foodCloseHour + "시 " + foodCloseMin + "분";
		
	String foodPrice = request.getParameter("foodPrice");	
	String foodContent = request.getParameter("foodContent");
	
	String[] name = request.getParameterValues("name");
	String[] priceStr = request.getParameterValues("price");
	
	String hice = request.getParameter("hice");
	String upload = request.getParameter("upload");
	String[] themeStr = request.getParameterValues("theme");
	String[] serviceStr = request.getParameterValues("service");
	String[] goodStr = request.getParameterValues("good");
	
	// spot
	Spot spot = new Spot();
	spot.setNoLocation(Integer.parseInt(locationNo));
	spot.setName(foodName);
	spot.setCategoryType(foodType);
	spot.setLatitude(Double.parseDouble(lat));
	spot.setLongitude(Double.parseDouble(lng));
	spot.setAddress1(foodAddr1);
	spot.setAddress2(foodAddr2);
	spot.setContact(foodCall);
	spot.setOpenTime(foodOpenTime);
	spot.setCloseTime(foodCloseTime);
	spot.setPrice(Integer.parseInt(foodPrice));
	spot.setContents(foodContent);
	spot.setDounorNo(loginDounor.getNo());
	
	/*System.out.println(spot.getNoLocation());
	System.out.println(spot.getName());
	System.out.println(spot.getCategoryType());
	System.out.println(spot.getLatitude());
	System.out.println(spot.getLongitude());
	System.out.println(spot.getAddress1());
	System.out.println(spot.getAddress2());
	System.out.println(spot.getContact());
	System.out.println(spot.getOpenTime());
	System.out.println(spot.getCloseTime());
	System.out.println(spot.getPrice());
	System.out.println(spot.getContents());
	System.out.println(spot.getDounorNo());*/
	
	SpotsDAO.insertFood(spot);
	
	
	int noSpot = spot.getNo();
	
	// spotpic
	SpotPic spotpic = new SpotPic();
	spotpic.setPicName(upload);
	spotpic.setNoSpot(noSpot);
	spotpic.setNoDounor(loginDounor.getNo());
	
	SpotPicsDAO.insert(spotpic);
	
	// menu
	/* int cnt = 0;
	for(String nameOne : name) {
		++cnt;
	} */
	
	for(int i = 0; i < name.length; i++) {
		
		Menu menu = new Menu();
		
		menu.setName(name[i]);
		menu.setPrice(Integer.parseInt(priceStr[i]));
		menu.setNoSpot(noSpot);		
		System.out.println(menu.getName());
		System.out.println(menu.getPrice());
		System.out.println(menu.getNoSpot());
		
		MenuDAO.insert(menu);
	}

	// foodgrade
	FoodGrade foodgrade = new FoodGrade();
	foodgrade.setNoDounor(loginDounor.getNo());
	foodgrade.setNoSpot(noSpot);
	foodgrade.setHice(Integer.parseInt(hice));
	foodgrade.setFlavor("0");
	foodgrade.setService("0");
	foodgrade.setClean("0");
	foodgrade.setFeeling("0");
	foodgrade.setCheap("0");
	for(String goodStrOne : goodStr) {
		
		switch(goodStrOne) {
		case "F":
		{
			foodgrade.setFlavor("1");
			break;
		}
		case "S":
		{
			foodgrade.setService("1");
			break;
		}
		case "C":
		{
			foodgrade.setClean("1");
			break;
		}
		case "L":
		{
			foodgrade.setFeeling("1");
			break;
		}
		case "H":
		{
			foodgrade.setCheap("1");
			break;
		}
		} // switch end
	} // for end
	
	FoodGradesDAO.insert(foodgrade);
			
			
	// theme 태그 -> contentsTag에 넣음
	for(String themeStrOne : themeStr) {
		
		int theme = Integer.parseInt(themeStrOne);
		
		ContentsTag contentsTag = new ContentsTag();
		contentsTag.setNoTag(theme);
		contentsTag.setContentsNo(noSpot);
		
		ContentsTagsDAO.insert(contentsTag);
		
	}
	
	// service
	for(String serviceStrOne : serviceStr) {
		
		Service service = new Service();
		service.setName(serviceStrOne);
		service.setNoSpot(noSpot);
		
		ServicesDAO.insert(service);
	}
	
	
	response.sendRedirect("/food.jsp");	
	
	
%>
<%=locationNo %>
