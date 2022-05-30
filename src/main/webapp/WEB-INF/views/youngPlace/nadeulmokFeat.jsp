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
<title>청춘나들목 특징</title>
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
    height: 3700px;
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

/*지도*/
.blueprint-box
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: block !important;
    width: 100%;
    border: 1px solid #959595;
    overflow: hidden;
    max-width: 924px;
    margin: 0 auto 50px;
    padding: 29px;
}
.blueprint-box.multi-level .level-tabmenu-box
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
    width: 40px;
    padding-top: 20px;}
.blueprint-box.multi-level .level-tabmenu-box ul#level-tabmenu
{   
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    margin: 0;
    width: 100%;
    overflow: hidden;}
.blueprint-box.multi-level .level-tabmenu-box ul#level-tabmenu li
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
    width: 100%;
    height: 40px;
}

.blueprint-box.multi-level .level-tabmenu-box ul#level-tabmenu li.on button.level-tab-btn
{   
    list-style: none;
    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    padding: 0;
    margin: 0;
    font: inherit;
    overflow: visible;
    text-transform: none;
    appearance: button;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    outline: none;
    cursor: pointer !important;
    width: 100%;
    border-radius: 4px;
    border: 3px solid #efefef;
    border-right: 0;
    text-align: center;
    transition: all 0.2s;
    height: 40px;
    line-height: 38px;
    font-size: 16px;
    font-weight: 400;
    border-bottom-width: 1px;
    border-top-width: 1px;
    color: white !important;
    background: #efefef;
    border-color: #12625f;
    background-color: #12625f;
}
.blueprint-box .blueprint.active
{   
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    border-radius: 4px;
    border: 3px solid #efefef;
    overflow: hidden;
    float: left;
    width: calc(100% - 40px);
    border-color: #12625f;
    padding: 47px;
    position: relative;
    display: block;}
.blueprint-box .blueprint.trip-level3 .emptyspace
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
    width: 4.0223463687150837988826815642458%;
    height: 200px;
}
.blueprint-box .blueprint.trip-level3 .non-use-box.screen
{    
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    width: 34.636871508379888268156424581006%;
    height: 30px;
    line-height: 30px;
    margin-right: 2.234636871508379888268156424581%;
    margin-bottom: 20px;}
.blueprint-box .blueprint .non-use-box span
{
 
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    color: #999;
    line-height: 26px;
    font-weight: 500;
    vertical-align: middle;
}


.blueprint-box .blueprint.trip-level3 .non-use-box-wrap
{    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: right;
    width: 18.212290502793296089385474860335%;
    margin-left: 2.234636871508379888268156424581%;
}

.blueprint-box .blueprint.trip-level3 .non-use-box.manageroom
{    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    width: 100%;
    height: 160px;
    line-height: 160px;
    margin-bottom: 2.234636871508379888268156424581%;
}
.blueprint-box .blueprint.trip-level3 .non-use-box.step
  
{line-height: 1.42857143;
color: #333;
letter-spacing: -1px;
margin: 0;
padding: 0;
box-sizing: border-box;
font-family: 'Noto Sans KR', sans-serif;
float: left;
border-radius: 4px;
font-size: 15px;
text-align: center;
clear: both;
width: 100%;
height: 163px;
background: url(${path}/resources/image/chastair.png) no-repeat center center;
background-size: cover;
}


.blueprint-box .blueprint.trip-level3 button.available.halla
   { letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    padding: 0;
    margin: 0;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    appearance: button;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    display: table-cell;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    border-color: #12625f;
    position: relative;
    float: right;
    width: 38.659217877094972067039106145251%;
    height: 350px;
    padding-top: 50px;
}

