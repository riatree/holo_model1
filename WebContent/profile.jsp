<%@page import="org.yolo.holo.dao.DounorSavesDAO"%>
<%@page import="org.yolo.holo.vo.DounorSave"%>
<%@page import="org.yolo.holo.dao.TourGradesDAO"%>
<%@page import="org.yolo.holo.dao.FoodGradesDAO"%>
<%@page import="org.yolo.holo.dao.TagsDAO"%>
<%@page import="org.yolo.holo.vo.Tag"%>
<%@page import="org.yolo.holo.vo.Spot"%>
<%@page import="org.yolo.holo.dao.SpotsDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Locale"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.yolo.holo.vo.Review"%>
<%@page import="org.yolo.holo.dao.ReviewsDAO"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.yolo.holo.dao.TogethersDAO"%>
<%@page import="org.yolo.holo.vo.Together"%>
<%@page import="org.yolo.holo.vo.HLog"%>
<%@page import="org.yolo.holo.dao.HLogsDAO"%>
<%@page import="org.yolo.holo.dao.FollowDAO"%>
<%@page import="org.yolo.holo.vo.Follow"%>
<%@page import="org.yolo.holo.vo.Dounor"%>
<%@page import="org.yolo.holo.dao.DounorsDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	int no = Integer.parseInt(request.getParameter("no"));

	Dounor dounor = DounorsDAO.selectDounorProfile(no);
	
	int followingNum = FollowDAO.selectFollowingNum(no);
	int followerNum = FollowDAO.selectFollowerNum(no);
	
	List<HLog> hlogs = HLogsDAO.selectProList(no);
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/reset.css"/>
    <link rel="stylesheet" href="/css/default.css"/>
    <link rel="stylesheet" href="/css/proScrap.css"/>
    <link rel="stylesheet" href="/css/proFounder.css"/>
    <link rel="stylesheet" href="/css/proReview.css"/>
    <link rel="stylesheet" href="/css/proHlog.css"/>
    <link rel="stylesheet" href="/css/proTogether.css"/>
    <link rel="stylesheet" href="/css/popLogin.css"/>
    <link rel="stylesheet" href="/css/popReview.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <style>
        body{
            margin: 0px;
        }

        #mypageContents{
            width: 1080px;
            height: 230px;
            margin: auto;
            background-color: #fff;
            position: relative;
            border-left: 1px solid #424242;
            border-right: 1px solid #424242;
            margin-top: 70px;
        }
        #profile{
            position: absolute;
            width: 150px;
            height: 150px;
            left: 90px;
            top: 20px;
            cursor: pointer;
            border-radius: 75px;

        }
        #nickname{
            position: absolute;
            font-size: 15px;
            left: 135px;
            top: 190px;
        }
        .setBox{
        	width: 110px;
        	height: 50px;
        	 position: absolute;
            top: 5px;
            right:15px;
        }
        .setUpdate{
            font-size: 32px;
            position: absolute;
            top: 5px;
            right:15px;
            border: none;
            cursor: pointer;
            border-radius: 16px;
            background-color: transparent;
            outline: 0;
        }
        #followList{
            position: absolute;
            height: 20px;
            width: 240px;
            top: 15px;
            right: 130px;
        }
        #followList div{
            float: left;
            font-size: 20px;
        }
        #followList #follow{
            cursor: pointer;
        }
        #followList .followNum{
            position: relative;
            left: 10px;
        }
        #followList #followers{
            position: absolute;
            left: 125px;
            cursor: pointer;
        }
        #followList .followersNum{
            position: absolute;
            left:195px;
        }
        .followNum>p{
            color: #303F9F;
            font-weight: bold;
        }
        .followersNum>p{
            color: #303F9F;
            font-weight: bold;
        }

        #donutList{
            position: relative;
            top: 30px;
            left: 300px;

        }
        .doShadow{
            opacity: .2;
        }
        .donutBack{
            width: 90px;
            height: 90px;
            position: absolute;
            /*border: 1px solid #424242;*/
            /*border-radius: 50px;*/
            /*box-shadow: inset .5px .5px 10px #a0aabf;*/
        }
        .donutReal{
        	width: 90px;
            height: 90px;
            position: absolute;
        }
        .doTwo{
            margin-left: 100px;
        }
        .doTre{
            margin-left: 200px;
        }
        .doFour{
            margin-left: 300px;
        }
        .doFive{
            margin-top: 100px;
        }
        .doSix{
            margin-left: 100px;
            margin-top: 100px;
        }
        .doSev{
            margin-left: 200px;
            margin-top: 100px;
        }
        .doEig{
            margin-left: 300px;
            margin-top: 100px;
        }
        #menuList{
            width: 1080px;
            height: 100px;
            margin: auto;
            position: relative;
            background-color: #9E9E9E;
            text-align: center;
        }
        #menuList li{
            width: 214px;
            height: 98px;
            float: left;
            border: 1px solid #424242;
            cursor: pointer;

        }
        #menuList li>img{
            width: 50px;
            height: 50px;
            margin-top: 15px;
        }
        #menuList li>p{
            font-size: 15px;
        }
        #menuList li:hover{
            background-color: #81D4FA;
            box-shadow:  inset 0px 0px 10px gray;
        }
        #menuList li:active{
            background-color: #00B8D4;
            transform: scale(.95);
            transition: ease;

        }

        /*팔로윙*/

        #followShow{
            width: 400px;
            height: 500px;
            overflow: auto;
            background-color: #fff;
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -250px -200px;
            border-radius: 10px;
            z-index: 2;

        }
        #followersShow{
            width: 400px;
            height: auto;
            overflow: auto;
            background-color:  #fff;
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -250px -200px;
            border-radius: 10px;
            z-index: 2;
        }
        ::-webkit-scrollbar{
            height: 0px;
            width: 10px;
            background: rgba(0,0,0,.2);
            -webkit-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: inset 0 0 4px rgba(0,0,0,.1)
        }
        ::-webkit-scrollbar-thumb{
            height: 2px;
            width: 50px;
            background: #333333;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        ::-webkit-scrollbar-track{
            height: 400px;
        }


        #popup{
            width: 100%;
            height: 100%;
            background-color: #3c3c3c;
            position: absolute;
            top: 0;
            left: 0;
            opacity: .3;
            display: none;
            z-index: 1;
        }
        .fTitle{
            position: relative;
            font-size: 25px;
            text-align: center;
            margin-top: 30px;
        }
        .followView{
            width: 300px;
            height: 100px;
            margin: auto;
            position: relative;
            list-style:none;
  			padding-left:0px;

        }
        .followersView{
            width: 300px;
            height: 100px;
            margin: auto;
            position: relative;
        }
        .fImg{
            width: 60px;
            height: 60px;
            border-radius: 30px;
            margin-top: 20px;
            margin-left: 10px;
            cursor: pointer;
        }
        .fNickname{
            position: absolute;
            top: 40px;
            left: 90px;
        }
        .followingBtn{
            width: 100px;
            height: 40px;
            font-size: 15px;
            border-radius: 20px;
            position: absolute;
            top: 30px;
            right: 10px;
            outline: 0;
            border: none;
            cursor: pointer;
            background-color: rgb(221, 221, 221);
            border: 1px solid #424242;
        }
        #followingTopBtn{
        	width: 100px;
            height: 40px;
            font-size: 15px;
            border-radius: 20px;
            position: absolute;
            outline: 0;
            border: none;
            cursor: pointer;
            background-color: rgb(221, 221, 221);
            border: 1px solid #424242;
            top:3px;
        }
        
        .follow{
            background-color: #E91E63;
            color: #fff;
        }


        /*menu 버튼*/
        .on{
            display: block;
        }
        
        /* 2차에 구현 부분 */
        
        #nextTime{
        	width: 1080px;
        	height: auto;
        	overflow: hidden;
        }
        #nextTime>p{
        	text-align: center;
        	font-size: 60px;
        }
        #nextTime>img{
        	margin-top: 15px;
        	margin-left: 250px;
        }
        
        .hashBox{
        	width: 280px;
        	height: 20px;
        	 position: absolute;
            bottom: 86px;
            right: 6px;
        }
		.hash {
            padding: 1px 5px;
            width: 80px;
            height: 20px;
            background-color: #A1887F;
            border-radius: 20px;
            font-size: 15px;
            text-align: center;
            text-shadow: 1px 1px 1px #424242;
            line-height: 20px;
            color: white;
            float: left;
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            margin-left: 3px;
		}
        

    </style>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>

