<%@page import="org.yolo.holo.dao.ServicesDAO"%>
<%@page import="org.yolo.holo.dao.TourGradesDAO"%>
<%@page import="org.yolo.holo.vo.Service"%>
<%@page import="org.yolo.holo.dao.ContentsTagsDAO"%>
<%@page import="org.yolo.holo.vo.ContentsTag"%>
<%@page import="org.yolo.holo.dao.ThemeDAO"%>
<%@page import="org.yolo.holo.vo.Theme"%>
<%@page import="org.yolo.holo.dao.SpotPicsDAO"%>
<%@page import="org.yolo.holo.vo.TourGrade"%>
<%@page import="org.yolo.holo.vo.Dounor"%>
<%@page import="org.yolo.holo.vo.SpotPic"%>
<%@page import="org.yolo.holo.dao.SpotsDAO"%>
<%@page import="org.yolo.holo.vo.Spot"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Dounor loginDounor = (Dounor)session.getAttribute("loginDounor");

	String locationNo = request.getParameter("locationNo");
	
	String tourName = request.getParameter("tourName");
	String tourType = request.getParameter("tourType");
	
	String lat = request.getParameter("lat");
	String lng = request.getParameter("lng");	
	String tourAddr1 = request.getParameter("tourAddr1");
	String tourAddr2 = request.getParameter("tourAddr2");
	if(tourAddr2 == null) {
		tourAddr2 = ".";
	}
	
	String tourCall1 = request.getParameter("tourCall1");
	String tourCall2 = request.getParameter("tourCall2");
	String tourCall3 = request.getParameter("tourCall3");
	String tourCall = tourCall1 + "-" + tourCall2 + "-" + tourCall3;
	if(tourCall == null) {
		tourCall = ".";
	}
	
	String tourOpenHour = request.getParameter("tourOpenHour");
	String tourOpenMin = request.getParameter("tourOpenMin");
	String tourCloseHour = request.getParameter("tourCloseHour");
	String tourCloseMin = request.getParameter("tourCloseMin");
	String tourOpenTime = tourOpenHour + "시 " + tourOpenMin + "분";
	String tourCloseTime = tourCloseHour + "시 " + tourCloseMin + "분";
	
	String tourSite = request.getParameter("tourSite");
	String tourPrice = request.getParameter("tourPrice");
	String tourContent = request.getParameter("tourContent");
	
	String hice = request.getParameter("hice");
	String upload = request.getParameter("upload");
	String[] themeStr = request.getParameterValues("theme");
	String[] serviceStr = request.getParameterValues("service");
	String[] goodStr = request.getParameterValues("good");
	
	// spot 
	Spot spot = new Spot();
	spot.setNoLocation(Integer.parseInt(locationNo));
	spot.setName(tourName);
	spot.setCategoryType(tourType);
	spot.setLatitude(Double.parseDouble(lat));
	spot.setLongitude(Double.parseDouble(lng));
	spot.setAddress1(tourAddr1);
	spot.setAddress2(tourAddr2);
	spot.setContact(tourCall);
	spot.setOpenTime(tourOpenTime);
	spot.setCloseTime(tourCloseTime);
	spot.setWebsite(tourSite);
	spot.setPrice(Integer.parseInt(tourPrice));
	spot.setContents(tourContent);
	spot.setDounorNo(loginDounor.getNo());
	
	/*System.out.println(spot.getName());
	System.out.println(spot.getAddress1());
	System.out.println(spot.getAddress2());
	System.out.println(spot.getLatitude());
	System.out.println(spot.getLongitude());
	System.out.println(spot.getContact());	
	System.out.println(spot.getOpenTime());
	System.out.println(spot.getCloseTime());
	System.out.println(spot.getPrice());
	System.out.println(spot.getContents());
	System.out.println(spot.getCategoryType());
	System.out.println(spot.getWebsite());
	System.out.println(spot.getDounorNo());*/	

	SpotsDAO.insert(spot);
	System.out.print(spot.getNo());
	
	// spot no
	int noSpot = spot.getNo();
	
	// spotpic
	SpotPic spotpic = new SpotPic();
	spotpic.setPicName(upload);
	spotpic.setNoSpot(noSpot);
	spotpic.setNoDounor(loginDounor.getNo());
	
	SpotPicsDAO.insert(spotpic);
	
	// tourgrade
	TourGrade tourgrade = new TourGrade();
	tourgrade.setNoDounor(loginDounor.getNo());
	tourgrade.setNoSpot(noSpot);
	tourgrade.setHice(Integer.parseInt(hice));
	tourgrade.setPhotozon("0");
	tourgrade.setFacility("0");
	tourgrade.setTraffic("0");
	tourgrade.setWatch("0");
	tourgrade.setAround("0");
	for(String goodStrOne : goodStr) {
		
		switch(goodStrOne) {
		case "P":
		{
			tourgrade.setPhotozon("1");
			
			break;
		}
		case "F":
		{
			tourgrade.setFacility("1");
			break;
		}
		case "T":
		{
			tourgrade.setTraffic("1");
			break;
		}
		case "W":
		{
			tourgrade.setWatch("1");
			break;
		}
		case "A":
		{
			tourgrade.setAround("1");
			break;
		}		
		} // switch end
		
	} // for end
	
	// System.out.println("zzzzzzzzzzz"+tourgrade.getHice());
	
	TourGradesDAO.insert(tourgrade);
			
	
	
	// theme 태그 -> contentsTag에 넣음
	for(String themeStrOne : themeStr) {
		
		int theme = Integer.parseInt(themeStrOne);
		
		ContentsTag contentsTag = new ContentsTag();
		contentsTag.setNoTag(theme);
		contentsTag.setContentsNo(noSpot);
		
		ContentsTagsDAO.insert(contentsTag);
		
		// theme.setThemeCode(theme);		
		// ThemeDAO.insert(theme);
	}
	
	// service
	for(String serviceStrOne : serviceStr) {
		
		Service service = new Service();
		service.setName(serviceStrOne);
		service.setNoSpot(noSpot);
		
		ServicesDAO.insert(service);
	}
	
	
	response.sendRedirect("/tour.jsp");


%>
