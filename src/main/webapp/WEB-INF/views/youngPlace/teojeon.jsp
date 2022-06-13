<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
     <sec:authorize access="isAuthenticated()"></sec:authorize>

<c:set var="path"  value="${pageContext.request.contextPath}"  />


<%
  request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
 </script>
<script>
        //이미지슬라이드 시작
/*         $('#slide3>ul>li').hide();
        $('#slide3>ul>li:first-child').show();

        setInterval(function() {
            $('#slide3>ul>li:first-child').fadeOut()
                .next().fadeIn().end(1000)
                .appendTo('#slide3>ul');
        }, 3000); */
        //이미지슬라이드 끝

    </script>
</head>
<style>
#sograp {
    width: 1400px;
    height: 1200px;
    margin: 0 auto;
    margin-top: 100px;
    /*                background: red;*/
}

.lnb-box{
/*    background: green;*/
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 51px;
    border-bottom: 1px solid #dddccc;
}

.lnb-box nav#lnb-pc{
/*    background: green;*/
    width: 1400px;
    height: 51px;
    margin: 0 auto;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: block !important;
/*    width: 100%;*/
    max-width: 1100px;
    padding: 0 30px;
}
.lnb-box nav#lnb-pc ul.lnb-list{
/*    background: green;*/
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    padding: 0;
    list-style: none;
    width: 100%;
    overflow: hidden;
}
.lnb-box nav#lnb-pc ul.lnb-list li.lnb-home
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    height: 50px;
    border-left: 1px solid #dcdcdc;
    width: 4.3859649122807017543859649122807%;
    background: url(${path}/resources/image/lnb-home.png) no-repeat center center;
}
.lnb-box ul.lnb-list li.lnb-home a 
{
    line-height: 1.42857143;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    color: #000;
    text-decoration: none;
    width: 100%;
    height: 100%;
    font-size: 0;    
}
.lnb-box nav#lnb-pc ul.lnb-list.lnb4 li.lnb-menu
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    height: 50px;
    border-left: 1px solid #dcdcdc;
    width: calc((100% - 50px) / 4); 
}
.lnb-box nav#lnb-pc ul.lnb-list li.lnb-menu.active a
{
    list-style: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    text-decoration: none;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    letter-spacing: -0.5px;
    border-bottom: 2px solid transparent;
    transition: all 0.4s;
    color: #333;
    border-color: #00a950;
}
.lnb-box nav#lnb-pc ul.lnb-list li.lnb-menu:hover a{
    list-style: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    text-decoration: none;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    letter-spacing: -0.5px;
    border-bottom: 2px solid transparent;
    transition: all 0.4s;
    color: #333;
    border-color: #00a950;
}
.lnb-box nav#lnb-pc ul.lnb-list.lnb4 li.lnb-menu{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    height: 50px;
    border-left: 1px solid #dcdcdc;
    width: calc((100% - 50px) / 4);
}


.lnb-box ul.lnb-list li.lnb-menu a{
    list-style: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    text-decoration: none;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    color: #aaa;
    letter-spacing: -0.5px;
    border-bottom: 2px solid transparent;
    transition: all 0.4s;
}

.lnb-box nav#lnb-pc ul.lnb-list.lnb4 li.lnb-menu{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    height: 50px;
    border-left: 1px solid #dcdcdc;
    width: calc((100% - 50px) / 4);}


.lnb-box ul.lnb-list li.lnb-menu a
{
    list-style: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    text-decoration: none;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    color: #aaa;
    letter-spacing: -0.5px;
    border-bottom: 2px solid transparent;
    transition: all 0.4s;
}

.lnb-box nav#lnb-pc ul.lnb-list.lnb4 li.lnb-menu
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    height: 50px;
    border-left: 1px solid #dcdcdc;
    border-right: 1px solid #dcdcdc;
    width: calc((100% - 50px) / 4);
}

.lnb-box ul.lnb-list li.lnb-menu a {
    list-style: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    text-decoration: none;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 50px;
    font-size: 16px;
    color: #aaa;
    letter-spacing: -0.5px;
    border-bottom: 2px solid transparent;
    transition: all 0.4s;
}



#sogtop {
    /*    background:red;*/
    width: 1000px;
    height: 90px;
    margin: 0 auto;
    border-bottom: 1px solid #A4A4A4;
}

#sogtop a {
    text-decoration: none;
    color: #848484;

}
#sogtop h2{
    font-family: 'Eoe_Zno_L';
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    width: 175px;
    height: 30px;
    font-size: 30px;
    border-bottom: 3px solid #00a950;
}

#sog {

    width: 1000px;
    height: 550px;
    /*    background: green;*/
    margin: 0 auto;
    /*    border-top: 1px solid gray;*/
    margin-top: 50px;
    text-align: center;
}

.sogtopbutton {
    width: 300px;
    height: 60px;
    background: white;
    border: 1px solid #A4A4A4;
    border-radius: 5px;
    font-weight: bold;
    font-size: 15px;
    cursor: pointer;
    /*    margin-right: -165px;*/
    /*    margin-left: 170px;*/
    margin-bottom: 50px;
}