<div id="mypageContents" >
<% /* for(Dounor dounor : list){  */
	System.out.println("profile유저사진 : "+dounor.getProfile());
	System.out.println("profile유저닉네임 : "+dounor.getNickname());
	%>
    <img id="profile" src="/profile/<%=dounor.getProfile() %>" />
    <p id="nickname"><%=dounor.getNickname() %></p>
    <div class="setBox">
    <%
    	
    %>
    
    <%
    	if(loginDounor.getNo() == dounor.getNo()){
    %>
    	<button class="setUpdate"><i class="set fas fa-cog"></i></button>
    <%}else{ %>
      	<%
    	Follow follow = new Follow();
    	follow.setNoFollowing(dounor.getNo());
    	follow.setNoFollower(loginDounor.getNo());
    	int flag = FollowDAO.selectFollowingNow(follow);
    	System.out.println("mypage flag" + flag);
    	%>
    	<button value="<%=dounor.getNo() %>" id="followingTopBtn" class="f_btn  <%if(flag==1){%>follow<%}%>"><%if(flag==1){%>팔로우 중<%}else{%>Now Following<%}//if~else end%></button>
    <%}//if~else end %>
    </div>
	
    <div id="followList">
        <div><p id="follow">팔로잉</p></div>
        <div class="followNum"><p><%=followingNum %></p></div>
        <div><p id="followers">팔로워</p></div>
        <div class="followersNum"><p><%=followerNum %></p></div>
    </div>
    <table id="donutList">
        <tbody>
            <tr>
                <!--
                donutBack :  전체 도넛
                donutShadow1 : 첫번째 .3 있는 도넛
                doShadow : .3 있는 도넛
                do번호번호 : 리얼 도넛 순서 ex)doOne1, doOne2
                do번호 도넛들 순서
                -->
                <td class="pink"><!-- 도넛 pink 도넛과함께 -->
                    <img class="donutBack doOne donutShadow1 doShadow" src="img/pink2.png"/>
                    <% 
                    String c1=null;

                    int pinkNum = ReviewsDAO.selectProReviewCount(dounor.getNo());
                    	System.out.println("리뷰 갯수 : " + pinkNum);
                    	pinkNum = (pinkNum/5);//동행리뷰 5번당 1조각
                    	System.out.println("핑크 도넛과 함께 : " + pinkNum);
                  	//동행리뷰 6조각이상 고정
                    if(pinkNum>6){
                  		pinkNum =6;
                  	}
                  	
                  	if(pinkNum!=dounor.getPink()){
                  		int update1 = DounorsDAO.updatePink(pinkNum);
                  		System.out.println("핑크도넛 update ?"+ update1);
                  	}//if end
                  	
                    if(dounor.getPink()==0){
                    	
                    }else if(dounor.getPink()<5){ 
                    	c1= 'd' + Integer.toString(dounor.getPink());
                    	%><img class="donutBack doOne donutReal" src="/donut/<%=c1 %>.png"/><%
                    }else{
                    	c1= 'p' + Integer.toString(dounor.getPink());
                    	%><img class="donutBack doOne donutReal" src="/donut/<%=c1 %>.png"/><%
               		}//if~else end %>
                              
                </td>
                <td class="green"><!-- 도넛green 잃어버린 도넛을 찾아서 -->
                    <img class="donutBack doTwo donutShadow2 doShadow" src="img/green2.png"/>
                    <% 
                    String c2=null;
                    
                    int founderTourNum = SpotsDAO.selectProTourFounderCount(dounor.getNo());
                    int founderFoodNum = SpotsDAO.selectProFoodFounderCount(dounor.getNo());
                    //tour와 food의 갯수 합산
                    int foundeerTotalNum = founderTourNum + founderFoodNum;
                    System.out.println("그린 잃어버린 도넛을 찾아서 : " + foundeerTotalNum);
                    //founder 6조각 이상 고정
                    if(foundeerTotalNum>6){
                    	foundeerTotalNum = 6;
                    }//if end
                    
                    if(dounor.getGreen()!=foundeerTotalNum){
                    	int update2 = DounorsDAO.updateGreen(foundeerTotalNum);
                    	System.out.println("그린도넛 update ?"+ update2);
                    }
                    
                    if(dounor.getGreen()<5){ 
                    	c2= 'd' + Integer.toString(dounor.getGreen());
                    }else{
                    	c2= 'g' + Integer.toString(dounor.getGreen());
               		}//if end %>
               		<img class="donutBack doTwo donutReal" src="/donut/<%=c2 %>.png"/>
                </td>
                <td class="red"><!-- 도넛red 도넛의유혹 -->
                 <img class="donutBack doTre donutShadow3 doShadow" src="img/red2.png"/>
                	<% 
                    String c3=null;
                	
                	int followNum = FollowDAO.selectFollowingNum(dounor.getNo());
                	followNum = followNum/10;// 팔로우 10명당 1조각
                	//팔로우 60명 넘어갈 경우 고정
                	if(followNum >6){
                		followNum = 6;
                	}//if end
                	System.out.println("레드 도넛의 유혹 : " + followNum );
                	//만약 DB와 값이 다르다면 update
                	if(followNum!=dounor.getRed()){
                		int update3 = DounorsDAO.updateRed(followNum);
                	}//if end
                	
                	
                	if(followNum!=dounor.getRed()){
                		int update3 = DounorsDAO.updateRed(followNum);
                		System.out.println("레드도넛 update ? : " + update3 );
                	}
                	
                    if(dounor.getRed()<5){ 
                    	c3= 'd' + Integer.toString(dounor.getRed());
                    }else{
                    	c3= 'r' + Integer.toString(dounor.getRed());
               		}//if end %>
                   <img class="donutBack doTre donutReal" src="/donut/<%=c3 %>.png"/>
                </td>
                <td class="brown"><!-- 도넛chco 도넛의 질주 -->
                    <img class="donutBack doFour donutShadow4 doShadow" src="img/brown2.png"/>
                    <% 
                    String c4=null;
                    if(dounor.getChco()<5){ 
                    	c4= 'd' + Integer.toString(dounor.getChco());
                    }else{
                    	c4= 'c' + Integer.toString(dounor.getChco());
               		}//if end %>
                    <img class="donutBack doFour donutReal" src="/donut/<%=c4 %>.png"/>
                </td>
            </tr>
            <tr>
                <td class="orange"><!-- 도넛orange 웰컴투도넛 -->
                    <img class="donutBack doFive donutShadow5 doShadow" src="img/orange2.png"/>
                    <% 
                    String c5=null;
                    if(dounor.getOrange()>5){ 	
               		%>
                    <img class="donutBack doFive donutReal" src="/donut/o6.png"/>
                    <%}//if end %>
                </td>
                <td class="blue"><!-- 도넛blue 도넛왕 -->
                    <img class="donutBack doSix donutShadow6 doShadow" src="img/blue2.png"/>
                    <% 
                    String c6=null;
                    
                    //like 갯수 
                    int likeNum = DounorSavesDAO.selectLikeCount(dounor.getNo());
                    //라이크 30개당 1조각
                    likeNum= likeNum/30;
                    //6조각 넘으면 6조각으로 고정
                    if(likeNum>6){
                    	likeNum=6;
                    }//if end
                    System.out.println("blue 도넛왕 : " + likeNum );
                    //DB와 값이 다르다면 update
                    if(likeNum!=dounor.getBlue()){
                    	int update6 = DounorsDAO.updateBlue(likeNum);
                    	System.out.println("블루도넛 update ? : " + update6 );
                    }//if end
                    
                    if(dounor.getBlue()<5){ 
                    	c6= 'd' + Integer.toString(dounor.getBlue());
                    }else{
                    	c6= 'b' + Integer.toString(dounor.getBlue());
               		}//if end %>
                    <img class="donutBack doSix donutReal" src="/donut/<%=c6 %>.png"/>
                </td>
                <td class="white"><!-- 도넛white 머리속의 도넛 -->
                    <img class="donutBack doSev donutShadow7 doShadow" src="img/white2.png"/>
                    
                   <% 
                   String c7=null;
                   
                   int hlogNum = HLogsDAO.selectMyProHlogCount(dounor.getNo());
                   //hlog 6개 넘을시 6개로 고정
                   if(hlogNum>6){
                   	hlogNum=6;
                   }//if end
                   System.out.println("화이트 도넛왕 : " + hlogNum);
                   //만약 DB와 값이 다르다면 update
                   
                    if(hlogNum!=dounor.getWhite()){
                    	int update7 = DounorsDAO.updateWhite(hlogNum);
                    	System.out.println("화이트도넛 update ? : " + update7 );
                    }
                    if(dounor.getWhite()<5){ 
                    	c6= 'd' + Integer.toString(dounor.getWhite());
                    }else{
                    	c6= 'b' + Integer.toString(dounor.getWhite());
               		}//if end %>
                    <img class="donutBack doSev donutReal" src="/donut/<%=c6 %>.png"/>
                </td>
                <td  class="yellow"><!-- 옐로우도넛 친절한 도넛씨 -->
                    <img class="donutBack doEig donutShadow8 doShadow" src="img/yellow2.png"/>
                    <% 
                    String c8=null;
                    
                    int reviewNum = ReviewsDAO.selectProReviewCount(dounor.getNo());
                    //리뷰 5개당 1조각
                    reviewNum = reviewNum/5;
                    //review 30개이상 적을시 30개로 고정
                    if(reviewNum>6){
                    	reviewNum=6;
                    }//if end
                    System.out.println("옐로우 친절한도넛씨 : " + reviewNum);
                    //만약 DB값이랑 다르다면 update
                    if(reviewNum!=dounor.getYellow()){
                    	int update8 = DounorsDAO.updateYellow(reviewNum);
                    	System.out.println("레드도넛 update ? : " + update8 );
                    }//if end
                    if(dounor.getYellow()<5){ 
                    	c8= 'd' + Integer.toString(dounor.getYellow());
                    }else{
                    	c8= 'y' + Integer.toString(dounor.getYellow());
               		}//if end %>
                    <img class="donutBack doEig donutReal" src="/donut/<%=c8 %>.png"/>
                </td>
            </tr>
        </tbody>
    </table>