.blueprint-box .blueprint.trip-level3 button.available.halla span.topspace
    {font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
    position: absolute;
    top: -2px;
    right: -2px;
    height: 120px;
    background: #12625f;
    width: 170px;
}
.blueprint-box .blueprint button.available span
{
    
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
}
.blueprint-box .blueprint.trip-level3 button.available.halla span.circlespace-left
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
    position: absolute;
    bottom: 120px;
    left: -12px;
    width: 50px;
    height: 100px;
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
    border: 2px solid #12625f;
    border-left: 0;
    background: white;
}
.blueprint-box .blueprint.trip-level3 button.available.halla span.bottomspace
   { font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
    position: absolute;
    bottom: -2px;
    left: -2px;
    width: 28.901734104046242774566473988439%;
    height: 60px;
    background: #12625f;
}

.blueprint-box .blueprint.trip-level3 button.available.hallb
  {  letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    padding: 0;
    margin: 0;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    appearance: button;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    display: table-cell;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    border-color: #12625f;
    position: relative;
    float: right;
    width: 34.636871508379888268156424581006%;
    height: 300px;
    margin-right: 2.234636871508379888268156424581%;
}
.blueprint-box .blueprint.trip-level3 button.available.hallb span.leftedge
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
    position: absolute;
    bottom: -2px;
    left: -38px;
    border-left: 36px solid transparent;
    border-top: 120px solid #12625f;
}
.blueprint-box .blueprint.trip-level3 button.available.hallb span.rightspace
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
    position: absolute;
    bottom: -2px;
    right: -2px;
    width: 12.903225806451612903225806451613%;
    height: 60px;
    background: #12625f;
}
.blueprint-box .blueprint.trip-level3 button.available.hallb span.circlespace-right
{   
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    line-height: 16px;
    color: #12625f;
    position: absolute;
    bottom: 120px;
    right: -12px;
    width: 50px;
    height: 100px;
    border-top-left-radius: 50px;
    border-bottom-left-radius: 50px;
    border: 2px solid #12625f;
    border-right: 0;
    background: white;
}

.blueprint-box .blueprint.trip-level3 .non-use-box.info3
{   
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    position: absolute;
    top: 47px;
    width: 18.212290502793296089385474860335%;
    height: 100px;
    line-height: 100px;
    margin-left: 2.234636871508379888268156424581%;
    margin-bottom: 20px;
    right: 195px;
}
.blueprint-box .blueprint .non-use-box span
{
    font-size: 15px;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    color: #999;
    line-height: 26px;
    font-weight: 500;
    vertical-align: middle;
}
.blueprint-box .blueprint.trip-level3 .non-use-box.circle-col
{
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    position: absolute;
    top: 195px;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    line-height: 60px;
    left: 305px;
}
.blueprint-box .blueprint.trip-level3 button.available.halla span.topspace:before
{    content: '';
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    width: 168px;
    height: 118px;
    background: white;
}
.blueprint-box .blueprint.trip-level3 button.available.halla span.bottomspace:before
{
content: '';
    display: block;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 78px;
    height: 58px;
    background: white;
}

.blueprint-box .blueprint.trip-level3 button.available.hallb span.leftedge:before

{
        content: '';
    display: block;
    position: absolute;
    top: -118px;
    right: -2px;
    border-left: 36px solid transparent;
    border-top: 119px solid #e5e5e5;
    transition: all 0.2s;
    box-sizing: border-box;
}
.blueprint-box .blueprint.trip-level3 button.available.hallb span.rightspace:before
{
    content: '';
    display: block;
    position: absolute;
    bottom: 0;
    right: 0;
    width: 30px;
    height: 58px;
    background: white;
}

.blueprint-box .blueprint.trip-level3 .non-use-box.circle-col:before
{
        content: '';
    display: block;
    width: 16px;
    height: 20px;
    position: absolute;
    top: -30px;
    left: 50%;
    margin-left: -8px;
    background: white;
}
.blueprint-box .blueprint.trip-level3 .non-use-box.circle-col:after
{
   content: '';
    display: block;
    width: 16px;
    height: 20px;
    position: absolute;
    bottom: -30px;
    left: 50%;
    margin-left: -8px;
    background: white; 
}

