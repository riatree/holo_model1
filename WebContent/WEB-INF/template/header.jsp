<%@page import="org.yolo.holo.vo.Dounor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Dounor loginDounor = (Dounor)session.getAttribute("loginDounor");
%>

<div id="header">
    <h1 class="screen_out">HOLO:Happen Of Leave Oneself</h1>
    <div class="headMenu">
        <ul>
            <li id="logoImage"><a href="/index.jsp">HOLO</a></li>
            <li class="menu"><a href="/region.jsp">여행지</a></li>
            <li class="menu"><a href="/tour.jsp">관광명소</a></li>
            <li class="menu"><a href="/food.jsp">음식점</a></li>
            <li class="menu"><a href="/hlogmain.jsp">Hlog</a></li>
            <li class="menu"><a href="/together.jsp">동행</a></li>
            <li class="fo">
                <form action="search.jsp" method="get">
                    <input class="searchText" name="search" autocomplete="off" placeholder="검색어를 입력하세요"/>
                    <button class="searchBtn screen_out"><i class="fas fa-search"></i></button>
                </form>
                <button class="closeBtn"><i class="fas fa-times"></i></button>
            </li>
            <li class="search"><i class="fas fa-search"></i></li>
            <% if(loginDounor != null) { %>
            
            <li class="alarm"><i class="fas fa-bell"></i></li>
            <li class="setting">
                <a>
                    <img src="/profile/<%=loginDounor.getProfile() %>" class="face_img" width="50" height="50">
                    <span class="bu"></span>
                </a>
                <div class="myInf">
                    <ul id="myInfList">
                        <li><a href="/profile.jsp?no=<%=loginDounor.getNo()%>">마이 페이지</a></li>
                        <li class="logout"><a href="/logout.jsp">로그아웃</a></li>
                    </ul><!--//.myInfList -->
                </div><!--//.myInf -->
            </li><!-- // .setting -->
            <% } else {%>
            <li class="login">로그인</li>
            <% } %>
        </ul>
    </div>
</div> <!--//header-->