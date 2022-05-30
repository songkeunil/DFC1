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
<title>청춘나들목 소개</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
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
<style>
#sograp {
    width: 1400px;
    height: 3300px;
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
    border-color: #32caca;
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
    border-color: #32caca
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
    background: #32caca;
    color: white;
}

/*해당페이지 "청춘나들목 소개" 색상 고정*/
.a1 {
    background: #32caca;
    color: white;
}

h2 {
    width: 138px;
    height: 30px;
    font-size: 30px;
    border-bottom: 3px solid #32caca;

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

/*슬라이드 시작*/

#slide3 {
    /*    height: 300px;*/
    border-bottom: 1px solid dimgrey;
    /*    background: black;*/
    margin-bottom: 520px;

}

#slide3 > ul > li {
    position: absolute;
    font-size: 0;
}

/*슬라이드 끝*/

/*슬라이드 정보 시작*/
#sss {
    padding: 0 40px 80px;
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
.space-concept {
    /*    background: black;*/
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
    position: relative;
    z-index: -100;
    height: 360px;
}

.concept-box.concept-left {

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
    padding-top: 70px;
    padding-right: 30px;
    background: #2dc8c1 url("${path}/resources/image/%EC%B2%AD%EC%B6%98%EB%82%98%EB%93%A4%EB%AA%A9%EC%99%BC%EC%AA%BD%EC%86%8C%EA%B0%9C.PNG") no-repeat;
    8.3333333333333333333333333333333% 175px;
    background-image: url("${path}/resources/image/%EC%B2%AD%EC%B6%98%EB%82%98%EB%93%A4%EB%AA%A9%EC%99%BC%EC%AA%BD%EC%86%8C%EA%B0%9C.PNG");
    background-position: 8.3333333333333333333333333333333% 95px;
}

.space-concept .concept-box.concept-left h3.sc-title-concept {

    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    border-top: 4px solid white;
    color: white;
    font-weight: 300;
    letter-spacing: -0.5px;
    border-top-width: 3px;
    font-size: 20px;
    line-height: 50px;
    text-align: right;
}

.space-concept .concept-box h3.sc-title-concept span.emph {

    /*    font-weight: 300;*/
    line-height: 50px;
    text-align: right;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    padding-left: 10px;
    vertical-align: baseline;
    color: white;
    font-size: 30px;
}

/*컨셉 왼쪽 끝*/

/*컨셉 오른쪽 시작*/
.space-concept .concept-img {
    /*    background: black;*/
    background-image: url(${path}/resources/image/%EC%BB%A8%EC%85%89%EC%98%A4%EB%A5%B8%EC%AA%BD.png);
    font-size: 0px;
    padding-left: 30px;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
    padding-top: 70px;
    float: left;
    width: 50%;
    height: 100%;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
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
    padding: 20px 0;
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
}

.space-concept-textbox .textbox-img{
    font-size: 14px;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: block !important;
    float: left;
    width: 43.859649122807017543859649122807%;
    height: 480px;
    text-align: left;
    line-height: 480px;
}

.space-concept-textbox .textbox-img img{  
    font-size: 14px;
    color: #333;
    text-align: left;
    line-height: 480px;
    letter-spacing: -1px;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
    border: 0;
    max-width: 100%;
    vertical-align: middle;
}

.space-concept-textbox .space-concept-text{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 56.140351%;
    height: 400px;
}


.space-concept-textbox .space-concept-text .inner-box{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    height: 240px;
    overflow: hidden;
}

.space-concept-textbox .space-concept-text .inner-box h4.concept-slogan{  
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    float: left;
    width: 47%;
    padding: 70px 0;
    font-size: 30px;
    color: #555;
    line-height: 45px;
    font-weight: 600;
    letter-spacing: -1.5px;
    text-align: center;
}

.inct-tab-mt-i{
    font-size: 30px;
    color: #555;
    line-height: 45px;
    font-weight: 600;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline !important;
}