/*지도 끝*/


/*공간 특징 아이템 시작*/
.sc-item-2
   { font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    padding: 100px 0;
    position: relative;
    background: url(${path}/resources/image/cha-feature-deco-trip-2.png) no-repeat 2.5% bottom;}
.sc-item-2:before
{
    content: '';
    display: block;
    position: absolute;
    top: -233px;
    right: 5%;
    z-index: 0;
    width: 278px;
    height: 347px;
    background: url(${path}/resources/image/cha-feature-deco-trip-1.png) no-repeat center center;}

.sc-item .title-box
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 95%;
    overflow: visible;
/*    background: #333;*/
}
.sc-item h3.sc-title
{
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    color: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    font-size: 28px;
    line-height: 28px;
    text-align: center;
    padding-bottom: 40px;
    font-weight: 500;
    position: relative;
}
.sc-item h3.sc-title:before
{
    top: -20px;
    margin-left: 53px;
    width: 17px;
    height: 40px;
    background-image: url(${path}/resources/image/cha-feature-title-trip.png);
/*    background: #333;*/
}
.sc-item h3.sc-title:before
{position: absolute;
    left: 50%;
    content: '';
    font-size: 0;
    display: block;
    background-repeat: no-repeat;
    background-position: center center;}

.wrap1
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
}
.feature-info
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
/*    float: left;*/
/*    width: 50%;*/
/*    height: 460px;*/
    padding-right: 55px;
/*    padding-top: 25px;*/
}
.feature-info .feature-info-textbox
{
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
    background: rgba(255, 255, 255, 0.8);
}

.feature-info .feature-info-textbox h4.feature-info-title
{
     
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    font-size: 30px;
    line-height: 30px;
    font-weight: 700;
    letter-spacing: 0;
/*    text-align: right;*/
    color: #28aca7;
    padding-bottom: 25px;
    border-bottom: 1px solid #7d7d7d;
}
.feature-info.thumb-right .feature-info-textbox p.feature-info-text
{
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    font-size: 15px;
    color: #777;
    line-height: 25px;
    word-break: keep-all;
/*    text-align: right;*/
    padding-left: 50px;
}
.feature-info .feature-info-textbox p.feature-info-text span.feature-info-slogan
{
    color: #777;
    line-height: 25px;
    word-break: keep-all;
/*    text-align: right;*/
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    font-size: 20px;
    margin: 30px 0 40px;
    font-weight: 300;
}
.feature-info.thumb-right .feature-info-textbox p.feature-info-text
{
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    font-size: 15px;
    color: #777;
    line-height: 25px;
    word-break: keep-all;
/*    text-align: right;*/
    padding-left: 40px;
}

/*공간 특징 아이템 끝*/

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

/*운영안내 시작*/
.sc-item.operate
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    padding: 40px 0;
    background-color: #f2eadc;
    background-position: right bottom;
    background-repeat: no-repeat;
    background-image: url(${path}/resources/image/chainfor1.png);
}
.sc-item .title-box
{
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
    overflow: visible;
}
.sc-item h3.sc-title
{
    letter-spacing: -1px;
    box-sizing: border-box;
    border: 0;
    color: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    width: 100%;
    font-size: 28px;
    line-height: 28px;
    text-align: center;
    padding-bottom: 40px;
    font-weight: 500;
    position: relative;
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
    width: %;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: table;
}

