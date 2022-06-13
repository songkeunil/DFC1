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
<script>
        //이미지슬라이드 시작
        $('#slide3>ul>li').hide();
        $('#slide3>ul>li:first-child').show();

        setInterval(function() {
            $('#slide3>ul>li:first-child').fadeOut()
                .next().fadeIn().end(1000)
                .appendTo('#slide3>ul');
        }, 3000);
        //이미지슬라이드 끝

    </script>

</head>
<style>
#sograp {
    width: 1400px;
    height: 3500px;
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
    border-color: #005cb9;
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
    border-color: #005cb9;
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
    border-bottom: 3px solid #005cb9;
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
#iconn {
    width: 1000px;
    height: 45px;
    /*        background: black;*/
    /*    border: 1px solid #A4A4A4;*/
    /*    border-radius: 1px; */
    /*    margin-right: 20px;*/
    /*    margin-left: 380px;*/
    margin-bottom: 40px;
    /*    margin: 0 auto;*/
    text-align: center;
	cursor:pointer;

}

#iconn button {
    margin-left: 10px;
    margin-right: 10px;
}
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
.wrap1{ 
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
.space-concept{

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
    height: 450px;
    overflow: hidden;
    position: relative;
    z-index: -100;
    margin-top: 50px;
}
.space-concept .concept-img
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
    background-size: cover;
    padding-right: 75px;
    background-image: url(${path}/resources/image/concept2.png);
}
.space-concept .concept-right
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
    padding-top: 140px;
    padding-left: 75px;
    background: #fec524 url(${path}/resources/image/conse.png) no-repeat 90% 220px;
}

.space-concept .concept-box.concept-right h3.sc-title-concept
{   
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    border-top: 5px solid white;
    font-size: 25px;
    color: white;
    line-height: 90px;
    font-weight: 300;
    letter-spacing: -0.5px;
    text-align: left;}
.space-concept .concept-box h3.sc-title-concept span.emph
{    
    text-align: left;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 400;
    line-height: 30px;
    letter-spacing: 0;
    padding-left: 10px;
    font-size: 40px;
    vertical-align: baseline;
    color: white;
}


/*컨셉오른쪽 끝*/

/*컨셉요약목록시작*/
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
/*컨셉목록 끝*/

/*컨셉설명 시작*/
.space-concept-textbox{  
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    background: #f5f5f5;
    padding: 50px 0;
}

.wrap2
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
    overflow: visible;
}
.space-concept-textbox .space-concept-text
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 290px;
/*    overflow: hidden;*/
/*    display: table;*/
}

.space-concept-textbox .space-concept-text .inner-box
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 50%;
    height: 100%;
    padding: 100px 100px 0;
}

.space-concept-textbox .space-concept-text:first-child .inner-box h4.concept-slogan
{
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    width: 100%;
    border-top: 6px solid #efefef;
    padding: 25px 0;
    font-size: 30px;
    color: #555;
    line-height: 30px;
    font-weight: 600;
    border-color: #0066cc;
    text-align: right;
}

.space-concept-textbox .space-concept-text:first-child .inner-box p.concept-text
{   
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    font-size: 15px;
    color: #777;
    line-height: 25px;
    letter-spacing: -0.5px;
    text-align: right;
}
.space-concept-textbox .space-concept-text:first-child .textbox-img 
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
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    overflow: hidden;
    background-image: url(${path}/resources/image/logo.png);
}


.space-concept-textbox .space-concept-text
{   
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 290px;
    overflow: hidden;
}

.space-concept-textbox .space-concept-text:last-child .textbox-img
 {   font-size: 14px;
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
    background-size: cover;
    background-repeat: no-repeat;
    overflow: hidden;
    background-image: url(${path}/resources/image/con1.png);
    background-position: right top;
}
.space-concept-textbox .space-concept-text .inner-box
   { 
       font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 50%;
    height: 100%;
    padding: 50px 30px 0;
}