/*박스클릭시 색상 변화*/
.sogtopbutton:hover {
    background: #005cb9;
    color: white;
}

/*해당페이지 "청춘나들목 소개" 색상 고정*/
.a1 {
    background: #005cb9;
    color: white;
}

h2 {
    width: 138px;
    height: 30px;
    font-size: 30px;
    border-bottom: 3px solid #005cb9;

}

/*소개,특징*/
#sogii {
    width: 1000px;
    font-size: 25px;
    font-weight: bold;
    /*    margin-left: 380px;*/
    margin-bottom: 20px;
    /*        background: red;*/
    text-align: center;
}

/*아이콘*/
/*
#iconn {
    width: 1000px;
    height: 45px;
    margin-bottom: 40px;
    text-align: center;

}
*/

/*
#iconn button {
    margin-left: 10px;
    margin-right: 10px;
}
*/
/*
.inct-sc.introduce{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
}
*/

/*청년 쉬어라 시작*/
/*
.space-slide-info{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    overflow: hidden;
}
.wrap{ 
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: table;
    position: relative;
    overflow: visible;
}
.title-box
{   
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: table;
    position: relative;
    overflow: visible;
}

span{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline !important;
    font-size: 14px;
    color: #777;
    font-weight: 400;
    line-height: 14px;
    letter-spacing: 0;
    float: left
}
p.sc-title-slogan{
    letter-spacing: -1px;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    display: block !important;
    padding: 0px;
    margin: 0px;
    width: 200px;
    height: 50px;
    margin-top: 20px;
    font-size: 25px;
    color: white;
    text-align: center;
    line-height: 50px;
    font-weight: 300;
    background: #fec524;
}
*/

/*청년쉬어라 끝*/

/*슬라이드 시작*/

#slide3 {
/*        height: 300px;*/
    border-bottom: 1px solid dimgrey;
/*        background: black;*/
    margin-bottom: 520px;

}

#slide3 > ul > li {
    position: absolute;
    font-size: 0;
}

/*슬라이드 끝*/

/*슬라이드 정보 시작*/
#sss {
    padding: 0 40px 1px;
    /*    word-break: keep-all;*/
    width: 930px;
    font-size: 20px;
    color: #777;
    /*    height: 800px;*/
    /*    text-align: center;*/
    line-height: 25px;
}

/*슬라이드 정보 끝*/


/*컨셉 왼쪽 시작*/
.space-concept.home
{   
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
/*    box-sizing: border-box;*/
/*    font-family: 'Noto Sans KR', sans-serif;*/
/*    margin-bottom: 22px;*/
/*    clear: both;*/
    height: 250px;
/*    overflow: hidden;*/
    position: relative;
    z-index: -100;
    width: 100%;
    margin-top: 50px;}

.space-concept.home .concept-box.concept-img
{   
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 50%;
    height: 100%;
    padding-top: 140px;
    font-size: 0;
    background-repeat: no-repeat;
    background-position: center center;
    padding-right: 75px;
    background-color: #a9d88f;
    background-image: url(${path}/resources/image/sog4home.png);
    background-size: cover;}

.space-concept.home .concept-right
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 50%;
    height: 100%;
    padding-top: 50px;
    padding-left: 30px;
    background: #00a950;
}
.space-concept .concept-box.concept-right h3.sc-title-concept
{
box-sizing: border-box;
border: 0;
font-family: 'Noto Sans KR', sans-serif;
padding: 0;
margin: 0;
width: 100%;
border-top: 4px solid white;
font-size: 25px;
color: white;
line-height: 90px;
font-weight: 300;
letter-spacing: -0.5px;
text-align: left;}

.space-concept .concept-box h3.sc-title-concept span.emph
{  
    line-height: 90px;
    font-weight: 300;
    text-align: left;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    padding-left: 10px;
    font-size: 40px;
    vertical-align: baseline;
    color: white;
}


/*컨셉오른쪽 끝*/

/*컨셉요약목록시작*/
/*
.space-concept-summary {
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    margin: -50px auto 40px;
    border: 1px solid #f1f1f1;
    background: white;
    box-shadow: 5px 5px 0 #eee;
    height: 120px;
    max-width: 530px;
}

.space-concept-summary ul {
    box-sizing: border-box;
    margin: 0;
    overflow: hidden;
    height: 120px;
    padding: 10px 15px;
}

.space-concept-summary ul li {
    float: left;
    width: 20%;
}

.space-concept-summary ul li .icon {
    font-size: 0;
    line-height: 70px;
}

.icon img {
    vertical-align: middle;
    width: auto;
}

.space-concept-summary ul li p {
    color: #777;
    letter-spacing: 0;
    font-weight: 300;
    font-size: 11px;
    line-height: 20px;
}
*/
/*컨셉목록 끝*/


/*컨셉설명 시작*/


/*컨셉설명 끝*/