</div><!-- #mypageContents end -->
<%-- <%}//for end %>   --%> 
<div id="menuList">
    <ul>
        <li id="hLogBtn">
            <img src="img/HLog.png"/>
            <p>H-Log</p>
        </li>
        <li id="togetherBtn">
            <img src="img/together.png"/>
            <p >Together</p>
        </li>
        <li id="reviewBtn">
            <img src="img/review.png"/>
            <p>Review</p>
        </li>
        <li id="founderBtn">
            <img src="img/founder.png"/>
            <p >Founder</p>
        </li>
        	<% 
		System.out.println("로그인 번호:"+loginDounor.getNo());
		System.out.println("프로필 번호:"+dounor.getNo());
		
		if(loginDounor.getNo()==dounor.getNo()){
		%>
        <li id="scrapBtn">
            <img src="img/scrap.png"/>
            <p>Scrap</p>
        </li>
        <% }//if end %>
    </ul>
</div>

<!-- Hlog -->

<div class="proHLog on">
    <div id="hLogContent">
        <ul id="hLogList">
			<%
			if(loginDounor.getNo()==dounor.getNo()){
				hlogs = HLogsDAO.selectMyProList(no);
			}
			for(HLog hlog : hlogs){ 
			System.out.println("번호"+hlog.getNo());
			System.out.println("타이틀 픽"+hlog.getTitlePic());
			System.out.println("유저번호"+hlog.getDounorNo());
			System.out.println("닉네임"+hlog.getNickname());
			System.out.println("하이스"+hlog.getHice());
			System.out.println("번호"+hlog.getNo());
			System.out.println("프로필"+hlog.getProfile());
			System.out.println("하트"+hlog.getLikeNum());
			%>
			<li  class="hlog">			
        		<div class="box">
           		   <a href="hlog.jsp?no=<%=hlog.getNo() %>" class="hlogNext"><div  class="hlogImg"><img src="<%=hlog.getTitlePic() %>"></div></a>
            	   <div class="star hlogStar"><img src="img/star.png" width="20" height="20"></div>
            	   <!-- <a href="search.jsp?no=" class="s1 hash">#</a>
           		   <a href="search.jsp?no=" class="s2 hash">#</a> -->
       			</div>
        		<div class="box_m">
            		<img class="user" src="/profile/<%=hlog.getProfile()%>">
            		<a href="hlog.jsp?no=<%=hlog.getNo() %>" class="hlogName"><%=hlog.getTitle() %></a>
            		<div class="hlogNickname"><%=hlog.getNickname()%></div>
            		<img class="ice" src="img/ice<%=hlog.getHice()%>.png">
            		<div class="heart hlogHeart"><img src="img/heart.png" width="20" height="20"><%=hlog.getLikeNum()%></div>
        		</div>		
    		</li><!-- hlog-->
    	<% }//for end%>
        </ul>
		<%
    	int HlogCount = HLogsDAO.selectMyProHlogCount(dounor.getNo());
    	System.out.println("Hlog글 갯수: "+HlogCount);
        	if(HlogCount==0){
        %>
        <div id="emptyHlogListBox">
        	<p id="emptyHlogList">작성하신 글이 없습니다.</p>
        </div>
        <%}//if end %>
    </div>
