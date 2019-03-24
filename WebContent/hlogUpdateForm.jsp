<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HLog</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <link rel="stylesheet" href="/css/default.css"/>
    <link rel="icon" href="/img/favicon%20(2).ico"/>
    <link rel="stylesheet" href="/css/tui-date-picker.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
          integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <style>
        #heroWrap {
            width: 100%; height: 400px;
            margin-top: 70px;
            background-color: #9E9E9E;
        }
        #heroImageBox{
            width: 100%; height: 400px;
            position: absolute;
        }

        .mainTool{
            width: 80px; height: 360px;
            left: 100px;
            text-align: center;
            top: 100px;
            position: absolute;
        }
        .mainTool li {
            height: 100px;
            font-size: 50px;
            margin: auto;
            margin-bottom: 20px;
            cursor: pointer;
            color: rgba(0,0,0,.5);

        }
        .heroImage label{
            width: 80px;
            cursor: pointer;
        }
        .iconName {
            font-size: 15px;
            user-select: none;
        }
        .hLogTitle {
            width: 1080px;
            height: 400px;
            margin: auto;
            text-align: center;
            position: relative;
        }
        .titleInput{
            padding: 10px 10px;
            height: 80px;
            font-size: 50px;
            background-color: transparent;
            border: none;
            text-align: center;
            outline: none;
            border-bottom: 2px solid #424242;
            transform: translateY(100px);
        }

        .contentBox{
            width: 1080px;
            position: relative;
            margin: auto;
            margin-bottom: 50px;
        }
        #editSection {
            width:1080px;
            min-height: 600px;
            position: relative;
        }

        #editSection .addBox{
            width: 30px; height: 30px;
            background-color: #9E9E9E;
            line-height: 30px;
            text-align: center;
            border-radius: 10px;
            border: none;
            position: absolute;
            top: 10%; right: 10%;
            z-index: 1;
            outline: none;
        }
        .addBox:hover{
            transform: scale(1.1)translateY(-2px);
            box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .addBox:active{
            transform: scale(.9);
        }

        #donerGrade{
            width: 1080px;
            height: 400px;
            /*background-color: blue;*/
            /*position: relative;*/
            margin-top: 30px;
            border: 2px solid #424242;
            border-radius: 10px;
        }

        .hiceGrade{
            width: 432px; height: 400px;
            float: left;
            position: relative;
        }
        .hiceBackground {
            width: 200px;
            height: 300px;
            background-image: url(/img/ice5.png);
            background-size: 100% 100%;
            margin: 50px auto;
            opacity: .2;
        }
        .hiceLevel {
            width: 200px;
            position: absolute;
            bottom: 50px;
            left: 117px;
        }
        .hice{
            width: 200px; height: 300px;
        }
        .hice>li{
            width: 200px;
            position: absolute;
            bottom: 0;
        }
        .hice5 {
            height: 300px;
            bottom: 0;
        }
        .hice5 img{
            height: 300px;
        }
        .hice4 {
            height: 254px;
            bottom: 0;
        }
        .hice4 img{
            height: 254px;
        }
        .hice3 {
            height: 220px;
            bottom: 0;
        }
        .hice3 img{
            height: 220px;
        }
        .hice2 {
            height: 183px;
            bottom: 0;
        }
        .hice2 img{
            height: 183px;
        }
        .hice1 {
            height: 145px;
            bottom: 0;
        }
        .hice1 img{
            height: 145px;
        }
        .ice{
            height: 300px;
            cursor: pointer;
        }
        .ice img{
            width: 200px;
            display: none;
        }
        #evaluation {
            width: 250px;
            height: 30px;
            font-size: 20px;
            text-align: center;
            position: absolute;
            bottom: 0; left: 80px;
        }
        .on {
             display: block;
         }
        .hiceLevel .ice img{
            width: 200px;
            display: none;
            opacity: .6;
        }
        .hiceLevel .ice img.on{
            display: block;
            opacity: 1;
        }

        .hiceLevel .hice1:hover img{
            display: block;
        }
        .hiceLevel .hice2:hover img{
            display: block;
        }
        .hiceLevel .hice3:hover img{
            display: block;
        }
        .hiceLevel .hice4:hover img{
            display: block;
        }
        .hiceLevel .hice5:hover img{
            display: block;
        }
        .hiceTitle{
            font-size: 30px;
            position: absolute;
            top: 20px;
            left: 50px;
        }
        .hiceTitle span{
            font-size: 20px;
            cursor: pointer;
        }

        .hLogBtn{
            width: 100px;
            height: 50px;
            background-color: #424242;
            color: #fff;
            border: none;
            border-radius: 15px;
            font-size: 20px;
            position: relative;
            top: 10px;
            left: 870px;
            cursor: pointer;
            outline: none;
        }
        .hLogBtn:hover{
            box-shadow: 2px 2px 3px #424242;
        }
        .hLogBtn:active{
            transform: scale(.9);
        }
        .travelGrade{
            width: 648px;
            height: 400px;
            /*background-color: red;*/
            position: absolute;
            right: 0;
            /*float: left;*/
            border-left: 1px solid #424242 ;
        }
        .travelGrade h3{
            padding: 30px 50px 40px 30px;
            /*float: left;*/
            font-size: 25px;
        }
        .travelGrade span{
            width: 100px;
            height: 50px;
            font-size: 15px;
        }
        .travelGrade li {
            margin-top: 30px;
            float: left;
            /*cursor: pointer;*/
            /*background-color: blue;*/
        }
        .travelType input, .travelStyle input, .season input{
            display: none;
        }
        .travelType label, .travelStyle label, .season label{
            cursor: pointer;
        }

        .travelStyle {
            width: 350px;
            height: 80px;
            position: absolute;
            top: 5px; right: 100px;
        }
        .travelStyle li{
            margin-left: 50px;
            height: 60px;
            position: relative;
            margin-top: 20px;
        }

        .travelType {
            width: 470px; height: 110px;
            position: absolute;
            top:120px; right: 0px;
        }
        .travelType li{
            width:110px; height: 45px;
            text-align: center;
            margin:0 0 0 1px;
            line-height: 50px;
        }

        .color{
            background-color: #8D6E63;
            color: #fff;
            padding: 8px 10px;
            border-radius: 40px;
        }
        .selectTravel{
            transform: scale(1.2);
            color: #8D6E63;
            border-bottom: 1px solid #8D6E63 ;
        }

        #tagBox{
            width: 400px; max-height: 50px;
            line-height: 50px;
            position: absolute;
            bottom: 120px; right: 50px;
        }
        #inputTag{
            width: 100px; height: 30px;
            padding-left: 10px;
            font-size: 15px;
            border-radius: 5px;
            border: 1px solid #a0aabf;
            outline: none;
        }
        .tag{
            float: left;
            margin-right: 20px;
        }
        .tag span{
            font-size: 15px;
            vertical-align: middle;
            color: #4b96e6;
            font-weight: bold;
        }
        .delete{
            width: 20px; height: 20px;
            border-radius: 15px;
            border: none;
            background-color: #EF5350;
            color: #fff;
            cursor: pointer;

        }
        .tagMax{
            font-size: 13px;
            color: #EF5350;
            font-weight: bold;
            position: absolute;
            bottom: 100px;
        }

        .dataRange{
            width: 500px; height: 100px;
            position: absolute;
            z-index: 1000;
            top:300px;
            left:50%;
            margin-left:-250px;
        }
        .dataRange .tui-datepicker {
            margin-top:0;
        }

        .tui-calendar th,.tui-calendar  td {
                vertical-align: middle;
        }
        
        .dataRange .datepick{
            width: 160px; height: 50px;
            font-size: 20px;
            font-family: 'Kakao', sans-serif;
            background-color: transparent;
            border: 1px solid #424242;
            text-align: center;
            outline: none;
            border-radius: 10px;
            line-height: 50px;
            margin-right: 10px;
        }
        .tui-datepicker-input{
            border: none;
        }
    </style>
