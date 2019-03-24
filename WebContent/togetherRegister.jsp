<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>HOLO</title>
    <%@ include file="/WEB-INF/template/link.jsp" %>
    <link rel="stylesheet" href="css/tui-date-picker_togetherRegister.css">
</head>
<style>

    body{
        font: 16px "Kakao","Noto Sans KR","나눔고딕",NanumGothic,"맑은고딕","Malgun Gothic",
        "돋움",Dotum,"Helvetica Neue",Helvetica,AppleSDGothicNeo,sans-serif,"Apple Color Emoji",
        "Segoe UI Emoji",NotoColorEmoji,"Segoe UI Symbol","Android Emoji",EmojiSymbols;
    }

    img {
        margin-left: 380px;
        width: 80px;
        height: 80px;
        float: left;
    }

    .title{
        margin-left: 380px;
        width: 150px;
        height: 50px;
        float: left;
        color: #773A16;
        /*background-color: #FFC107;*/
    }

    #contentsWrap {
        width: 1080px;
        padding-top: 90px;
        margin: auto;
    }


    #contentsWrap h2 {
        text-align: center;
        font-size: 32px;
        font-weight: bold;
        margin: 20px;

    }

    #spotBox {
        width: 500px;
        margin: auto;
        /*background-color: #FFC107;*/
    }

    #spotBox .row {
        margin-top:20px;
    }

    #spotBox .label {
        display: block;
        font-size: 18px;
        color: #666;
        height: 20px;
        line-height: 20px;
        margin-bottom:10px;
        font-weight:900;
    }

    #spotBox .msg {
        color:#D32F2F;
        padding-top:20px;
        font-weight:500;
    }
    #spotBox .msg.ok {
        color:#C69963;
    }


    .radio>input[type="radio"]{
        width: 100px;
        height: 30px;
    }

    #spotBox .input>input {
        border: none;
        width: 456px;
        height: 30px;
        font-size: 21px;
        font-family: 'Kakao', sans-serif;
        font-weight: 500;
        padding:15px 22px;
        color: #606060;
        transition: .2s ease;
        outline: 1px solid #dadada;
        position: relative;
    }

    #spotBox .textarea>input {
        border: none;
        width: 456px;
        height: 70px;
        font-size: 21px;
        font-family: 'Kakao', sans-serif;
        font-weight: 500;
        padding:15px 22px;
        color: #606060;
        transition: .2s ease;
        outline: 1px solid #dadada;
        position: relative;
    }

    #spotBox select {
        border: none;
        width: 500px;
        height: 50px;
        font-size: 21px;
        font-family: 'Kakao', sans-serif;
        font-weight: 500;
        padding:15px 22px;
        color: #606060;
        transition: .2s ease;
        outline: 1px solid #dadada;
        position: relative;
    }

    #spotBox .input>input:focus {
        outline:2px solid #C69963;
    }
    #spotBox .textarea>input:focus {
        outline:2px solid #C69963;
    }

    .input .datepicker {
        width: 500px; height: 50px;
        font-size: 20px;
        text-align: center;
        display: block;
        outline: 1px solid #dadada;
    }

    .searchSpot {
        right: 460px;
        top: 240px;
        position: absolute;
        width: 100px;
        height: 30px;

        color: white;
        outline: none;
        background-color: #C69963;
        border-radius: 10px;
        border: none;
        font-size: 16px;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        cursor: pointer;
    }

    .searchSpot:hover{
        transform: scale(1.1);
    }
    .searchSpot:active{
        transform: scale(.9);
    }

    .box_btn {
        /*background-color: #FFC107;*/
        width: 1080px;
        height: 200px;
        margin-top: 20px;
        margin-left: 60px;
    }

    .btn {
        margin: 10px 10px;
        display: block;
        float: left;
        width: 100px;
        height: 30px;

        outline: none;
        background-color: #C69963;
        border-radius: 10px;
        border: none;
        font-size: 14px;
        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        cursor: pointer;
    }

    .box_btn a {
        color: black;
        text-decoration: none;
        line-height: 30px;
        text-align: center;
    }

    .btn:hover{
        transform: scale(1.1);
    }
    .btn:active{
        transform: scale(.9);
    }


    #map {
        width: 700px;
        height: 650px;
        border-radius: 20px;
        margin: 100px auto;
        border: 5px solid #424242;
    }

    .controls {
        width: 450px;
        height: 29px;
        background-color: #fff;
        border-radius: 2px;
        border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 17px;
        margin-top: 10px;
        outline: none;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
    }

    .controls:focus {
        border-color: #4d90fe;
    }
    #infowindow-content {
        display: none;
    }
    #infowindow-content .addrBtn {
        width: 43px;
        height: 20px;
        border: none;
        /*font-family: 'Do Hyeon', sans-serif;*/
        font-size: 15px;
        color: #fff;
        border-radius: 20px;
        background-color: #D7CCC8;
    }
    #infowindow-content .addrBtn:hover {
        cursor: pointer;
        background-color: #5D4037;
        font-weight: bold;
        text-shadow: 1px 1px 1px #424242;
        border-radius: 20px;
        /*transform: scale(1.1);*/
        /*box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
    }
    #map #infowindow-content {
        display: inline;

    }

    .mapWrap {
        width: 900px;
        height: 850px;
        position: fixed;
        top: 50%;
        left: 50%;
        margin: -425px 0 0 -450px;
        border-radius: 20px;
        background-color: white;
        display: none;
        z-index: 2;
    }
    #map {
        width: 700px;
        height: 650px;
        border-radius: 20px;
        margin: 100px auto;
        border: 5px solid #424242;
    }
    .controls {
        width: 450px;
        height: 29px;
        background-color: #fff;
        border-radius: 2px;
        border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box;
        font-size: 15px;
        font-weight: 300;
        margin-left: 17px;
        margin-top: 10px;
        outline: none;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
    }

    .controls:focus {
        border-color: #4d90fe;
    }
    #infowindow-content {
        display: none;
    }
    #infowindow-content .addrBtn {
        width: 43px;
        height: 20px;
        border: none;
        /*font-family: 'Do Hyeon', sans-serif;*/
        font-size: 15px;
        color: #fff;
        border-radius: 20px;
        background-color: #D7CCC8;
    }
    #infowindow-content .addrBtn:hover {
        cursor: pointer;
        background-color: #5D4037;
        font-weight: bold;
        text-shadow: 1px 1px 1px #424242;
        border-radius: 20px;
        /*transform: scale(1.1);*/
        /*box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
    }
    #map #infowindow-content {
        display: inline;
    }

    .mapWrap .cancel {
        width: 35px;
        height: 35px;
        position: absolute;
        font-size: 35px;
        text-align: center;
        right: 15px;
        top: 15px;
    }
    .mapWrap .cancel:hover {
        cursor: pointer;
    }

    #popUpWrap{
        width: 100%; height: 100%;
        position: fixed;
        top: 0; left: 0;
        background-color: rgba(0,0,0,.7);
        z-index: 1;
        display: none;
    }


</style>
<body>
<div id="header">
    <h1 class="screen_out">HOLO:Happen Of Leave Oneself</h1>
    <div class="headMenu">
        <ul>
            <li id="logoImage"><a href="/index.jsp">HOLO</a></li>
            <li class="menu"><a href="/region.jsp">여행지</a></li>
            <li class="menu"><a href="/tour.jsp">관광명소</a></li>
            <li class="menu"><a href="/food.jsp">음식점</a></li>
            <li class="menu"><a href="/hlog/jsp">H-Log</a></li>
            <li class="menu"><a href="/together.jsp">동행</a></li>
            <li class="fo">
                <form action="/search.jsp" method="get">
                    <input class="searchText" name="search" autocomplete="off" placeholder="검색어를 입력하세요"/>
                    <button class="searchBtn screen_out"><i class="fas fa-search"></i></button>
                </form>
                <button class="closeBtn"><i class="fas fa-times"></i></button>
            </li>
            <li class="search"><i class="fas fa-search"></i></li>
            <li class="login"><a href="/login.jsp">로그인</a></li>
            <li class="screen_out"><a href=""></a><i class="fas fa-bell"></i></li>
            <li class="screen_out"><a href=""></a><i class="fas fa-user"></i></li>
        </ul>
    </div>
</div> <!--//header-->

<div id="contentsWrap">
    <div class="aux">
        <img src="img/brown3.png"><h2 class="title">동행 등록</h2>
        <div id="spotBox">
            <button class="searchSpot">스팟찾기</button>
            <form method="post" action="">
                <fieldset>
                    <legend class="screen_out">동행 등록폼</legend>
                    <div class="row input">
                        <label class="label" for="addr1">동행을 원하는 장소</label>
                        <input class="addr1" id="addr1" name="addr1"
                               autocomplete="off"
                               placeholder="오른쪽에 버튼을 클릭하세요."
                               title="동행을 원하는 장소"
                        />
                    
                    <div class="row input">
                        <label class="label">동행을 원하는 날짜</label>
                            <input name="date" type="text" id="datepicker-input1" aria-label="Date-Time" class="datepicker">
                            <!--<span class="tui-ico-date"></span>-->
                        <div id="wrapper1" style="margin-top: -1px;"></div>
                    </div><!--//row-->
                    <div class="row input">
                        <label class="label" for="personnel">동행을 같이 하고 싶은 인원 수 (자신포함)</label>
                        <input id="personnel" name="personnel"
                               placeholder="인원 수만 정확하게 입력하세요."/>
                    </div><!--//row-->
                    <div class="row input">
                        <label class="label" for="time">시간대</label>
                        <select class="timeFilter" name="time" id="time">
                            <option value="00:00~02:00" selected="selected">00:00~02:00</option>
                            <option value="02:00~04:00">02:00~04:00</option>
                            <option value="04:00~06:00">04:00~06:00</option>
                            <option value="06:00~08:00">06:00~08:00</option>
                            <option value="08:00~10:00">08:00~10:00</option>
                            <option value="10:00~12:00">10:00~12:00</option>
                            <option value="12:00~14:00">12:00~14:00</option>
                            <option value="14:00~16:00">14:00~16:00</option>
                            <option value="16:00~18:00">16:00~18:00</option>
                            <option value="18:00~20:00">18:00~20:00</option>
                            <option value="20:00~22:00">20:00~22:00</option>
                            <option value="22:00~24:00">22:00~24:00</option>
                        </select>
                    </div><!--//row-->
                    <div class="row input">
                        <label class="label" for="kakaoLink">오픈 KAKAO TALK 링크</label>
                        <input id="kakaoLink" name="kakaoLink"
                               placeholder="오픈 카카오톡 링크를 입력하세요."
                               title="오픈 카카오톡 링크"/>
                    </div><!--//row-->
                    <div class="row">
                        <label class="label">모집 성별</label>
                        <label class="radio"><input type='radio' name='gender' value='gender' checked='checked' />상관없음</label>
                        <label class="radio"><input type='radio' name='gender' value='woman' />여자만</label>
                        <label class="radio"><input type='radio' name='gender' value='man'/>남자만</label>
                    </div><!--//row-->
                    <div class="row textarea">
                        <label class="label" for="intro">간단한 소개</label>
                        <input id="intro" name="intro"
                               placeholder="간단한 소개글을 입력하세요."
                               title="간단한 소개글"/>
                    </div><!--//row-->

                    <div class="box_btn">
                        <a href="/together.jsp" class="btn" type="submit"><i class="fas fa-sign-in-alt"></i>동행신청</a>
                        <button class="btn" type="reset"><i class="fas fa-redo"></i> 초기화</button>
                        <a class="btn" href="/together.jsp"><i class="far fa-list-alt"></i> 동행메인으로</a>
                    </div><!--//box_btn -->
                </fieldset>
            </form>
        </div><!--// spotBox -->
    </div>
</div>

<div id="popUpWrap"></div>

<!--지도 팝업 -->
<div class="mapWrap">
    <input id="pac-input" class="controls" type="text" placeholder="Enter a location">
    <div id="map"></div>
    <div id="infowindow-content">
        <span id="place-name" class="title"></span><br>
        Place ID <span id="place-id"></span><br>
        <span id="place-address"></span>
        <button class="addrBtn">추가</button>
    </div><!-- #infowindow-content end -->

    <div class="cancel"><i class="fas fa-times"></i></div>
</div><!-- .mapWrap end -->

<div id="footer">
    <div class="end">
        <a href="#">회사소개</a> |
        <a href="#">이용약관</a> |
        <a href="#">개인정보처리방침</a> |
        <a href="#">고객센터</a> |
        <a href="#">&copy; I(YOLO) corp.</a>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/tui-code-snippet.min.js"></script>
<script src="/js/tui-time-picker.min.js"></script>
<script src="/js/tui-date-picker.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBloWlXkK0VfjXwZVB3qEOFtQ5v2XMuC0M&libraries=places&callback=initMap"
        async defer></script>
<script>


    var datepicker1 = new tui.DatePicker('#wrapper1', {
        date: new Date(),
        input: {
            element: '#datepicker-input1',
            format: 'yyyy-MM-dd'
        },
        language:'ko'
    });

    datepicker1.on('change', function() {
        var newDate = datepicker.getDate();

        console.log(newDate);
    });

    var $popup = $("#popUpWrap");
    var $popupTogetherAdd = $("#popupTogetherAdd");


    $('#popup').click(function () {
        $popup.fadeOut(); // $(this).css("display","none);
        $popupTogetherAdd.fadeOut();
        //$('#menu').fadeOut();
    }); //

    $('.endBtn').click(function () {
        $popup.fadeOut(); // $(this).css("display","none);
        $popupTogetherAdd.fadeOut();
        //$('#menu').fadeOut();
    }); //


    $('.applyBtn button').click(function () {
        alert("동행신청이 완료되었습니다.")
    });

    $('.searchSpot').click(function () {
    	$("#popUpWrap").show();
        $('.mapWrap').show();
    });

    $(".mapWrap .cancel").click(function () {
        $(".mapWrap").hide();
        $("#popUpWrap").hide();
    });

    /* 지도에 장소 등록 */
    $(".addrBtn").click(function () {
        var address = $("#place-address").text();
        $(".addr1").val(address);
        $(".mapWrap").fadeOut();
    });

    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 37.553709, lng: 126.969620},
            // 37.553709, 126.969620 : 서울역
            zoom: 14
        });

        var input = document.getElementById('pac-input');

        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);
        var place = autocomplete.getPlace();
        // alert(place.geometry.location);

        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        var infowindow = new google.maps.InfoWindow();
        var infowindowContent = document.getElementById('infowindow-content');
        infowindow.setContent(infowindowContent);
        var marker = new google.maps.Marker({
            map: map
        });
        marker.addListener('click', function() {
            infowindow.open(map, marker);
        });

        autocomplete.addListener('place_changed', function() {


            infowindow.close();

            var place = autocomplete.getPlace();

            if (!place.geometry) {
                return;
            }

            console.log(place.geometry.location.lat());
            console.log(place.geometry.location.lng());

            // 위도 경도 값
            var placeLat = place.geometry.location.lat();
            var placeLng = place.geometry.location.lng();

            if (place.geometry.viewport) {
                map.fitBounds(place.geometry.viewport);
            } else {
                map.setCenter(place.geometry.location);
                map.setZoom(17);
            }

            // Set the position of the marker using the place ID and location.
            marker.setPlace({
                placeId: place.place_id,
                location: place.geometry.location
            });
            marker.setVisible(true);

            infowindowContent.children['place-name'].textContent = place.name;
            infowindowContent.children['place-id'].textContent = place.place_id;
            infowindowContent.children['place-address'].textContent =
                place.formatted_address;
            infowindow.open(map, marker);
        });
    }

</script>
</body>
</html>
