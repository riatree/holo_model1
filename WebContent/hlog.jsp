<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Set"%>
<%@page import="org.yolo.holo.dao.HLogsDAO"%>
<%@page import="org.yolo.holo.vo.HLog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String noStr = request.getParameter("no");
	int no = 0;	
	if(noStr != null){
		no = Integer.parseInt(noStr);
	}//if end
	HLog hLog = HLogsDAO.selectOne(no);
	
	if(hLog == null){
		response.sendRedirect("/hlogmain.jsp");
	}else{
		Set<Integer> viewPages = (Set) session.getAttribute("viewPages");
		if(viewPages == null){
			viewPages = new LinkedHashSet();
		}//if end
		if(!viewPages.contains(no)){
			HLogsDAO.updateHit(no);
			session.setAttribute("viewPages", viewPages);
			hLog.setHit(hLog.getHit()+1);
		}//if end

%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HLog</title>
    <%@ include file="/WEB-INF/template/link.jsp" %>
    <link rel="stylesheet" href="/css/holodetail.css">
    <link rel="stylesheet" href="/css/paginate.css">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <style>
    	#dateBox{
    		width : 500px; height: 100px;
    		background-color: #000;
    	}
        .profile img{
        	border-radius: 40px;
        }
       
        .regdate>.time{
        	font-size: 15px;
        }
        #paginateBox{
    		height: 50px;
    		margin: auto;
    		margin-bottom: 20px;
    	}
        
        #viewerSection{
        	margin-top : 20px;
        	border: 2px solid #424242;
        	border-radius: 10px; 
        }
        #viewerSection p{
        	font-size: 30px
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>

<div id="heroWrap"
	<% if(hLog.getTitlePic().contains(".")) { %>
		style = "background-image : url(<%=hLog.getTitlePic() %>)"
	<%} else{ %>
		style = "background-color :<%=hLog.getTitlePic() %>"
	<%} %>>
	<div class="screen_out"><%=hLog.getNo() %></div>
    <h2 class="hLogTitle"><%=hLog.getTitle() %></h2>
    <div id="dateBox">
    	<div class="dateValue"><%=hLog.getGoDate() %></div>
    	<div class="dateValue"><%=hLog.getComeDate() %></div>
    </div><!-- //dateBox -->
    <ul class="clickBox">
    <%-- <li class="scrap clickSpot"><img src="img/star_empty.png" width="40"><span>123</span></li> --%>
        <li class="like clickSpot"><img src="img/like_empty.png" width="40"><span><%=hLog.getLikeNum() %></span></li>
        <li><a href="profile.jsp?no=<%=hLog.getDounorNo()%>"><img src="/profile/<%=hLog.getProfile() %>" width="50" height="50" title="<%=hLog.getNickname()%>"/></a></li>
    </ul>
</div><!--//heroWrap-->

<div id="contentWrap">
    
    <div id="viewerSection"></div>
    
    <div id="donerGrade">
            <div class="hiceGrade">
                <div class="hiceTitle">HICE <span><i class="far fa-question-circle"></i></span></div>
                <div class="hiceLevel">
                       <img src="img/ice<%=hLog.getHice() %>.png" width="200px" height="300px">
                </div><!-- .hiceLevel end -->
                <div id="evaluation"></div>
            </div>

            <div class="travelGrade">
                <h3>여행스타일</h3>
                <ul class="travelStyle">
                    <li><img src="img/tight.png" width="50">타이트</li>
                    <li><img src="img/smooth.png" width="50">스무스</li>
                </ul>

                <h3>여행테마</h3>
                <ul class="travelType">
                    <li>TV여행</li>
                    <li>힐링여행</li>
                    <li>도심여행</li>
                    <li>액티비티</li>
                    <li>식도락</li>
                    <li>역사·문화</li>
                    <li>감성여행</li>
                    <li>야경여행</li>
                </ul>
                
                <h3>계절</h3>
                <ul class="season">
                    <li><img src="img/spring.png"> 봄</li>
                    <li><img src="img/sunmer.png"> 여름</li>
                    <li><img src="img/fool.png"> 가을</li>
                    <li><img src="img/winter.png"> 겨울</li>
                </ul>

                <h3>검색태그</h3>
                <ul class="searchTag">
                    <li class="tag">#asd</li>
                    <li class="tag">#asd</li>
                    <li class="tag">#asd</li>
                </ul>
            </div>
        </div>


    <div id="commentWrap">
        <h5 class="commentTitle">댓글</h5>
        <span class="commentNum">0</span>
        <div id="commentWrite">
            <h5>댓글달기</h5>
            <form id="commentForm" action="" method="post">
                <textarea id="writeArea" name="contents" placeholder="내용을 입력해주세요." maxlength="150"></textarea>
                <button class="commentBtn">댓글달기</button>                
            </form>
            <div class="commentCount"></div>
        </div><!--//commentWrite-->

        <div id="commentBox">
            <ul class="com"></ul>
            <div id="paginateBox" class="btn_box"></div>
        </div><!--//commentBox-->
    	
    </div><!--//commentWrap-->