</div>

<!-- together -->

<div class="proTogetherList">
    <ul id="proTogetherContents"> <!--동행 리스트 영역 -->
    <%
    	List<Together> togethers = TogethersDAO.selectProTogetherList(dounor.getNo());
    	for( Together together : togethers ){
    		
    		Calendar thatTime = Calendar.getInstance();
    		long now = thatTime.getTimeInMillis();
    		thatTime.setTime(together.getMeetDate());
    		long that = thatTime.getTimeInMillis();
    %>
		<li class="togetherPerson">
		        <div class="proTogether">
		            <img class="togetherImage" src="/spot/<%=together.getPicName()%>">
		            <div class="togetherDate"><%=together.getMeetDate() %> <%=together.getMeetTime() %></div>
		            <img class="togetherSiren" src="img/alarm.png" width="25" height="25">
		            <div class="togetherContent"><%=together.getContents() %></div>
		 			<a href="/search.jsp?no=" class="togetherTag s1">#</a>
		            <a href="/search.jsp?no=" class="togetherTag s2">#</a>
		            <div class="togetherPersonnel">
		            <% 
		            	int result = TogethersDAO.selectPersonnelTotal(together.getNo());
		            	
		            %><%=result%>/<%=together.getPersonnel() %>명</div>
		            <%
		            	String flag = together.getGender();
		            	if(flag == "A"){
		            		flag = "womanman";		     
		            	}else if(flag == "M"){
		            		flag = "man";
		            	}else{
		            		flag = "woman";
		            	}//if~else end
		            %>
		            <div class="togetherGender"><img src="img/<%=flag %>.png"></div>
		            <div class="togetherFinish"><% if(result == together.getPersonnel() || now>=that) {
                        %><em class="end">모집완료</em>
                        <%} else { %>
                        	<em class="ing">모집중</em> 
                        <%} %></div>
		        </div>
		     <% 
		     List<Review> reviews = null;
		    	if(together.getSpotType().equals("T")){
		    		 reviews = ReviewsDAO.selectProTogetherReviewTourList(together.getNo());
		    	}else{
		    		 reviews = ReviewsDAO.selectProTogetherReviewfoodList(together.getNo());
		    	}//if end
		     for( Review review : reviews){ %>
		        <div class="otherPerson">
		            <div class="togetherReviewMal"><img src="img/mal.jpg"></div>
		            <div class="togetherReviewIce"><img src="img/ice<%=review.getHice() %>.png"></div>
		            <a href="profile.jsp?no=<%=review.getDounorNo()%>"><div class="togetherReviewFace"><img src="/profile/<%=review.getProfile()%>" width="30" height="30"></div></a>
		            <span class="togetherReviewNick"><%=review.getNickname()%></span>
		            <span class="togetherReviewDay"><%=review.getRegdate() %></span>
		            <div class="togetherReviewContent"><%=review.getContents() %></div>
		            <div class="heart togetherReviewHeart"><img src="img/heart.png" width="20" height="20"></div>
		            <div class="siren togetherReviewSiren"><img src="img/siren.png" width="20" height="20"></div>
		            <div class="togetherReviewPic"><i class="far fa-images"></i></div>
		        </div><!--.otherPerson end-->
		        <% }//for end %>
		 </li><!-- .togetherPerson end -->
		 <% }//for end %>
    </ul><!--.proTogetherContents end-->
    	<%
        	int TogetherCount = TogethersDAO.selectProTogetherCount(dounor.getNo());
        	if(TogetherCount==0){
        %>
        <div id="emptyTogetherListBox">
        	<p id="emptyTogetherList">작성하신 동행이 없습니다.</p>
        </div>
        <%}//if end %>
</div><!--.proTogetherList end-->

<!-- review -->
<div class="proReview" >
    <ul id="reviewList">
				<% 
		List<Review> list = ReviewsDAO.selectProReviewList(dounor.getNo());
		for(Review review:list){ %>
		    <li class="reviewOneBox">
		        <div class="reviewMal"><img src="img/mal.jpg"></div>
		        <div class="reviewIce"><%
		        int reviewHice = 0;	
		        if(review.getSpotType().equals("F")){
		        	reviewHice = ReviewsDAO.selectProReviewFoodHice(review.getNo());	
		        }else{
		        	reviewHice = ReviewsDAO.selectProReviewTourHice(review.getNo());
		        }%>
		        <img src="img/ice<%=reviewHice %>.png"></div> 
		        <div class="reviewFace"><img src="/profile/<%=dounor.getProfile()%>" width="30" height="30"></div>
		        <span class="reviewNick"><%=dounor.getNickname()%></span>
		        <span class="reviewDay"><%
		        %><%=review.getRegdate() %></span>
		        <div class="reviewContent"><%=review.getContents() %></div>
		        <div class="heart reviewHeart"><img src="img/heart.png" width="20" height="20"></div>
		        <div class="siren reviewSiren"><img src="img/siren.png" width="20" height="20"></div>
		        <div class="reviewPic">
		        	<%
		        	if(review.getPicRoute()!=null){
			        	%>
			        	<i class="far fa-images"></i>
			        	<%}//if end %>
			        	<div class="reviewNum"><%=review.getNo() %></div>
			        	<div class="reviewHiceNum"><%=reviewHice %></div>
			        </div>
			        <% if(review.getSpotType().equals("F")){ %>
			       	<div class="reviewLocation"><%=review.getSpotName() %></div>
			        <% } else{ %>
			        <div class="reviewLocation"><%=review.getSpotName() %></div>
			        <% } // if~else end %>
			    </li><!--reviewOneBox-->
			<%
			}//for end %>
	    </ul>
        <%
        	int reviewCount = ReviewsDAO.selectProReviewCount(dounor.getNo());
        	if(reviewCount==0){
        %>
        <div id="emptyReviewListBox">
        	<p id="emptyReviewList">작성하신 리뷰가 없습니다.</p>
        </div>
        <%}//if end %>