.space-concept-textbox .space-concept-text:last-child .inner-box h4.concept-slogan
{   
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    width: 100%;
    border-top: 6px solid #efefef;
    padding: 25px 0;
    font-size: 30px;
    color: #555;
    line-height: 30px;
    font-weight: 600;
    border-color: #fec524;
    text-align: left;
}
.space-concept-textbox .space-concept-text:last-child .inner-box p.concept-text
  {  
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    font-size: 15px;
    color: #777;
    line-height: 25px;
    letter-spacing: -0.5px;
    text-align: left;
}

/*컨셉설명 끝*/

/*BI 소개 시작*/

.bi-info{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    padding: 100px 0;
}

.title-box{
/*
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
*/
    overflow: hidden;
}
.wrap3{
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
    display: table;
    padding: 0 50px;
}
.bi-info h4.sc-item-title{
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 15%;
    border-left: 4px solid #555;
    padding-left: 8px;
    color: #555;
    font-weight: 500;
    height: 20px;
    font-size: 20px;
    line-height: 20px;
    border-color: #005cb9;
    margin-bottom: 75px;
}
.bi-info.signature{
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
    overflow: hidden;
}
.bi-info .signature .bi-subtitle-box{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    padding-top: 50px;
    width: calc(50% - 250px);
    float: left;
}
.bi-info .signature .bi-subtitle-box h5.bi-subtitle{
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    font-size: 22px;
    color: #555;
    line-height: 22px;
    padding-bottom: 20px;
    border-bottom: 1px solid #666;
    font-weight: 400;
    text-align: right;
}
.bi-info .signature .bi-contents{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    max-width: 500px;
    float: left;
}
.bi-info .bi-info-img{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    padding-bottom: 60px;
    text-align: center;
    font-size: 0;
}

.bi-info .bi-info-img img{
    line-height: 1.42857143;
    color: #333;
    text-align: center;
    font-size: 0;
    letter-spacing: -1px;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
    border: 0;
    display: inline !important;
    max-width: 100%;
    vertical-align: top;
}
.bi-info p.bi-info-text{
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0px;
    width: 100%;
    color: #555;
    line-height: 30px;
    text-align: center;
    font-weight: 300;
    word-break: keep-all;
    font-size: 16px;
    padding: 0 20px 25px;
}
.bi-info .color-system{

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
    overflow: hidden;
}
.bi-info .color-system .bi-subtitle-box{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: calc(50% - 325px);
    padding-top: 100px;
    float: right;
}
.bi-info .color-system .bi-subtitle-box h5.bi-subtitle{
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    font-size: 22px;
    color: #555;
    line-height: 22px;
    padding-bottom: 20px;
    border-bottom: 1px solid #666;
    font-weight: 400;
    text-align: left;
}
.bi-info .color-system .bi-contents{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    max-width: 650px;
    float: right;
    padding: 75px 0 100px;
}
.bi-info .color-system .bi-contents ul.bi-info-list{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    margin: 0;
    width: 100%;
    font-size: 0;
    text-align: center;
    overflow: hidden;
}
.bi-info .color-system .bi-contents ul.bi-info-list li{
  
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    font-size: 0;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    width: 100px;
    margin: 0 20px;
}
li:nth-child(1) .colorbox{
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    font-size: 0;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 100px;
    border-top-left-radius: 10px;
    border-bottom-right-radius: 10px;
    background: #ffc629; 
}
li:nth-child(2) .colorbox{

    line-height: 1.42857143;
    color: #333;
    list-style: none;
    font-size: 0;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 100px;
    border-top-left-radius: 10px;
    border-bottom-right-radius: 10px;
    background: #005cb9;
}

li:nth-child(3) .colorbox{
    line-height: 1.42857143;
    color: #333;
    list-style: none;
    font-size: 0;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 100px;
    border-top-left-radius: 10px;
    border-bottom-right-radius: 10px;
    background: #575757;
}
.colorbox + p{
    color: #333;
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    font-size: 20px;
    line-height: 20px;
    padding-top: 20px;
    text-align: center;
    font-weight: 300;
    letter-spacing: 0;
}