.sc-item.operate .operate-time
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
    width: 100%;
    max-width: 555px;
    height: 250px;
    margin-right: 30px;
}
/*
.sc-item.operate .operate-info p
{
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0px;
    width: 100%;
    height: 100%;
    border-radius: 10px;
    background: rgba(0, 0, 0, 0.8);
    padding: 35px;
    font-size: 16px;
    color: #ddd;
    line-height: 26px;
    font-weight: 300;
    letter-spacing: -0.5px;
}
*/
.sc-item.operate .operate-info
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
    max-width: 555px;
    height: 250px;
}
.sc-item.operate .operate-info p
{
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0px;
    width: 100%;
    height: 100%;
    border-radius: 10px;
    background: rgba(0, 0, 0, 0.8);
    padding: 35px;
    font-size: 16px;
    color: #ddd;
    line-height: 26px;
    font-weight: 300;
    letter-spacing: -0.5px;
}
.inct-tab-mt-none
{
    word-break: break-all;
    font-size: 16px;
    color: #ddd;
    line-height: 26px;
    font-weight: 300;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
/*    display: none !important;*/
}





/*운영안내 끝*/
</style>


</head>
<body>
    <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            <!-- 나들목 -->
            <ul class="lnb-list lnb4">
                <li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
                <li class="lnb-menu active"><a href="${path}/nadeulmok.html">나들목소개</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=program_02">프로그램</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=news_02">나들목소식</a></li>
                <li class="lnb-menu "><a href="${path}/nadeulmokMap.html">찾아오시는길</a></li>
            </ul>

            <!-- 두두두 -->
        </nav>
    </div>


    <div id='sograp'>
        <div id='sogtop'>
            <h2>나들목특징<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘나들목 </a> > <a href='#'>나들목특징</a>
        </div>
        <!--중앙 부분 시작 -->
        <div id='sog'>
            <button type='button' onclick="location.href='${path}/nadeulmok.html'" class='sogtopbutton'>청춘나들목 소개</button>
            <button type='button' onclick="location.href='#'" class='sogtopbutton a1'>청춘나들목 특징</button>
            <!--    -->


            <!--지도-->
            
            <div class="blueprint-box multi-level inct-pc-mt-b inct-tab-lt-none">

                <!-- 공간 층 탭메뉴 시작 -->
                <div class="level-tabmenu-box">
                    <ul id="level-tabmenu">
                        <li class="on"><button class="level-tab-btn">B3</button></li>
                    </ul>
                </div>
                <div class="blueprint trip-level3 active">
                    <div class="emptyspace"></div>
                    <div class="non-use-box screen"><span>스크린</span></div>
                    <div class="non-use-box-wrap">
                        <div class="non-use-box manageroom"><span>운영자<br>공간</span></div>
                        <div class="non-use-box step"></div>
                    </div>
                    <button class="available halla" section-link="#b3a">
                        <span class="topspace"></span>
                        <span>A홀</span>
                        <span class="circlespace-left"></span>
                        <span class="bottomspace"></span>
                    </button>
                    <button class="available hallb" section-link="#b3b">
                        <span>B홀</span>
                        <span class="leftedge"></span>
                        <span class="rightspace"></span>
                        <span class="circlespace-right"></span>
                    </button>
                    <div class="non-use-box info3"><span>안내데스크</span></div>
                    <div class="non-use-box circle-col"><span>기둥</span></div>
                </div>
            </div>
            <!-- 지도 끝-->

    
<!--공간 특징 아이템 시작-->
           <div class="sc-item sc-item-2" id="b1b">
        <div class="title-box">
            <h3 class="sc-title">지하 3층</h3>
        </div>
        <div class="wrap1">
            <div class="feature-info thumb-right">
                <div class="feature-info-textbox">
                    <h4 class="feature-info-title">A홀</h4>
                    <p class="feature-info-text">
                        <span class="feature-info-slogan">최대 30명 / 다과회, 개인업무</span>
                        청춘나들목은 모든 청년들이 모여 자유롭게 창업, 소모임, 개인업무 등으로 이용하는 것은 물론 카페처럼 이용해도 되는 곳 입니다.<br>
                        * 다같이 사용하는 공간으로 뒷정리를 깨끗이 해주세요.
                    </p>
                    <p class="feature-info-text">
                        <span class="feature-info-slogan">임대 가능 장비</span>
                        간이 벽 1개 설치가능 (문 포함), 빔프로젝트 및 스크린(이동형) 1set, 마이크, 노트북(임대 가능), 음향
                    </p>
                </div>
            </div>
        </div>
    </div>          
           <!--공간 특징 아이템 끝-->
 
            <!--슬라이드 이미지 시작-->
            <div id="index_03">
                <div id="header3"></div>
                <div id="slide3">
                    <ul>
                        <li><a href="#"><img src="${path}/resources/image/cha1.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/cha2.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/cha3.png" width="1000" height="500"></a></li>
                    </ul>
                </div>
            </div>
            <!--슬라이드 이미지 끝-->
           
              