</div>
<%-- <div class="proReview" >
    <ul id="reviewList">
	<script type="text/template" id="proReviewTmp">
		<@_.each(proReview,function(review){@>
    		<li class="reviewOneBox" value="<@=review.no@>">
				<div class="reviewNum"><@=review.no@></div>
		        <div class="reviewMal"><img src="img/mal.jpg"></div>
		        <div class="reviewIce"><img src="/img/ice3.png"></div>
		        <div class="reviewFace"><img src="/profile/<@=review.profile@>" width="30" height="30"></div>
		        <span class="reviewNick"><@=review.nickname@></span>
		        <span class="reviewDay"><@=review.regdate @></span>
		        <div class="reviewContent"><@=review.contents@></div>
		        <div class="heart reviewHeart"><img src="img/heart.png" width="20" height="20"></div>
		        <div class="siren reviewSiren"><img src="img/siren.png" width="20" height="20"></div>
		        <div class="reviewPic"><i class="far fa-images"></i></div>
		        <a href="#" class="reviewLocation"><@=review.spotName@></a>   		       
		    </li>
		<@})@>
	</script><!--reviewOneBox-->
    </ul>
    <%
        	int reviewCount = ReviewsDAO.selectProReviewCount(dounor.getNo());
        	if(reviewCount==0){
        %>
        <div id="emptyReviewListBox">
        	<p id="emptyReviewList">작성하신 리뷰가 없습니다.</p>
        </div>
        <%}//if end %>
</div> --%>
	<!-- 리뷰 팝업 -->
    <div id="reviewContents">
    
    <script type="text/template" id="proReviewDetailTmp">
		<div id="reviewTitle">
            <span>REVIEW</span>
            <img class="reviewTopHeart heart" src="img/emptyHeart.png" width="25" height="25">
            <button class="reviewBoxCloseBtn"><i class="fas fa-times"></i></button>
        </div>
        <@ if(proReviewDetail.spotType=="T"){@>
			<a href="tourDetail.jsp?no=<@=proReviewDetail.noSpot@>" class="reviewSpotName"><@=proReviewDetail.spotName@></a>
		<@ }else{ @>
		<a href="foodDetail.jsp?no=<@=proReviewDetail.noSpot@>" class="reviewSpotName"><@=proReviewDetail.spotName@></a>
        <@ } @>
		<div class="reviewPicContents">
            <div>       
                <ul class="reviewPicList">
                    <li>
                        <img class="reviewPic" src="/review/<@=proReviewDetail.picRoute @>"/>
                        <img class="reviewPicUser" src="/profile/<@=proReviewDetail.profile @>">
                    </li>
                </ul>
            </div>
        </div>
        <div id="personReview">
            <div class="otherPerson">
                <img class="reviewUser" src="/profile/<@=proReviewDetail.profile @>">
                <p class="reviewNickname"><@=proReviewDetail.nickname@></p>
                <img class="reviewHice" src="img/ice<@=proReviewDetail.hice@>.png">
                <p class="reviewDate"><@=proReviewDetail.formatRegdate@></p>
                <div class="reviewContentsBox"><p class="reviewContents"><@=proReviewDetail.contents@></p></div>
                <button class="reviewSiren"><img  src="img/siren.png" width="25" height="25"></button>
                <img class="reviewHeart heart" src="img/emptyHeart.png" width="25" height="25">
            </div>
        </div>
	</script><!--reviewPicList-->
    </div>
<!-- 리뷰 팝업 end -->

<!-- founder -->

<div class="founderContents">
<!--  <div id="nextTime">
    	<p>현재 준비중입니다.</p>
    	<img src="/img/chopa.jpg"/>
 </div> -->
    <div id="founderSearchList">
        <input id="founderSearch" placeholder="내용을 입력해 주세요." />
        <button id="founderSearchBtn"><img src="img/Search.png" width="20" height="20"></button>
    </div><!-- #founderSearchList end -->
	
	<%
        int founderTourCount = SpotsDAO.selectProTourFounderCount(dounor.getNo());
     if(founderTourCount>0){   
     %>
     <div class="founderTitleBox">
        <span class="founderName">관광명소</span>
        <p class="founderAmount"><%=founderTourCount %></p..>
        <a class="founderDetail" href="tour.jsp">+더보기</a>
        <button class="founderBtn founderLeftBtn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="founderBtn founderRightBtn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="founderAttractionBox">
        <ul id="founderAttractionList">
        <%
        List<Spot> founderTours = SpotsDAO.selectProTourFounder(dounor.getNo());
		for(Spot founderTour : founderTours ){
        %>
			<li class="founderAttraction contentsBox">
		        <div class="founderBox">
		            <a href="tourDetail.jsp?no=<%=founderTour.getNo() %>" class="founderAttractionImg"><img src="/spot/<%=founderTour.getPicname()%>"></a>
		            <div class="founderStar founderAttractionStar"><img src="img/star.png" width="20" height="20"></div>
		        <div class="hashBox">
	            <% 
	            List<Tag> hashs = TagsDAO.selectTag(founderTour.getNo());
	            for (Tag hash : hashs){ 
	            	System.out.println("Tour해쉬태그:"+hash.getName());
	            %>
	            	<a href="search.jsp?no="><div class="h1 hash">#<%=hash.getName() %></div></a>
				<% } //for end %>
	            </div>
		        </div>
		        <div class="founderBox_m">
		            <img class="founderUser" src="/profile/<%=founderTour.getProfile() %>">
		            <a href="tourDetail.jsp?no=<%=founderTour.getNo() %>" class="founderAttractionName"><%=founderTour.getName() %></a>
		 			<img class="founderMoney" src="img/coin.png" width="20" height="20" >
		            <div class="founderAttractionNickname"><%=founderTour.getNickname() %></div>
		            	<% 
			            Double hice = TourGradesDAO.selectTourHice(founderTour.getNo());
			            int num=0;
			            if(hice >=0.0 && hice <1.5){
			            	num=1;
			            }else if(hice >=1.5 && hice <2.5){
			            	num=2;
			            }else if(hice >=2.5 && hice <3.5){
			            	num=3;
			            }else if(hice >=3.5 && hice <4.5){
			            	num=4;
			            }else if(hice >=4.5 && hice <=5.0){
			            	num=5;
			            }
			            %>
		            <img class="founderIce" src="img/ice<%=num %>.png">
		            <div class="founderHeart founderAttractionHeart"><img src="img/heart.png" width="20" height="20"></div>
		        </div>
		    </li><!-- attraction-->
		<% }//for end %>
        </ul>
    </div>
	<%}//if end 파운더 관광명소 값이 없을경우 안나옴 %>
	
	<%
        int founderFoodCount = SpotsDAO.selectProFoodFounderCount(dounor.getNo());
		if(founderFoodCount>0){
	 %>
    <div class="founderTitleBox">
        <span class="founderName">음식점</span>
        <p class="founderAmount"><%=founderFoodCount %></p>
        <a class="founderDetail" href="food.jsp">+더보기</a>
        <button class="founderBtn founderLeftBtn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="founderBtn founderRightBtn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="founderRestaurantBox">
        <ul id="founderRestaurantList">
		 <%
        List<Spot> founderFoods = SpotsDAO.selectProFoodFounder(dounor.getNo());
		for(Spot founderFood : founderFoods ){
        %>
		<li class="founderRestaurant contentsBox">
	        <div class="founderBox">
	            <a href="foodDetail.jsp?no=<%=founderFood.getNo() %>" class="founderRestaurantImg"><img src="/spot/<%=founderFood.getPicname()%>"></a>
	            <div class="founderStar founderRestaurantStar"><img src="img/star.png" width="20" height="20"></div>
	            <div class="hashBox">
	            <% 
		            List<Tag> hashs = TagsDAO.selectTag(founderFood.getNo());
		            for (Tag hash : hashs){ 
		            	System.out.println("Food해쉬태그:"+hash.getName());
		            %>
		            	<a href="search.jsp?no="><div class="h1 hash">#<%=hash.getName() %></div></a>
					<% } //for end %>
				</div>
	        </div>
	        <div class="founderBox_m">
	            <img class="founderUser" src="/profile/<%=founderFood.getProfile()%>">
	            <a href="roodDetail.jsp?no=<%=founderFood.getNo() %>" class="founderRestaurantName"><%=founderFood.getName() %></a>
	            <div class="founderRestaurantRealWon" >
	                <%
	
	                int count = 0;
	                int value = founderFood.getPrice();
	
	                if(value<=10000){
	                count=1;
	                }else if(value>10000 && value<=20000){
	                count=2;
	                }else if(value>20000 && value<=30000){
	                count=3;
	                }else{
	                count=4;
	                }
	                
	                for(int i = 0; i < count;i++) {
	                %><img class="founderRealWon " src="img/won.png" width="20" height="20">
	                <%} %>
	            </div>
	            <div class="founderRestaurantNickname"><%=founderFood.getNickname() %></div>
	            <% 
		            Double hice = FoodGradesDAO.selectFoodHice(founderFood.getNo());
	
		            int num=0;
		            if(hice >=0.0 && hice <1.5){
		            	num=1;
		            }else if(hice >=1.5 && hice <2.5){
		            	num=2;
		            }else if(hice >=2.5 && hice <3.5){
		            	num=3;
		            }else if(hice >=3.5 && hice <4.5){
		            	num=4;
			            }else if(hice >=4.5 && hice <=5.0){
			            	num=5;
			            }
			            %>
		            <img class="founderIce" src="img/ice<%=num %>.png">
		            <div class="founderHeart founderRestaurantHeart"><img src="img/heart.png" width="20" height="20"></div>
		        </div>
		    </li><!-- restaurant-->
			<%}//for end%>
	        </ul>
	    </div>
	    <%}//if end 파운더 음식점이 없다면  %>
	     <%
	     if(founderTourCount==0 && founderFoodCount==0){
	        %>
	        <div id="emptyFounderListBox">
	        	<p id="emptyFounderList">찾으신 스팟들이 없습니다.</p>
	        </div>
	        <%}//if end %>