.bi-down-box{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    padding-top: 100px;
}

.bi-down-box a.circle-side-btn{
    padding: 0;
    box-sizing: border-box;
    background: 0 0;
    cursor: pointer;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    margin: 0 auto;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.4s;
    color: #000;
    text-decoration: none;
    border-color: #005cb9;
    width: 200px;
    height: 40px;
    border-radius: 20px;
    font-size: 16px;
    line-height: 38px;
    letter-spacing: -0.5px;
}
</style>
<body>

    <!--상단메뉴 시작-->
    <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            <ul class="lnb-list lnb4">
                <li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
                <li class="lnb-menu active"><a href="#">너나들이소개</a></li>
               <!--  <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=program_02">프로그램</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=news_02">너나들이소식</a></li> -->
                <li class="lnb-menu "><a href="${path}/neonadeuliMap.html">찾아오시는길</a></li>
            </ul>
        </nav>
    </div>
    <!--  상단박스 끝-->

    <!--   -->
    <div id='sograp'>
        <div id='sogtop'>
            <h2>너나들이소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘너나들이 </a> > <a href='#'>너나들이소개</a>
        </div>
        <!--중앙부분 시작-->
        <div id='sog'>
            <button type='button' onclick="location.href='#'" class='sogtopbutton a1'>청춘너나들이 소개</button>
            <button type='button' onclick="location.href='${path}/neonadeuliFeat.html'" class='sogtopbutton'>청춘너나들이 특징</button>
            <!--    -->
            <div class="sogi">
                <div id="sogii">
                    <a>청춘너나들이란?</a>
                </div>
            </div>
            <!--아이콘 시작-->
            <div class="icon">
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
            </div>
            <!--아이콘 끝-->
            <!-- 청년쉬어라 시작-->
            <div class="inct-scintroduce">
                <div class="space-slide-info">
                    <div class="wrap1">
                        <!-- 서브콘텐츠 타이틀 시작 -->
                        <div class="title-box rest-title">
                            <span class="inct-pc-mt-i inct-tab-ib inct-m-none">cheongchun neonadeuli</span>
                            <p class="sc-title-slogan inct-pc-mt-b inct-tab-lt-none">청년 쉬.어.라</p>
                        </div>
                        <!-- 서브콘텐츠 타이틀 끝 -->
                    </div>
                </div>
            </div>
            <!--  청년쉬어라 끝-->

            <!--슬라이드 이미지 시작-->
            <div id="index_03">
                <div id="header3"></div>
                <div id="slide3">
                    <ul>
                        <li><a href="#"><img src="${path}/resources/image/intro-slide-rest1.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/intro-slide-rest2.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/intro-slide-rest3.png" width="1000" height="500"></a></li>
                        
                    </ul>
                </div>
            </div>
            <!--슬라이드 이미지 끝-->
            <!--슬라이드 정보 시작-->
            <div class="ss">
                <div id="sss">
                    <a>" 시청, 쇼핑, 공원, 주거, 오락이 공존하는 행정과 정보의 중심지이자 다양한 누릴거리가 있는 너나들이 공간으로, 시에서만 할 수 있는월리티 높은 정보와 문화를 제공합니다. "</a>
                </div>
            </div>
            <!--슬라이드 정보 끝-->

            <!--청년공간 컨셉 시작-->
            <div class="space-concept">
                <!-- 청년공간 컨셉 왼쪽 영역 시작 -->
                <div class="concept-box concept-img concept-left">이미지 영역</div>
                <!-- 청년공간 컨셉 왼쪽 영역 끝-->
                <!-- 청년공간 컨셉 오른쪽 영역 시작 -->
                <div class="concept-box concept-right">
                    <h3 class="sc-title-concept">청춘너나들이<span class="emph">Concept</span></h3>
                </div>
                <!-- 청년공간 컨셉 오른쪽 영역 끝-->
            </div>
            <!--청년공간 컨셉 끝-->



            <!--컨셉요약 목록 시작-->
            <div class="space-concept-summary">
                <ul>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/ic1.png" alt="작은도서관">
                        </div>
                        <p>작은 도서관</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/ic2.png" alt="파자마">
                        </div>
                        <p>파자마 reading</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/ic3'.png" alt="개인작업">
                        </div>
                        <p>개인작업</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/ic4.png" alt="작은파페">
                        </div>
                        <p>작은파페</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/ic5.png" alt="휴식공간">
                        </div>
                        <p>휴식공간</p>
                    </li>
                </ul>
            </div>
            <!--컨셉요약 목록 끝-->

            <!--컨셉 설명 시작-->
            <div class="space-concept-textbox">
                <div class="wrap2">
                    <div class="space-concept-text" style="display:table;">
                        <div class="inner-box">
                            <h4 class="concept-slogan">'청춘끼리 존' 문화 중심지</h4>
                            <p class="concept-text">
                                자유와 여유 속에 청년정보와 휴식을 누리는 공간<br>
                                - 도서, 정보, 휴식을 제공하는 공간 (청춘끼리 2층)<br>
                                - 아늑하고 편안하면서도 세련된 모던한 분위기
                            </p>
                        </div>
                        <div class="textbox-img"></div>
                    </div>
                    <div class="space-concept-text">
                        <div class="textbox-img"></div>
                        <div class="inner-box">
                            <h4 class="concept-slogan">청년 쉬.어.라!</h4>
                            <p class="concept-text">
                                자유와 여유 속에 청년정보와 휴식을 누리는 공간<br>
                                - 도서, 정보, 휴식을 제공하는 공간 (청춘끼리 2층)<br>
                                - 아늑하고 편안하면서도 세련된 모던한 분위기
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!--컨셉 설명 끝-->

            <!--BI 소개 시작-->
            <div class="bi-info">
                <div class="title-box">
                    <div class="wrap3">
                        <h4 class="sc-item-title">BI디자인 소개</h4>
                    </div>
                </div>
                <div class="signature">
                    <div class="bi-subtitle-box">
                        <h5 class="bi-subtitle">시그니처 Signature</h5>
                    </div>
                    <div class="bi-contents">
                        <div class="bi-info-img">
                            <img class="inct-pc-mt-i inct-tab-lt-none" src="${path}/resources/image/nunalogo1.png" alt="청춘나들목">
                        </div>
                        <p class="bi-info-text">
                            하나의 공간에서 각자 다른 열정 을 가진 청년들이 다양한 방법으로 꿈을 찾아가는 모습을 형상화 합니다.
                            서로 다른 길을 가는 것 같지만
                            그 끝이 서로에게 연결되어 영향을주고 도움을 받을 수 있는 청춘들만의 공간적 의미를 담고 있습니다.
                        </p>
                    </div>
                </div>
                <div class="color-system">
                    <div class="bi-subtitle-box">
                        <h5 class="bi-subtitle">Color System</h5>
                    </div>
                    <div class="bi-contents">
                        <ul class="bi-info-list">
                            <li>
                                <div class="colorbox"></div>
                                <p>#ffc629</p>
                            </li>
                            <li>
                                <div class="colorbox"></div>
                                <p>#005cb9</p>
                            </li>
                            <li>
                                <div class="colorbox"></div>
                                <p>#575757</p>
                            </li>
                        </ul>
                        <div class="bi-down-box">
                            <a class="circle-side-btn trip" href="https://daejeonyouth.co.kr/thema/Basic/assets/img/logo-rest.png" target="_blank" download="">BI 다운로드</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--BI 소개 끝-->

        </div>
        <!--중앙부분 끝-->
    </div>
    <!--끝-->
    <!--이미지 슬라이드-->
   <!--  <script type="text/javascript" src="script/slide.js"></script> -->
</body>
</html>