<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/default.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <style>
        #searchContents{
            width: 1080px;
            height: 1520px;
            position: relative;
            margin: auto;
        }

        .regionAmount{
            position: absolute;
            width: 10px;
            height: 15px;
            font-size: 15px;
            font-weight: bold;
            margin-left: 150px;
            margin-top: 5px;
            color: #FF8F00;
        }
        .locationOne{
            position: relative;
            width: 206.25px;
            height: 225px;
            float: left;
            margin-right: 43px;
            margin-bottom: 30px;
            border: 1px solid #9E9E9E;
            border-radius: 5px;
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            color:#000;
        }

        .locationOne .locationName {
            color: white;
            font-weight: bold;
            font-size: 28px;
            line-height: 180px;
        }
        .locationOne .locationName a {
            display: block;
            font-size: 30px;
            color: white;
            text-align: center;
            line-height: 155px;
            text-decoration: none;
        }
        .locationOne .locationImg {
            width: 240px;
            height: 200px;
            position: absolute;
        }

        .locationOne .locationImg img{
            width: 240px;
            height: 200px;
        }

        .locationOne .star>img {
            width: 30px;
            height: 30px;
        }

        .locationOne .hice img{
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -27px;
            margin-top: -30px;
        }

        /*관광명소*/

        .content span {
            color: #424242;
            position: absolute;
            left: 60px;
            font-size: 20px;
        }

        .content a {
            text-decoration: none;
            color: #424242;
            position: absolute;
            right: 90px;
        }
        .regionBox {
            width: 1080px;
            height: 50px;
            position: relative;
            transition: .2s ease;
        }

        .attractionBox {
            padding-bottom: 30px;
            height: 50px;
            position: relative;
            /*background-color: #424242;*/
        }

        .box {
            width: 290px;
            height: 280px;
            background-color: #424242;
            position: relative;
            float: left;
            margin-right: 45px;
        }

        .restaurantBox {
            padding-bottom: 30px;
            height: 50px;
            position: relative;
        }


        .btn {
            width: 60px;
            height: 280px;
            font-size: 30px;
            background-color: transparent;
            border: none;
            position: absolute;
            top: 60px;
        }
        .btnResion{
            width: 60px;
            height: 225px;
            font-size: 30px;
            background-color: transparent;
            border: none;
            position: absolute;
            top: 60px;
        }

        .leftBtn {
            left: 0px;
            outline: 0;
            cursor: pointer;
            position: absolute;
        }

        .rightBtn {
            left: 1020px;
            outline: 0;
            cursor: pointer;
            position: absolute;
        }


        /*여행지*/
        #regionbox{
            width: 960px;
            height: 200px;
            margin-bottom: 30px;
            position: relative;
            overflow: hidden;
            margin-left: 60px;
        }
        #regionList{
            width: 2880px;
            height: 202px;
            position: relative;
        }
        .locationOne{
            /*position: relative;*/
            width: 240px;
            height: 200px;
            float: left;
            margin: 0 39px;
            border-radius: 5px;
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .locationOne>img {
            position: absolute;
            width: 40px;
            height: 40px;
            right: 5px;
            bottom: 5px;
        }

        .locationName {
            position: relative;
            width: 240px;
            height: 200px;
        }

        .locationName a {
            display: block;
            font-size: 30px;
            color: white;
            text-align: center;
            line-height: 200px;
            text-decoration: none;
            font-weight: bold;
        }

        .locationOne .star {
            cursor: pointer;

            position: absolute;

            width: 30px;
            height: 20px;

            right: 2px;
            top: 0;

        }
        .star>img {
            width: 30px;
            height: 30px;
        }
        .iceBox {
            width: 40px;
            height: 40px;
            border-radius: 50px;
            background-color: white;

            border: 1px solid white;
            position: absolute;
            right: 5px;
            bottom: 5px;
        }


        /*공통*/

        .box {
            width: 290px;
            height: 200px;
            position: relative;
        }

        .box_m {
            position: relative;
            width: 288px;
            height: 78px;
            background-color: white;
            border: 1px #BDBDBD solid;
            margin-top: 200px;
        }
        .ice {
            position: absolute;
            width: 60px;
            height: 70px;
            top: 6px;
            right: 35px;
        }
        .s1 {
            position: absolute;
            right:90px;
        }
        .s2 {
            position: absolute;
        }
        .hash {
            width: 80px;
            height: 20px;
            background-color: coral;
            border-radius: 20px;
            font-size: 15px;
            text-align: center;
            line-height: 20px;
            color: white;
            float: left;
            display: block;
            position: absolute;
            bottom: 6px;
            right: 6px;

            overflow: hidden;
            white-space: nowrap; /*아래로 내려가는거 막기*/
            text-overflow: ellipsis;
        }
        .user {
            width: 40px;
            height: 40px;
            border-radius: 40px;
            position: absolute;
            top: 5px;
            left: 5px;
        }

        /*관광명소*/

        #attractionBox{
            width: 960px;
            height: 280px;
            margin-bottom: 30px;
            position: relative;
            overflow: hidden;
            margin-left: 60px;
        }
        #attractionList{
            width: 2880px;
            height: 280px;
            position: relative;
        }
        .attraction {
            margin: 0 15px;
            float: left;
            position: relative;
            width: 290px;
            height: 290px;
            border-radius: 3px;
            color: #000;
        }
        .box .attractionImg img {
            width: 290px;
            height: 200px;
        }
        .box .attractionStar {
            position: absolute;
            width: 70px;
            height: 20px;
            right: 0;
            top: 2px;
        }

        .box_m .attractionHeart {
            position: absolute;
            width: 50px;
            height: 20px;
            right: 0;
            bottom: 2px;
        }
        .attractionName {
            position: absolute;
            width: 100px;
            height: 25px;
            top:5px;
            left: 55px;
            font-weight: bold;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .attractionNickname {
            position: absolute;
            width: 50px;
            height: 20px;
            /* border: 1px solid #424242;*/
            left: 10px;
            bottom: 5px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }



        /*음식점*/

        #restaurantBox{
            width: 960px;
            height: 280px;
            margin-bottom: 30px;
            position: relative;
            overflow: hidden;
            margin-left: 60px;
        }
        #restaurantList{
            width: 2880px;
            height: 280px;
            position: relative;
        }
        .restaurant {
            margin: 0 15px;
            float: left;
            position: relative;
            width: 290px;
            height: 290px;
            border-radius: 3px;
            color: #000;
        }


        .box .restaurantImg img {
            width: 290px;
            height: 200px;
        }


        .box .restaurantStar {
            position: absolute;
            width: 70px;
            height: 20px;
            right: 0;
            top: 2px;
        }

        .box_m .restaurantHeart {
            position: absolute;
            width: 50px;
            height: 20px;
            right: 0;
            bottom: 2px;
        }

        .restaurantName {
            position: absolute;
            width: 100px;
            height: 25px;
            top:5px;
            left: 55px;
            font-weight: bold;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .restaurantRealWon{
            position: absolute;
            width: 100px;
            height: 25px;
            bottom:0;
            left: 60px;
            font-weight: bold;
        }
        .realWon {
            float: left;
        }
        .restaurantNickname {
            position: absolute;
            width: 50px;
            height: 20px;
            /* border: 1px solid #424242;*/
            left: 10px;
            bottom: 5px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        /*Hlog*/

        .hLogBox {
            padding-bottom: 30px;
            height: 50px;
            position: relative;
        }


        #hLogBox{
            width: 960px;
            height: 280px;
            margin-bottom: 30px;
            position: relative;
            overflow: hidden;
            margin-left: 60px;
        }
        #hLogList{
            width: 2880px;
            height: 280px;
            position: relative;
        }
        .hlog {
            margin: 0 15px;
            float: left;
            position: relative;
            width: 290px;
            height: 290px;
            border-radius: 3px;
            color: #000;
        }
        .box .hlogImg img {
            width: 290px;
            height: 200px;
        }
        .box .hlogStar {
            position: absolute;
            width: 70px;
            height: 20px;
            right: 0;
            top: 2px;
        }

        .box_m .hlogHeart {
            position: absolute;
            width: 50px;
            height: 20px;
            right: 0;
            bottom: 2px;
        }
        .hlogName {
            position: absolute;
            width: 100px;
            height: 25px;
            top:5px;
            left: 55px;
            font-weight: bold;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .hlogNickname {
            position: absolute;
            width: 50px;
            height: 20px;
            /* border: 1px solid #424242;*/
            left: 10px;
            bottom: 5px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }


        #seachText {
            width: 1080px;
            height: 100px;
            margin: auto;
            margin-top: 70px;
            font-size: 25px;
            line-height: 100px;
        }



    </style>