</div><!--#founderContents end-->

<!-- scrap -->
<div class="scrapContents" >
 <!--    <div id="nextTime">
    	<p>현재 준비중입니다.</p>
    	<img src="/img/chopa.jpg"/>
    </div> -->
    
    <div id="scrapSearchList">
        <input id="scrapSearch" placeholder="내용을 입력해 주세요." />
        <button id="scrapSearchBtn"><img src="img/Search.png" width="20" height="20"></button>
    </div><!-- #scrapSearchList end -->

    <%
    	int scrapTourNum = DounorSavesDAO.selectProScrapTourCount(dounor.getNo());
    	if(scrapTourNum>0){
    %>
    <div class="scrapTitleBox">
        <span class="scrapName">관광명소</span>
        <p class="scrapAmount"><%=scrapTourNum %></p>
        <a href="tourDetail.jsp?no="  class="scrapDetail" href="tour.jsp?no=">+더보기</a>
        <button class="scrapBtn scrapLeftBtn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="scrapBtn scrapRightBtn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="scrapAttractionBox">
        <ul id="scrapAttractionList">
        <%
        	List<DounorSave> scrapTours = DounorSavesDAO.selectProScrapTourList(dounor.getNo());
        	for(DounorSave scrapTour :scrapTours){
        %>
			<li class="scrapAttraction contentsBox" >
		        <div class="scrapBox">
		            <a href="tourDetail.jsp?no=<%=scrapTour.getSpotNo() %>" class="scrapAttractionImg"><img src="/spot/<%=scrapTour.getPicname()%>"></a>
		            <div class="scrapStar scrapAttractionStar"><img src="img/star.png" width="20" height="20"></div>
		        <div class="hashBox">
	            <% 
	            System.out.println("스크랩투어번호 :"+scrapTour.getSpotNo());
	            List<Tag> hashs = TagsDAO.selectTag(scrapTour.getSpotNo());
	            for (Tag hash : hashs){ 
	            	System.out.println("해쉬태그:"+hash);
	            %>
	            	<a href="search.jsp?no="><div class="h1 hash">#<%=hash.getName() %></div></a>
				<% } //for end %>
	            </div>
		        </div>
		        <div class="scrapBox_m">
		            <a href="profile.jsp?no=<%=scrapTour.getNoDounor() %>" ><img class="scrapUser" src="/profile/<%=scrapTour.getProfile() %>"></a>
		            <a href="tourDetail.jsp?no=" class="scrapAttractionName"><%=scrapTour.getSpotName() %></a>
					<%
		            if(scrapTour.getPrice()>0){
		            	%><img class="scrapmoney" src="/img/coin.png" width="20" height="20" >
		            <%}//if end%>
		            <div class="scrapAttractionNickname"><%=scrapTour.getNickname() %></div>
		             <% 
		            Double hice = FoodGradesDAO.selectFoodHice(scrapTour.getSpotNo());
	
		            int num=0;
		            if(hice >=0.0 && hice <1.5){
		            	num=1;
		            }else if(hice >=1.5 && hice <2.5){
		            	num=2;
		            }else if(hice >=2.5 && hice <3.5){
		            	num=3;
		            }else if(hice >=3.5 && hice <4.5){
		            	num=4;
		            }else if(hice >=4.5 && hice <=5.0){
		            	num=5;
		            }
		            %>
		            <img class="scrapIce" src="img/ice<%=num %>.png">
		            <div class="scrapHeart scrapAttractionHeart"><img src="img/heart.png" width="20" height="20"></div>
		        </div>
		    </li><!-- attraction-->
		    <%}//for end %>
        </ul>
    </div>
    <%}//if end 스크랩 관광명소 %>


	<%
		int scrapFoodNum = DounorSavesDAO.selectProScrapFoodCount(dounor.getNo());
		if(scrapFoodNum>0){
	%>
    <div class="scrapTitleBox">
        <span class="scrapName">음식점</span>
        <p class="scrapAmount"><%=scrapFoodNum %></p>
        <a href="foodDetail.jsp?no=" class="scrapDetail" href="food.jsp?no=">+더보기</a>
        <button class="scrapBtn scrapLeftBtn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="scrapBtn scrapRightBtn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="scrapRestaurantBox">
        <ul id="scrapRestaurantList">
			<%
			List<DounorSave> scrapFoods = DounorSavesDAO.selectProScrapFoodList(dounor.getNo());
			for( DounorSave scrapFood : scrapFoods ){
				%>
			<li class="scrapRestaurant contentsBox">
			        <div class="scrapBox">
			            <a href="foodDetail.jsp?no=<%=scrapFood.getSpotNo() %>" class="scrapRestaurantImg"><img src="/spot/<%=scrapFood.getPicname() %>"></a>
			            <div class="scrapStar scrapRestaurantStar"><img src="img/star.png" width="20" height="20"></div>
			            <a href="search.jsp?no=" class="scrapS1 scrapHash">#<a>
			            <a href="search.jsp?no=" class="scrapS2 scrapHash">#</a>
			        </div>
			        <div class="scrapBox_m">
			            <a  href="profile.jsp?no=<%=scrapFood.getNoDounor() %>"><img class="scrapUser" src="/profile/<%=scrapFood.getProfile() %>"></a>
			            <a href="foodDetail.jsp?no=" class="scrapRestaurantName"><%=scrapFood.getSpotName() %></a>
			            <div class="scrapRestaurantRealWon" >
			                 <%int count = 0;
				                int value = scrapFood.getPrice();
				
				                if(value<=10000){
				                	count=1;
				                }else if(value>10000 && value<=20000){
				                	count=2;
				                }else if(value>20000 && value<=30000){
				                	count=3;
				                }else{
				                	count=4;
				                }
				                for(int i = 0; i < count;i++) {
					                %><img class="scrapRealWon" src="img/won.png" width="20" height="20">
					                <%}//for end %>
					            </div>
					            <div class="scrapRestaurantNickname"><%=scrapFood.getNickname() %></div>
					        <% 
		            Double hice = FoodGradesDAO.selectFoodHice(scrapFood.getSpotNo());
	
		            int num=0;
		            if(hice >=0.0 && hice <1.5){
		            	num=1;
		            }else if(hice >=1.5 && hice <2.5){
		            	num=2;
		            }else if(hice >=2.5 && hice <3.5){
		            	num=3;
		            }else if(hice >=3.5 && hice <4.5){
		            	num=4;
		            }else if(hice >=4.5 && hice <=5.0){
		            	num=5;
		            }
		            %>
			            <img class="scrapIce" src="/img/ice<%=num %>.png">
			            <div class="scrapHeart scrapRestaurantHeart"><img src="img/heart.png" width="20" height="20"></div>
			        </div>
			    </li><!-- restaurant-->
			   <%}//for end %> 
        </ul>
    </div>
    <%}//if end 스크랩 food %>
	
	<%
		int scrapHlogNum = 0;		   
		if(scrapHlogNum>0){
	%>
    <div class="scrapTitleBox">
        <span class="scrapName">HLog</span>
        <p class="scrapAmount">1</p>
        <a href="hlogDetail.jsp?no=" class="scrapDetail" href="hlog.jsp?no=">+더보기</a>
        <button class="scrapBtn scrapLeftBtn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="scrapBtn scrapRightBtn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="scrapHLogBox">
        <ul id="scrapHLogList">

        </ul>
    </div>
    <%}//if end 스크랩 Hlog %>
    
    <%
	     if(scrapFoodNum==0 && scrapTourNum==0 && scrapHlogNum==0){
	%>
	        <div id="emptyFounderListBox">
	        	<p id="emptyFounderList">스크랩한 글들이 없습니다.</p>
	        </div>
	        <%}//if end %>
    