</div><!--//contentWrap-->
<%@ include file="/WEB-INF/template/footer.jsp" %>
<script type="text/template" id="commentTmp"> 
	<@ _.each(comments,function(comment){ 
		var loginNo = <%=loginDounor.getNo() %>;
	@>
		 <li class="commentList">
            <div class="userBox">
                <a href=""><img src="profile/<@=comment.profile@>" alt="도우너(유저)의 사진"></a>
                <div class="nickname"><@=comment.nickname@></div>
            </div><!--//userBox-->
            <div class="commentBox">
                <div class="commentTime">
                    <span><i class="fas fa-user-clock"></i> <@=moment(comment.regdate).format("YYYY-MM-DD hh:mm:ss")@></span>
					 <@if(loginNo == comment.noDounor){@>
					 	
						<div class="btnBox">
                        	<a href="" class="btn">수정</a>
                        	<a href="" class="btn">삭제</a>
   	         		 	</div>
					 <@ } @>
	             </div>
                <div class="commentArea">
                    <div class="commentDetail"><@=comment.contents@></div>
                </div>
            </div>
        </li>
	<@ }) @>
</script>
<script src="js/underscore-min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/tui-code-snippet.min.js"></script>
<script src='js/markdown-it.js'></script>
<script src="js/to-mark.min.js"></script>
<script src="js/codemirror.js"></script>
<script src="js/highlight.js"></script>
<script src="js/squire-raw.js"></script>
<script src="js/tui-editor-Editor.js"></script>
<script src ="js/moment-with-locales.js"></script>
<script>
	_.templateSettings = {
		interpolate: /\<\@\=(.+?)\@\>/gim,
		evaluate: /\<\@([\s\S]+?)\@\>/gim,
		escape: /\<\@\-(.+?)\@\>/gim
		};

	$(function() {
	    $('.writeArea').keyup(function (){
	        var content = $(this).val();
	        $(this).height(((content.split('\n').length + 1)));
	        $('.commentCount').html(content.length + '/150');
	    });
	    $('.writeArea').keyup();
	});

    var tmp =_.template($("#commentTmp").html());

    var pageNo = 1;
    
    function getCommentList() {
    	$(".com").children().remove();
		$.ajax({
			url : "ajax/hlogComment.jsp",
			type : "get",
			dataType : "json",
			data : { "pageNo" : pageNo,
					 "no" : <%=no%>
					},
			error:function(request, status, error) {
				alert(request + status + error);
			},
			success:function(json){
				$('.commentNum').text(json.total);
				$(".com").append(tmp({"comments":json.list}));
				$("#paginateBox").html(json.paginate);
			}
		});//ajax() end
	};
    getCommentList();
    


	<%if(loginDounor!=null) { %>
    function insertComment() {
    	var noHLog = <%=no%>;
    	var dounorNo = <%=loginDounor.getNo()%>;
    	var contents = $('#writeArea').val();
    	
		$.ajax({
			url: "ajax/hlogCommentInsert.jsp",
			type:"post",
			dataType : "json",
			data: {
				"noHLog" : noHLog,
				"noDounor" : dounorNo,
				"contents" : contents
			},
			error:function(request, status, error) {
				alert("서버 점검 중입니다.");
				alert(request + status + error);
			},
			success:function(json){
				if(json.result) {
					 getCommentList();
					 
				}else {
					alert("다시 시도해주세요.");
				}
			}
		});
	}
   
	$("#commentForm").submit(function(e) {
		e.preventDefault();
		insertComment();	
	});
	
    
    <% } %>

    
    $(".btn_box").on("click","paginate a",function(e) {
    	e.preventDefault();
    	pageNo = $(this).text();
    	getCommentList();
    });
    
    
    $('#viewerSection').tuiEditor({
        viewer: true,
        height: 600,
        initialValue: `<%=hLog.getContents()%>`
    });

    
    $(document).ready(function() {
		if("<%=hLog.getTripStyle() %>" == "T"){
			$(".travelStyle>li").eq(0).addClass("on");
		}else if ("<%=hLog.getTripStyle() %>" == "S"){
			$(".travelStyle>li").eq(1).addClass("on");
		}
		displayHiceValue();
	});//readt() end
    
	function displayHiceValue() {
		var idx = <%=hLog.getHice() %>;
		if(idx == 1){
			$("#evaluation").text("혼자 가지마세요.");
		} else if (idx == 2) {
			$("#evaluation").text("혼자 갈 순 있어요.");
		} else if (idx == 3) {
			$("#evaluation").text("혼자 무난했어요.");
		}else if (idx == 4) {
			$("#evaluation").text("혼자가기 매력적이에요.");
		}else if (idx == 5) {
			$("#evaluation").text("혼자 완전 강추해요.");
		}
	}//displayHiceValue() end
	
	

</script>
</body>
</html>
<% }//if ~ else end %>