</head>
<body>
<div id="header">
    <h1 class="screen_out">HOLO:Happen Of Leave Oneself</h1>
    <div class="headMenu">
        <ul>
            <li id="logoImage"><a href="index.html">HOLO</a></li>
            <li class="menu"><a href="">여행지</a></li>
            <li class="menu"><a href="">관광명소</a></li>
            <li class="menu"><a href="">음식점</a></li>
            <li class="menu"><a href="">H-Log</a></li>
            <li class="menu"><a href="">동행</a></li>
            <li class="fo">
                <form action="search.html" method="get">
                    <input class="searchText" name="search" autocomplete="off" placeholder="검색어를 입력하세요"/>
                    <button class="searchBtn screen_out"><i class="fas fa-search"></i></button>
                </form>
                <button class="closeBtn"><i class="fas fa-times"></i></button>
            </li>
            <li class="search"><i class="fas fa-search"></i></li>
            <li class="login"><a href="">로그인</a></li>
            <li class="afterLogin"><a href=""><i class="fas fa-bell"></i></a></li>
            <li class="afterLogin"><a href=""><i class="fas fa-user"></i></a></li>
        </ul>
    </div>
</div> <!--//header-->

<div id="seachText">
    <span>ㅁㅁㅁ</span>
    <span>의 검색결과</span>