</head>
<body>
<div id="header">
    <h1 class="screen_out">HOLO:Happen Of Leave Oneself</h1>
    <div class="headMenu">
        <ul>
            <li id="logoImage"><a href="index.html">HOLO</a></li>
            <li class="menu"><a href="regoin.html">여행지</a></li>
            <li class="menu"><a href="attraction_main.html">관광명소</a></li>
            <li class="menu"><a href="restaurant_main.html">음식점</a></li>
            <li class="menu"><a href="H-Log_main.html">H-Log</a></li>
            <li class="menu"><a href="together.html">동행</a></li>
            <li class="fo">
                <form action="search.html" method="get">
                    <input class="searchText" name="search" autocomplete="off" placeholder="검색어를 입력하세요"/>
                    <button class="searchBtn screen_out"><i class="fas fa-search"></i></button>
                </form>
                <button class="closeBtn"><i class="fas fa-times"></i></button>
            </li>
            <li class="search"><i class="fas fa-search"></i></li>
            <li class="login"><a href="">로그인</a></li>
            <li class="screen_out"><a href=""></a><i class="fas fa-bell"></i></li>
            <li class="screen_out"><a href=""></a><i class="fas fa-user"></i></li>
        </ul>
    </div>
</div> <!--//header-->


<div id="heroWrap">
    <canvas id="heroImageBox"></canvas>
    <div class="mainTool">
        <ul>
            <li class="HeroColor"><i class="fas fa-palette"></i><div class="iconName">배경색</div></li>
            <li class="heroImage">
                <label>
                    <i class="far fa-image"></i><div class="iconName">배경사진</div>
                    <input id="imageInput" type="file" class="screen_out">
                </label>
            </li>
            <li class="hLogLock"><i class="fas fa-lock-open"><div class="iconName change">공개글</div></i></li>
        </ul>
    </div><!-- //mainTool -->

	<div class="hLogTitle">
        <form action="" method="get">
            <input class="titleInput" type="text" size="auto" placeholder="Title"/>
            <div class="dataRange">
                <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                    <input id="startpicker-input" class="datepick" type="text" aria-label="Date">
                    <div id="startpicker-container" style="margin-left: -1px;"></div>
                </div>
                <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                    <input id="endpicker-input" class="datepick" type="text" aria-label="Date">
                    <div id="endpicker-container" style="margin-left: -1px;"></div>
                </div>
            </div><!--dataRange -->
        </form>
    </div><!-- //hLogTitle -->