<!--공간 특징 아이템2 시작-->
           <div class="sc-item sc-item-2" id="b1b">
        <div class="title-box">
            <h3 class="sc-title">지하 3층</h3>
        </div>
        <div class="wrap2">
            <div class="feature-info thumb-right">
                <div class="feature-info-textbox">
                    <h4 class="feature-info-title">B홀</h4>
                    <p class="feature-info-text">
                        <span class="feature-info-slogan">최대 40명 / 대회의</span>
                        청춘나들목은 모든 청년들이 모여 자유롭게 창업, 소모임, 개인업무 등으로 이용하는 것은 물론 카페처럼 이용해도 되는 곳 입니다.<br>
                        * 다같이 사용하는 공간으로 뒷정리를 깨끗이 해주세요.
                    </p>
                    <p class="feature-info-text">
                        <span class="feature-info-slogan">임대 가능 장비</span>
                        간이 벽 1개 설치가능 (문 포함), 빔프로젝트 및 스크린(이동형) 1set, 마이크, 노트북(임대 가능), 음향
                    </p>
                </div>
            </div>
        </div>
    </div>          
           <!--공간 특징 아이템 끝-->
           
 
            <!--슬라이드 이미지 시작-->
            <div id="index_03">
                <div id="header3"></div>
                <div id="slide3">
                    <ul>
                        <li><a href="#"><img src="${path}/resources/image/cha1.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/cha2.png" width="1000" height="500"></a></li>
                        <li><a href="#"><img src="${path}/resources/image/cha3.png" width="1000" height="500"></a></li>
                    </ul>
                </div>
            </div>
            <!--슬라이드 이미지 끝-->

<!--  운영안내 시작  -->
           
      <div class="sc-item operate">
        <!-- 아이템 타이틀 시작 -->
        <div class="title-box">
            <h3 class="sc-title">운영안내</h3>
        </div>
        <!-- 아이템 타이틀 끝 -->

        <!-- 1200px 묶음 시작 -->
        <div class="wrap2">
            <div class="operate-info operate-time">
                <p>
                    월요일 - 금요일 : 10 : 00 ~ 21 : 00<br>
                    토요일 : 10 : 00 ~ 18 : 00 (개방)<br>
                    *일요일, 공휴일은 정기 휴관합니다.<br>
                    <br>
                    개방시간 동안 청춘나들목을 사랑하는 누구나 무료로 공간 이용이 가능합니다. 단, 대관을 희망할 경우 대전청년공간 멥버쉽 가입자에 한해 월요일 - 토요일에 신청하시면 전체 공간을 대관할 수 있습니다.
                </p>
            </div>
            <div class="operate-info operate-contact">
                <p>
                    대전광역시 동구 중앙로<br class="inct-tab-mt-none inct-pc-mt-i"> 지하 218 대전역 B1 / B3<br>
                    <br>
                    TEL : 070-4275-9993(지하3층) <br>
                    E - MAIL : dareunkorea20@gmail.com<br>
                </p>
            </div>
        </div>
        <!-- 1200px 묶음 끝 -->
    </div>     
           
           
           
           
<!--  운영안내 끝-->


        </div>
        <!--중앙 부분 끝 -->
    </div>
    <!--끝-->
    <!--이미지 슬라이드-->
    <script type="text/javascript" src="script/slide.js"></script>

  </body>
</html>