</div>


<div id="searchContents">

    <!--여행지-->
    <div class="content regionBox">
        <span>여행지</span>
        <p class="regionAmount">1</p>
        <a href="">+더보기</a>
        <button class="btnResion leftBtn"><i class="fas fa-angle-left"></i></button>

        <button class="btnResion rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="regionbox">
        <div id="regionList">

        </div>

    </div>

    <div class="content attractionBox">
        <span>관광명소</span>
        <p class="regionAmount">1</p>
        <a href="">+더보기</a>
        <button class="btn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="btn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="attractionBox">
        <div id="attractionList">

        </div>
    </div>

    <div class="content restaurantBox">
        <span>음식점</span>
        <p class="regionAmount">1</p>
        <a href="">+더보기</a>
        <button class="btn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="btn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="restaurantBox">
        <div id="restaurantList">

        </div>
    </div>

    <div class="content hLogBox">
        <span>HLog</span>
        <p class="regionAmount">1</p>
        <a href="">+더보기</a>
        <button class="btn leftBtn"><i class="fas fa-angle-left"></i></button>
        <button class="btn rightBtn"><i class="fas fa-angle-right"></i></button>
    </div>
    <div id="hLogBox">
        <div id="hLogList">

        </div>
    </div>

</div><!--#scrapContents end-->

<div id="footer">
    <div class="end">
        <a href="#">회사소개</a>
        <a href="#">이용약관</a>
        <a href="#">개인정보처리방침</a>
        <a href="#">고객센터</a>
        <a href="#">&copy; I(YOLO) corp.</a>
    </div>
</div> <!--//footer-->


<script type="text/template" id="regionTmp">
    <@ _.each(regions,function(region){ @>
    <div class="locationOne contentsBox">
        <div class="locationImg"><img src="img/<@=region.pic@>"></div>
        <div class="locationName"><a href="loaction.jsp?no"><@=region.regionName@></a></div>
        <div class="star"><img src="img/star.png" width="30" height="30"></div>
        <div class="iceBox"></div>
        <img src="img/<@=region.ice@>">
    </div><!--locationOne -->
    <@})@>
</script>

<script type="text/template" id="hlogTmp">
    <@ _.each(hlogs,function(hlog){ @>
    <a href="hlogDetail.jsp?no" class="hlog contentsBox">
        <div class="box">
            <div class="hlogImg"><img src="img/<@=hlog.image@>"></div>
            <div class="star hlogStar"><img src="img/star.png" width="20" height="20"><@=hlog.star@></div>
            <div class="s1 hash">#<@=hlog.tag1@></div>
            <div class="s2 hash">#<@=hlog.tag2@></div>
        </div>
        <div class="box_m">
            <img class="user" src="img/<@=hlog.user_image@>">
            <div class="hlogName"><@=hlog.title@> <img src="img/coin.png" width="20" height="20" ></div>
            <div class="hlogNickname"><@=hlog.nickname@></div>
            <img class="ice" src="img/<@=hlog.ice@>">
            <div class="heart hlogHeart"><img src="img/heart.png" width="20" height="20"><@=hlog.heart@></div>
        </div>
    </a><!-- hlog-->
    <@})@>
</script>