</div> <!--#heroWrap end-->

<div class="contentBox">
    <div id="editSection">
        <button class="addBox"><i class="fas fa-plus"></i></button>
    </div> <!--//editSection end-->

    <form action="" method="get">
        <div id="donerGrade">
            <div class="hiceGrade">
                <div class="hiceTitle">HICE <span><i class="far fa-question-circle"></i></span></div>
                <div class="hiceBackground"></div>
                <div class="hiceLevel">
                    <ul class="hice">
                        <li class="hice5"><div class="ice"><img src="img/ice5.png"></div></li>
                        <li class="hice4"><div class="ice"><img src="img/icecream4.png"/></div></li>
                        <li class="hice3"><div class="ice"><img src="img/icecream3.png"/></div></li>
                        <li class="hice2"><div class="ice"><img src="img/icecream2.png"/></div></li>
                        <li class="hice1"><div class="ice"><img src="img/icecream1.png"/></div></li>
                    </ul>
                </div><!-- //hiceLevel end -->
                
                <div id="evaluation">HICE지수를 선택해주세요!</div>
            
            </div><!-- //hiceGrade -->

            <div class="travelGrade">
                <h3>여행스타일</h3>
                <ul class="travelStyle">
                    <li><label><input type="checkbox"/><img src="img/tight.png" width="50">타이트</label></li>
                    <li><label><input type="checkbox"/><img src="img/smooth.png" width="50">스무스</label></li>
                </ul>

                <h3>여행테마</h3>
                <ul class="travelType">
               		<li><label><input type="checkbox" value="T"/>TV여행</label></li>
                    <li><label><input type="checkbox" value="H"/>힐링여행</label></li>
                    <li><label><input type="checkbox" value="C"/>도심여행</label></li>
                    <li><label><input type="checkbox" value="A"/>액티비티</label></li>
                    <li><label><input type="checkbox" value="E"/>식도락</label></li>
                    <li><label><input type="checkbox" value="L"/>역사·문화</label></li>
                    <li><label><input type="checkbox" value="F"/>감성여행</label></li>
                    <li><label><input type="checkbox" value="N"/>야경여행</label></li>
                </ul>

                <h3>검색태그</h3>
                    <form id="write">
                        <div id="tagBox">
                            <div class="tagInput">
                            <span><i class="fab fa-slack-hash"></i></span>
                            <input id="inputTag" autocomplete="off">
                            </div>
                        </div>
                        <script type="text/template" id="tagTmp">
                            <div class="tag">
                                <input type="hidden" name="tag" value="<@=value@>">
                                <span><i class="fas fa-tag"></i> <@=value@></span>
                                <button class="delete"><i class="fa fa-times"></i></button>
                            </div>
                        </script>
                    </form>
                <div class="tagMax">최대 3개까지 입력가능합니다.</div>
                
            </div><!--//travelGrade-->
        </div><!--//donerGrade-->
    </form>
    
    <button class="hLogBtn">취소</button>
    <button class="hLogBtn">수정</button>
</div><!--//contentBox end-->

<div id="footer">
    <div class="end">
        <a href="#">회사소개</a>
        <a href="#">이용약관</a>
        <a href="#">개인정보처리방침</a>
        <a href="#">고객센터</a>
        <a href="#">&copy; I(YOLO) corp.</a>
    </div>