</div><!--#scrapContents end-->




<div id="footer">
    <a href="">회사소개</a>
    <a href="">이용약관</a>
    <a href="">개인정보처리방침</a>
    <a href="">고객센터</a>
    <a href="">&copy; I(YOLO) corp.</a>
</div>

<div id="followShow" class="show"><!--팝업-->
    <p class="fTitle"><u>팔로우</u></p>
   <% 
   List<Follow> following = FollowDAO.selectFollowingList(dounor.getNo());
   Follow myFollowingNum = new Follow();
   for(Follow follow : following) { 
	   	myFollowingNum.setNoFollowing(follow.getDounorNo());
	   	myFollowingNum.setNoFollower(loginDounor.getNo());
	   	int myFollowingFlag = FollowDAO.selectFollowingNow(myFollowingNum);
	    System.out.println("팔로잉의 팔로잉 = "+ myFollowingNum.getNoFollowing()+" 팔로잉의 팔로워 = "+ myFollowingNum.getNoFollower());
	   	System.out.println("팔로잉을 했는가? = "+ myFollowingFlag);
   %>
    <li class="followView flag1">
        <img class="fImg" src="/profile/<%=follow.getDounorProfile()%>"/>
        <span class="fNickname"><%=follow.getDounorNickname() %></span>
        <button value="<%=follow.getDounorNo() %>" class="followingBtn f_btn
        <%
        	if(myFollowingFlag==1){
        %>follow<%}%>"><%if(myFollowingFlag==1){%>팔로우 중<%}else{ %>Now Following<%}//if~else end %></button>
    </li>
    <% }//for end %>
</div><!-- #followBtn end -->

<div id="followersShow" class="show"><!--팝업-->
	<p class="fTitle"><u>팔로워</u></p>
   	 <% 
   	 List<Follow> follower = FollowDAO.selectFollowerList(dounor.getNo());
   	Follow myFollowerNum = new Follow();
   	 for(Follow followers : follower) { 
	   	myFollowerNum.setNoFollowing(loginDounor.getNo());
	   	myFollowerNum.setNoFollower(followers.getDounorNo());
	    int myFollowerFlag = FollowDAO.selectFollowerNow(myFollowerNum);
	    System.out.println("팔로워의 팔로잉 = "+ myFollowerNum.getNoFollowing()+" 팔로워의 팔로워 = "+ myFollowerNum.getNoFollower());
	    System.out.println("팔로워을 했는가? = "+ myFollowerFlag);
     %>
    <li class="followView flag1">
        <img class="fImg" src="/profile/<%=followers.getDounorProfile() %>"/>
        <span class="fNickname"><%=followers.getDounorNickname() %></span>
        <button value="<%=followers.getDounorNo() %>" class="followingBtn f_btn" <%
        	if(myFollowerFlag==1){
        %>follow<%}%>"><%if(myFollowerFlag==1){%>팔로우 중<%}else{%>Now Following<%}//if~else end %></button>
    </li>
    <% }//for end %>
</div><!-- #followersBtn end -->
<div id="popup"></div>



<%@ include file="WEB-INF/template/popLogin.jsp" %>
<script src="js/moment-with-locales.js"></script>
<script src="js/jquery.js"></script>
<script src="js/underscore-min.js"></script>
<script>

		//jsp에서 언더스코어를 활용하기 위해서
		//% -> @ 로 사용
	 _.templateSettings = {
		interpolate: /\<\@\=(.+?)\@\>/gim,
		evaluate: /\<\@([\s\S]+?)\@\>/gim,
		escape: /\<\@\-(.+?)\@\>/gim
		};

	
	//리뷰
    	