.space-concept-textbox .space-concept-text .inner-box p.concept-text {
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0px;
    float: left;
    width: 53%;
    padding: 60px 0;
    font-size: 15px;
    color: #777;
    line-height: 25px;
    letter-spacing: -0.5px;
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
.wrap2{
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
    padding-left: 10px;
    color: #555;
    font-weight: 500;
    height: 20px;
    font-size: 20px;
    line-height: 20px;
    border-color: #e51994;
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
    background: #00bbb4; 
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
    background: #e31d93;
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
    border-color: #e51a94;
    width: 200px;
    height: 40px;
    border-radius: 20px;
    font-size: 16px;
    line-height: 38px;
    letter-spacing: -0.5px;
}
</style>


</head>
<body>
  <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            	<!-- 나들목 -->
		<ul class="lnb-list lnb4">
		<li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
		<li class="lnb-menu active"><a href="#">나들목소개</a></li>
		<li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=program_02">프로그램</a></li>
		<li class="lnb-menu "><a href="${path}/nadeulmokBoard.html">나들목소식</a></li>
		<li class="lnb-menu "><a href="${path}/nadeulmokMap.html">찾아오시는길</a></li>
	</ul>

	<!-- 두두두 -->
	        </nav>
    </div>
   
   
    <div id='sograp'>
        <div id='sogtop'>
            <h2>나들목소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘나들목 </a> > <a href='#'>나들목소개</a>
        </div>
        <!--중앙 부분 시작 -->
        <div id='sog'>
            <button type='button' onclick="location.href='#'" class='sogtopbutton a1'>청춘나들목 소개</button>
            <button type='button' onclick="location.href='${path}/nadeulmokFeat.html'" class='sogtopbutton'>청춘나들목 특징</button>
            <!--    -->
            <div class="sogi">
                <div id="sogii">
                    <a>청춘나들목이란?</a>
                </div>
            </div>
            <!--   -->
            <!-- 아이콘시작-->
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
                </div>
            </div>
            <!-- 아이콘 끝-->
            <!--슬라이드 이미지 시작-->
            <div id="index_03">
                <div id="header3"></div>
                <div id="slide3">
                    <ul>
                        <li><a href="#"><img src="${path}/resources/image/%EC%B2%AD%EC%B6%98%EC%86%8C%EA%B0%9C.PNG"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/%EC%B2%AD%EC%B6%98%EC%86%8C%EA%B0%9C2.PNG"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/%EC%B2%AD%EC%B6%98%EC%86%8C%EA%B0%9C3.PNG"></a></li>
                    </ul>
                </div>
            </div>
            <!--슬라이드 이미지 끝-->
            <!--슬라이드 정보 시작-->
            <div class="ss">
                <div id="sss">
                    <a>여행을 주제로 다양한 청년들의 모든 이야기가 모이는 청춘공간에서 개인업무,스터디,소모임,휴식 등 눈치볼 것 없이 접근하고 즐길 수 있도록 여려분이 원하는 무엇이든 청춘나들목이 함께합니다.</a>
                </div>
            </div>
            <!--슬라이드 정보 끝-->

            <!--청년공간 컨셉 시작-->
            <div class="space-concept">
                <!--컨셉 왼쪽 시작 -->
                <div class="concept-box concept-left">
                    <h3 class="sc-title-concept">청춘나들목<span class="emph">Concept</span></h3>
                </div>
                <!-- 컨셉 왼쪽 끝-->
                <!-- 컨셉오른쪽 시작 -->
                <div class="concept-img">이미지영역</div>
                <!-- 컨셉오른쪽 끝-->
            </div>
            <!--청년공간 컨셉 끝-->

            <!--컨셉요약 목록 시작-->
            <div class="space-concept-summary">
                <ul>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/trip_icon_01.png" alt="여행공유">
                        </div>
                        <p>여행 콘텐츠</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/trip_icon_02.png" alt="개인업무">
                        </div>
                        <p>취/창업</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/trip_icon_03.png" alt="스터디">
                        </div>
                        <p>스터디</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/trip_icon_04.png" alt="소모임">
                        </div>
                        <p>소모임</p>
                    </li>
                    <li>
                        <div class="icon">
                            <img style="width:auto;" src="${path}/resources/image/trip_icon_05.png" alt="휴식공간">
                        </div>
                        <p>휴식공간</p>
                    </li>
                </ul>
            </div>
            <!--컨셉요약 목록 끝-->

            <!--컨셉 설명 시작-->
            <div class="space-concept-textbox">
                <div class="wrap1">
                    <!-- 이미지 시작 -->
                    <div class="textbox-img inct-wide-b inct-pc-lt-none">
                        <img src="${path}/resources/image/concept-trip-2(2).png" alt="청춘나들목 컨셉">
                    </div>
                    <!-- 이미지 끝 -->
                    <div class="space-concept-text">
                        <div class="inner-box">
                            <h4 class="concept-slogan">청년<br class="inct-tab-mt-i inct-m-none"> 트래블피아!</h4>
                            <p class="concept-text">
                                여행/교통을 매개로 다양한 청년층과 청년활동을 포용하는 Transformable 네트워킹의 장Transformable 네트워킹의 장<br>
                                - 여행 콘텐츠 중심의 취/창업 교육, 세미나, 강연, 커뮤니티 운영 공간(B3)
                            </p>
                        </div>
                        <div class="inner-box">
                            <h4 class="concept-slogan">'대전역'<br class="inct-tab-mt-i inct-m-none"> 교통의 중심지</h4>
                            <p class="concept-text">
                                대전 청년공간 ‘청춘나들목’은 전국 주요도시에서 2시간<br>안에 거의, 언제든지, 접근할 수 있는 장소<br>
                                - ‘역’에 위치하여 교통 / 여행 / 떠나는 기대감 / 새로운 만남을 위한 장소<br>
                                - 다양한 Activity가 이뤄지는 공간으로 활용
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!--컨셉 설명 끝-->

            <!--BI 소개 시작-->
            <div class="bi-info">
                <div class="title-box">
                    <div class="wrap2">
                        <h4 class="sc-item-title">BI디자인 소개</h4>
                    </div>
                </div>
                <div class="signature">
                    <div class="bi-subtitle-box">
                        <h5 class="bi-subtitle">시그니처 Signature</h5>
                    </div>
                    <div class="bi-contents">
                        <div class="bi-info-img">
                            <img class="inct-pc-mt-i inct-tab-lt-none" src="${path}/resources/image/logo-trip_01.png" alt="청춘나들목">
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
                                <p>#00bbb4</p>
                            </li>
                            <li>
                                <div class="colorbox"></div>
                                <p>#e31d93</p>
                            </li>
                            <li>
                                <div class="colorbox"></div>
                                <p>#575757</p>
                            </li>
                        </ul>
                        <div class="bi-down-box">
                            <a class="circle-side-btn trip" href="https://daejeonyouth.co.kr/thema/Basic/assets/img/logo-trip.png" target="_blank" download="">BI 다운로드</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--BI 소개 끝-->



        </div>
        <!--중앙 부분 끝 -->
    </div>
    <!--끝-->
    <!--이미지 슬라이드-->
    <script type="text/javascript" src="script/slide.js"></script>
</body>
</html>