</div> <!--//footer end-->

</body>
<script src="js/jquery.js"></script>
<script src="js/underscore-min.js"></script>
<script src="js/tui-code-snippet.min.js"></script>
<script src='js/markdown-it.js'></script>
<script src="js/to-mark.min.js"></script>
<script src="js/codemirror.js"></script>
<script src="js/highlight.js"></script>
<script src="js/squire-raw.js"></script>
<script src="js/tui-editor-Editor.js"></script>
<script src="js/tui-code-snippet.min.js"></script>
<script src="js/tui-time-picker.min.js"></script>
<script src="js/tui-date-picker.min.js"></script>
<script>
    var today = new Date();
    var picker = tui.DatePicker.createRangePicker({
        startpicker: {
            date: today,
            input: '#startpicker-input',
            container: '#startpicker-container'
        },
        endpicker: {
            date: today,
            input: '#endpicker-input',
            container: '#endpicker-container'
        },
        selectableRanges: [
            [today, new Date(today.getFullYear() + 1, today.getMonth(), today.getDate())]
        ],
        language: "ko"
    });

    $('#editSection').tuiEditor({
        initialEditType: 'wysiwyg',
        previewStyle: 'vertical',
        height: 1200,
        language:"ko_KR"
    }); //tuiEditor() end

    function hiceText(index) {
        if (index == 0) {
            $('#evaluation').text("혼자 완전 강추해요");
        } else if (index == 1) {
            $('#evaluation').text("혼자가기 매력적이에요");
        } else if (index == 2) {
            $('#evaluation').text("혼자 무난 했어요");
        } else if (index == 3) {
            $('#evaluation').text("혼자 갈순 있어요");
        } else if (index == 4) {
            $('#evaluation').text("혼자 가지 마세요");
        } else {
            $('#evaluation').text(" ");
        }
    } //hiceText() end

    /* 아이스크림 클릭 시 평점 주기 */
    $(".ice").on("click", function () {
        var idx =$(this).parent().index();
        // alert(idx);
        $(".ice").children('img').removeClass('on');
        $(".ice").parent().removeClass('on');
        $(this).children('img').addClass("on");
        hiceText(idx);
    });//click() end

    $("#getBtn").click(function () {
        var value = $('#editSection').tuiEditor("getValue");
        $("#getDiv").html(value);
    });//click end


    var $change = $('.change');
    var $lockIcon = $('.hLogLock i');

    $('.hLogLock').click(function () {
        var flag = $lockIcon.hasClass("fa-lock-open");
        if(flag){
            $lockIcon.removeClass("fa-lock-open");
            $lockIcon.addClass("fa-lock");
            $change.text("비공개글");
        } else{
            $lockIcon.removeClass("fa-lock");
            $lockIcon.addClass("fa-lock-open");
            $change.text("공개글");
        }
    });//click() end

    
    _.templateSettings = {
    		interpolate: /\<\@\=(.+?)\@\>/gim,
    		evaluate: /\<\@(.+?)\@\>/gim,
    		escape: /\<\@\-(.+?)\@\>/gim
    		};
    /*태그 */
    var tagTmp = _.template($("#tagTmp").html());
    var idx = 0;

    $("#inputTag").keydown(function (e) {
        console.log(e.keyCode);
        if(e.keyCode==13) {
            idx++;

            console.log(idx);
            if(idx < 4){
                var $this = $(this);
                var val = $this.val();
                $("#tagBox").prepend(tagTmp({value:val}));
                $this.val("");
                return false;
            } else{
                $('.tagInput').remove();
            }
        }//if end
    });//keydown() end

    $("#tagBox").on("click",".delete",function () {
        idx--;
        $(this).parents(".tag").remove();
    });//click() end



    $('.travelType input').on("change",function () {
        if($(".travelType input:checked").length < 4){
            $(this).parent().toggleClass("color");
        } else {
            alert("3개만 선택해주세요.");
            $(this).prop("checked",false);
        }
    });//change() end


    $('.travelStyle li').click(function () {
        $('.travelStyle li').removeClass("selectTravel");
        $(this).addClass("selectTravel");
    });


    function random() {
        var num = Math.floor(Math.random()*3);
        return num;
    }

    var colorArr = ["#FF80AB","#FF8A80","#E040FB"];
    $('.HeroColor').click(function () {
        // alert(colorArr[random()]);
        $('#heroWrap').css("background-color",colorArr[random()]);

    });
</script>
</html>