<%-- 	var proReviewTmp = _.template($("#proReviewTmp").html());
	
	var pageNo = 1;
	
	
    url:"ajax/proReview.jsp",
        type:"get",
        dataType:"json",
        data:{"pageNo" : pageNo, "no" : dounorNo},
        error:function (request,status,error) {
            alert("에러");
            alert(request+status+error);
        },success:function (json) {
        	//json.list
        	//json.paginate
        	console.log(json.list[0].no);
            $("#reviewList").append(proReviewTmp({"proReview":json.list}));
        	
        	$("#paginateBox").html(json.paginate);
        }
    });	 --%>
	
	//리뷰 팝업
	var dounorNo = <%=dounor.getNo() %>;
	var proReviewNum = 0;
	var reviewHiceNum = 0;
	var proReviewDetailTmp = _.template($("#proReviewDetailTmp").html());
	
	
	function getproReviewDetail() {
		
		$.ajax({
	        url:"ajax/proReviewDetail.jsp",
	        type:"get",
	        dataType:"json",
	        data:{"no" : proReviewNum, "noDounor" : dounorNo,"hice":reviewHiceNum,},
	        error:function (request,status,error) {
	            alert("에러");
	            alert(request+status+error);
	        },success:function (json) {
	        	console.log(json);
	            $("#reviewContents").append(proReviewDetailTmp({"proReviewDetail":json}));
	        }
	    });
	}//getproReviewDetail() end
	
	
	
	$(".reviewPic").click(function() {
		
		console.log("리뷰상세 클릭");
		proReviewNum = $(this).find('.reviewNum').text();
		reviewHiceNum = $(this).find('.reviewHiceNum').text();
		console.log("proReviewNum : "+ proReviewNum);
		console.log("reviewHiceNum : "+ reviewHiceNum);
		getproReviewDetail();
		$('#reviewContents').css('display','block');
		console.log("proReviewNum : "+proReviewNum + " dounorNo : "+ dounorNo);
	});
	
	 $('#reviewContents').on("click",".reviewBoxCloseBtn",function () {
	    	console.log("리뷰팝업 닫기");
	    	$('#reviewContents').children().remove();
	    	$('#reviewContents').css('display','none'); 
	    	console.log("리뷰팝업 닫기 누름");
	 });

	
    var $follow = $("#follow");
    var $followShow = $("#followShow");
    var $followers = $("#followers");
    var $followersShow = $("#followersShow");
    var $popup = $("#popup");
    var $show = $(".show .followingBtn");
    var $followingBtn = $(".followingBtn");  
    var $f_btn = $(".f_btn");  


    $follow.click(function () {
        console.log("팔로우 클릭");
        $followShow.show();
        $popup.show(); 
        console.log("팔로우창 켜짐");
    });

    $followers.click(function () {
        console.log("팔로우 클릭");
        $followersShow.show();
        $popup.show();
        console.log("팔로우창 켜짐");
    });

    $popup.click(function () {
        $popup.hide();
        $followShow.hide();
        $followersShow.hide();
    });

    //팔로우 버튼 클릭 시
    var followerNum = 0;
    var followingNum = 0;
    
    $f_btn.click(function () {

        var flag = $(this).hasClass('follow');
        console.log(flag);
        followerNum = $(this).val();  
    	followingNum = <%=loginDounor.getNo()%>;
    	
    	console.log("팔로우 유저 넘버 : " + followerNum+ "팔로잉 유저 넘버 : " + followingNum);
        if(flag){   		
        	followBtnClick();
        	$(this).removeClass('follow').text("Now Following");
        	 console.log("true통과");
        }else{	
        	followBtnClick();
        	$(this).addClass('follow').text("팔로우 중");
        	 console.log("false통과");
        }//if~else end

    });

    
	function followBtnClick() {
		
		$.ajax({
	        url:"ajax/follow.jsp",
	        type:"get",
	        dataType:"text",
	        data:{"followerNo" : followerNum, "followingNo" : followingNum},
	        error:function (request,status,error) {
	            alert("에러");
	            alert(request+status+error);
	        },success:function (value) {
	        	console.log(value);
	        	
	        }
	    });
	}//followBtnClick() end


    //버튼 클릭시
    var px =0;

    $('.leftBtn').click(function () {
        px += 960;
        console.log(px);

        if(px > 0) {
            px = -1920;
        }

        $(this).parent().next().find('.contentsBox').css("left", px);
    });

    $('.rightBtn').click(function () {
        px -= 960;

        console.log(px);

        if(px < -1920) {
            px = 0;
        }

        $(this).parent().next().find('.contentsBox').css("left", px);
    });

    //메뉴 클릭시

    var $proHlog = $("#proHLog");
    var $proTogether = $("#proTogetherList");
    var $proReview = $("#proReview");
    var $proFonder = $("#founderContents");
    var $proScrap = $("#scrapContents");
    var $on = $(".on");
    var $off = $(".off");

    $("#menuList li").on("click",function (e) {
        var idx =$(this).index();
        //alert(idx);

        if(idx==0){
            $(".on").removeClass("on");
            $(".proHLog").addClass("on");
            console.log("Hlog클릭");

        }else if(idx==1){
            $(".on").removeClass("on");
            $(".proTogetherList").addClass("on");
            console.log("Together클릭");

        }else if(idx==2){
            $(".on").removeClass("on");
            $(".proReview").addClass("on");
            console.log("Review클릭");
        }else if(idx==3){
            $(".on").removeClass("on");
            $(".founderContents").addClass("on");
            console.log("founder클릭");
        }else{
            $(".on").removeClass("on");
            $(".scrapContents").addClass("on");
            console.log("scrap클릭");
        }//if~else end
    });

    //해더

    $('.search').click(function () {
        $('.menu').css("display",'none');
        $('.fo').slideDown(300);
        $('.search').css("display",'none');
        $('.searchText').focus();
    });
    $('.closeBtn').click(function () {
        $('.fo').hide();
        $('.menu').css("display",'block');
        $('.search').css("display",'block');
    });
    $('.login').click(function (e) {
        e.preventDefault();
        $('.login').css("display","none");
        $('.afterLogin').css("display","block");
    });

    
    
    $('.reviewList').on('click','.reviewBox', function name() {
		alert("리뷰등장");
    	console.log("리뷰등장");
		
	});
    $('.proTogetherContents').on('click','.togetherPerson', function name() {
    	alert("동행리뷰등장");
    	console.log("동행리뷰등장");
	});
    
    //다른유저가 들어올시
    var $li = $("#menuList li");
    $(document).ready(function () {
        //alert("1");

        var test = $li.eq(4).text();
        var test2= $li.eq(5).text();
        //alert(test);
        if(test==test2){
            //alert("1");
            $li.css("width","268px");
        }

    });

</script>
<script src="js/dounorPop.js"></script>
<script src="js/popReview.js"></script>
</body>
</html>