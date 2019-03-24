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
	String profilePath = root + "profile"+File.separator;
	
   MultipartRequest mr =  new MultipartRequest(request,uploadPath, 1024*1024*100,"UTF-8", new DefaultFileRenamePolicy());

   String fileName = mr.getFilesystemName("uploadImage");
   
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
	case "P" :
		src+="profile/";
		ResizeImageUtil.resize(uploadPath+fileName, profilePath+fileName, 140);
		break;
	}//switch end
	
	src+= fileName;
	System.out.println(fileName);
%>
{"src":"<%=src%>"}

