<%@page import="util.ResizeImageUtil"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" 
contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String root = request.getServletContext().getRealPath("");
	String uploadPath = root+"upload"+File.separator;
	// 은서 : spotPath 추가
	String spotPath = root+"spot"+File.separator;
	String profilePath = root + "profile"+File.separator;
	
   MultipartRequest mr =  new MultipartRequest(request,uploadPath, 1024*1024*100,"UTF-8", new DefaultFileRenamePolicy());
	System.out.println(uploadPath);
   String fileName = mr.getFilesystemName("uploadImg");
   
   /* System.out.println("uploadImage.jsp::"+fileName); */
                                 
	String type = mr.getParameter("type");
	
	String src = "/";
		
	switch(type) {
	case "H" : 
		src+="upload/";
		break;
	case "B" : 
		src+="upload/";
		break;
	// 은서 : case"S" 추가
	case "S" :
		src+="spot/";
		ResizeImageUtil.resize(uploadPath+fileName, spotPath+fileName, 160, 120);
		break;
	case "P" :
		src+="profile/";
		ResizeImageUtil.resize(uploadPath+fileName, profilePath+fileName, 140);
		break;
	}//switch end
	
	src+= fileName;
	System.out.println(fileName);
%>
{"src":"<%=fileName%>"}