<script type="text/template" id="restaurantTmp">
    <@ _.each(restaurants,function(restaurant){ @>
    <a href="food.jsp?no" class="restaurant contentsBox">
        <div class="box">
            <div class="restaurantImg"><img src="img/<@=restaurant.image@>"></div>
            <div class="star restaurantStar"><img src="img/star.png" width="20" height="20"><@=restaurant.star@></div>
            <div class="s1 hash">#<@=restaurant.tag1@></div>
            <div class="s2 hash">#<@=restaurant.tag2@></div>
        </div>
        <div class="box_m">
            <img class="user" src="img/<@=restaurant.user_image@>">
            <div class="restaurantName"><@=restaurant.title@></div>
            <div class="restaurantRealWon" >
                <@

                var count = 0;
                var value = restaurant.cash;

                if(value<=10000){
                count=1;
                }else if(value>10000 && value<=20000){
                count=2;
                }else if(value>20000 && value<=30000){
                count=3;
                }else{
                count=4;
                }
                for(var i = 0; i < count;i++) {
                @><img class="realWon " src="img/won.png" width="20" height="20">
                <@}@>
            </div>
            <div class="restaurantNickname"><@=restaurant.nickname@></div>
            <img class="ice" src="img/<@=restaurant.ice@>">
            <div class="heart restaurantHeart"><img src="img/heart.png" width="20" height="20"><@=restaurant.heart@></div>
        </div>
    </a><!-- restaurant-->
    <@})@>
</script>

<script type="text/template" id="attractionTmp">
    <@ _.each(attractions,function(attraction){ @>
    <a href="tourDetail.jsp?no" class="attraction contentsBox">
        <div class="box">
            <div class="attractionImg"><img src="img/<@=attraction.image@>"></div>
            <div class="star attractionStar"><img src="img/star.png" width="20" height="20"><@=attraction.star@></div>
            <div class="s1 hash">#<@=attraction.tag1@></div>
            <div class="s2 hash">#<@=attraction.tag2@></div>
        </div>
        <div class="box_m">
            <img class="user" src="img/<@=attraction.user_image@>">
            <div class="attractionName"><@=attraction.title@> <img src="img/coin.png" width="20" height="20" ></div>
            <div class="attractionNickname"><@=attraction.nickname@></div>
            <img class="ice" src="img/<@=attraction.ice@>">
            <div class="heart attractionHeart"><img src="img/heart.png" width="20" height="20"><@=attraction.heart@></div>
        </div>
    </a><!-- attraction-->
    <@})@>
</script>


<script src="js/jquery.js"></script>
<script src="js/underscore-min.js"></script>
<script>

		_.templateSettings = {
		interpolate: /\<\@\=(.+?)\@\>/gim,
		evaluate: /\<\@([\s\S]+?)\@\>/gim,
		escape: /\<\@\-(.+?)\@\>/gim
		};

    var attractionTmp = _.template($("#attractionTmp").html());

    $.ajax({
        url:"ajax/attractions.json",
        type:"get",
        dataType:"json",
        error:function (request,status,error) {
            alert(request+","+status+","+error);
        },success:function (json) {
            $("#attractionList").append(attractionTmp({"attractions":json}));
        }
    });

    var restaurantTmp = _.template($("#restaurantTmp").html());

    $.ajax({
        url:"ajax/restaurants.json",
        type:"get",
        dataType:"json",
        error:function (request,status,error) {
            alert(request+","+status+","+error);
        },success:function (json) {
            $("#restaurantList").append(restaurantTmp({"restaurants":json}));
        }
    });

    var hLogTmp = _.template($("#hlogTmp").html());

    $.ajax({
        url:"ajax/hlogs.json",
        type:"get",
        dataType:"json",
        error:function (request,status,error) {
            alert(request+","+status+","+error);
        },success:function (json) {
            $("#hLogList").append(hLogTmp({"hlogs":json}));
        }
    });


    var regionTmp = _.template($("#regionTmp").html());

    $.ajax({
        url:"ajax/regions.json",
        type:"get",
        dataType:"json",
        error:function (request,status,error) {
            alert(request+","+status+","+error);
        },success:function (json) {
            $("#regionList").append(regionTmp({"regions":json}));
        }
    });




    $('.star>img').on("click",function () {
        var starFlag = $(this).attr("src");
        /*alert(starFlag);*/

        if(starFlag=="img/star.png"){
            $(this).attr("src","img/emptyStar.png");
        }else {
            $(this).attr("src", "img/star.png");
        }
    });

    //버튼 클릭시
 var px =0;

    $('.leftBtn').click(function () {
        px -= 960;
        console.log(px);

        if(px == -2880) {
            px = 0;
        }

        $(this).parent().next().find('.contentsBox').css("left", px);
    });

    $('.rightBtn').click(function () {
        px += 960;

        console.log(px);

        if(px > 0) {
            px = -1920;
        }

        $(this).parent().next().find('.contentsBox').css("left", px);
    });

</script>

</body>
</html>