</style>
<body>

    <!--상단메뉴 시작-->
    <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            <ul class="lnb-list lnb4">
                <li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
                <li class="lnb-menu active"><a href="#">청춘터전 소개</a></li>
               <!--  <li class="lnb-menu "><a href="#">청춘터전 소식</a></li> -->
                <!--
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=news_02">두두두소식</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/page.php?hid=sub_020501">찾아오시는길</a></li>
-->
            </ul>
        </nav>
    </div>
    <!--  상단박스 끝-->

    <!--   -->
    <div id='sograp'>
        <div id='sogtop'>
            <h2>청춘터전 소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘 터전 </a> > <a href='#'>청춘터전 소개</a>
        </div>
        <!--중앙부분 시작-->
        <div id='sog'>
            <!--
            <button type='button' onclick="location.href='#'" class='sogtopbutton a1'>청춘두두두 소개</button>
            <button type='button' onclick="location.href='#'" class='sogtopbutton'>청춘두두두 특징</button>
-->
            <!--    -->
            <div class="sogi">
                <div id="sogii">
                    <a>청춘터전이란?</a>
                </div>
            </div>
            <!--            아이콘 시작-->
            <div class="icon">
                <!--
                <div id="iconn">
                    <button type='button' onclick="location.href='https://www.facebook.com/b3ccnadeulmok/'" class='boardbtn searchbtn'>
                        <img src="${path}/resources/image/facebook.png">
                    </button>
                    <button type='button' onclick="location.href='https://www.instagram.com/b3_ccnadeulmok/'" class='boardbtn searchbtn'>
                        <img src="${path}/resources/image/insta.png">
                    </button>
                    <button type='button' onclick="location.href='https://blog.naver.com/dareunkorea20'" class='boardbtn searchbtn'>
                        <img src="${path}/resources/image/naver.png">
                    </button>
                    <button type='button' onclick="location.href='https://www.youtube.com/channel/UCJ5hOIgZKdngpl86hn542hg'" class='boardbtn searchbtn'>
                        <img src="${path}/resources/image/youtube_icon.png">
                    </button>
                </div>
-->
                <div class="sogi">
                    <div id="sogii">
                        <a>소규모 청년 커뮤니티 활동공간</a>
                    </div>
                </div>
            </div>
            <!--아이콘 끝-->
            <!-- 청년쉬어라 시작-->
            <!--
            <div class="inct-scintroduce">
                <div class="space-slide-info">
                    <div class="wrap">

                        <div class="title-box rest-title">
                            <span class="inct-pc-mt-i inct-tab-ib inct-m-none">cheongchun neonadeuli</span>
                            <p class="sc-title-slogan inct-pc-mt-b inct-tab-lt-none">청년 쉬.어.라</p>
                        </div>

                    </div>
                </div>
            </div>
-->
            <!--  청년쉬어라 끝-->

            <!--슬라이드 이미지 시작-->
            <div id="index_03">
                <div id="header3"></div>
                <div id="slide3">
                    <ul>
                        <li><a href="#"><img src="${path}/resources/image/sog4image1.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/sog4image2.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/sog4imag3.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/sog4imag4.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/sog4imag5.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/sog4imag6.png" width="1000" height="500"></a></li>
                    </ul>
                </div>
            </div>
            <!--슬라이드 이미지 끝-->
            <!--슬라이드 정보 시작-->
            <div class="ss">
                <div id="sss">
                    <a>대전시에서는 대전 청년단체(법인)에서 운영하는 민간시설을 공모 선정해 지역거점 청년활동 공간으로 조성하고 안정적으로 운열할수 있도록 지원하고 있습니다.</a>
                </div>
                <div id="sss">
                    <a>대전 청춘터전에서 다양한 청년들과 자유롭게 소통하고 네트워킹을 할 수 있습니다.</a>
                </div>
            </div>
            <!--슬라이드 정보 끝-->


            <!--청년공간 컨셉 시작-->
            <div class="space-concept home">
                <div class="concept-box concept-img concept-left">이미지 영역</div>
                <div class="concept-box concept-right">
                    <h3 class="sc-title-concept">청춘터전의 휴식처<span class="emph">Home</span></h3>
                </div>
            </div>
            <!--청년공간 컨셉 끝-->



            <!--컨셉요약 목록 시작-->
            <!--
            <div class="space-concept-summary">
                <ul>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/dodoicon1.png" alt="네트워킹">
                        </div>
                        <p>네트워킹</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/dodoicon2.png" alt="개인작업">
                        </div>
                        <p>개인작업</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/dodoicon3.png" alt="공연">
                        </div>
                        <p>공연</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/dodoicon4.png" alt="강연">
                        </div>
                        <p>강연</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/dodoicon5.png" alt="페스티벌">
                        </div>
                        <p>페스티벌</p>
                    </li>
                </ul>
            </div>
-->
            <!--컨셉요약 목록 끝-->

           
            <!--컨셉 설명 시작-->
          
            <!--컨셉 설명 끝-->

        </div>
        <!--중앙부분 끝-->
    </div>
    <!--끝-->
    <!--이미지 슬라이드-->
   <!--  <script type="text/javascript" src="script/slide.js"></script> -->
  </body>
</html>