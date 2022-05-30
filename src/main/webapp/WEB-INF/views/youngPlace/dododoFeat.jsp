<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()"></sec:authorize>

<c:set var="path" value="${pageContext.request.contextPath}" />


<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>두두두특징</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/font.css" rel="stylesheet" />
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
 </script>
<script>
	//이미지슬라이드 시작
	$('#slide3>ul>li').hide();
	$('#slide3>ul>li:first-child').show();

	setInterval(function() {
		$('#slide3>ul>li:first-child').fadeOut().next().fadeIn().end(1000)
				.appendTo('#slide3>ul');
	}, 3000);
	//이미지슬라이드 끝
</script>
</head>
<style>
#sograp {
    width: 1400px;
    height: 4300px;
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
    border-color: #f94c07;
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
    border-color: #f94c07
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
    border-bottom: 3px solid #f94c07;
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
    background: #f94c07;
    color: white;
}

/*해당페이지 "청춘나들목 소개" 색상 고정*/
.a1 {
    background: #f94c07;
    color: white;
}

h2 {
    width: 138px;
    height: 30px;
    font-size: 30px;
    border-bottom: 3px solid #f94c07;

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
    width: 100%;
    border: 1px solid #959595;
    overflow: hidden;
    max-width: 924px;
    margin: 0 auto 50px;
    padding: 29px;
}
.level-tabmenu-box
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
    padding-top: 20px;
}
.level-tabmenu-box ul#level-tabmenu
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
    overflow: hidden;
}
.level-tabmenu-box ul#level-tabmenu li
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
    height: 55px;
}
.level-tabmenu-box ul#level-tabmenu li.on button.level-tab-btn
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
    height: 55px;
    border-radius: 4px;
    border: 3px solid #efefef;
    border-right: 0;
    text-align: center;
    line-height: 49px;
    font-size: 20px;
    font-weight: 500;
    transition: all 0.2s;
    border-bottom-width: 1px;
    color: white !important;
    background: #efefef;
    border-color: #842601;
    background-color: #842601; 
}
.level-tabmenu-box ul#level-tabmenu li
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
    height: 55px;  
}
.level-tabmenu-box ul#level-tabmenu li button.level-tab-btn
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
    background: transparent;
    cursor: pointer !important;
    width: 100%;
    height: 55px;
    border-radius: 4px;
    border: 3px solid #efefef;
    border-right: 0;
    text-align: center;
    line-height: 49px;
    font-size: 20px;
    font-weight: 500;
    transition: all 0.2s;
    border-top-width: 1px;
    color: #842601;
    border-color: #842601;
}
.blueprint-box .blueprint.active
{

    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    border-radius: 4px;
    overflow: hidden;
    float: left;
    width: calc(100% - 55px);
    border: 0;
    display: block; 
}
.blueprint-box .blueprint .level-1-1
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    float: left;
    width: 20.710059171597633136094674556213%;
    height: 230px;
    padding: 10px 0.98619329388560157790927021696252% 0;
    border: 3px solid #842601;
    border-bottom: 0;
    border-top-left-radius: 4px;
    border-top-right-radius: 4px;
}
.blueprint-box .blueprint .level-1-1 .dododo-1-1
{
    letter-spacing: -1px;
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
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    border-color: #842601;
    width: 100%;
    height: 217px;
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
    line-height: 26px;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    color: #842601; 
}
.blueprint-box .blueprint .level-1-2
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: left;
    float: left;
    width: 20.710059171597633136094674556213%;
    height: 110px;
    padding: 10px 0.98619329388560157790927021696252% 0;
    border: 3px solid #842601;
    border-top: 0;
    border-bottom: 0;
    background: #fff;
    position: relative;
    z-index: 10;
}
.blueprint-box .blueprint .level-1-2 .dododo-1-2
{
    letter-spacing: -1px;
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
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    border-color: #842601;
    width: 100%;
    height: 100px;
    position: relative;
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
    line-height: 26px;
    font-weight: 500;
    vertical-align: middle;
    transition: all 0.2s;
    color: #842601;
}
.blueprint-box .blueprint .level-1-2 .dododo-1-2:after
{
    content: '';
    display: block;
    position: absolute;
    bottom: -2px;
    left: -2px;
    width: 30px;
    height: 15px;
    border-top: 2px solid #842601;
    border-right: 2px solid #842601;
    background: white;
}
.blueprint-box .blueprint .level-1-dashline
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
    width: 79.289940828402366863905325443787%;
    height: 110px;
    border: 3px dashed #842601;
    border-left: 0;
    border-bottom: 0;
}
.blueprint-box .blueprint .level-1-3
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    height: 126px;
    padding: 10px 0.98619329388560157790927021696252%;
    border: 3px solid #842601;
    top: -3px;
    text-align: center;
    font-size: 0;
    position: relative;
}
.blueprint-box .blueprint .level-1-3:before
{
    content: '';
    display: block;
    position: absolute;
    bottom: -3px;
    left: -3px;
    z-index: 100;
    width: 30px;
    height: 126px;
    border-top: 3px solid #842601;
    border-right: 3px solid #842601;
    background: #fff;
}
.blueprint-box .blueprint .level-1-3 .non-use-box
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    float: none;
    display: inline-block;
    width: 100px;
    height: 100px;
    margin: 0 5px;
    padding: 30px 0; 
}
.inct-sub-contents.dododo .blueprint-box .blueprint .level-1-3 .non-use-box span
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
    font-weight: 500;
    vertical-align: middle;
    line-height: 20px;
}



/*지도 끝*/


/*공간 특징 아이템 시작*/
.sc-item-1
{
    font-size: 14px;
    line-height: 1.42857143;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: #888;
    clear: both;
    width: 100%;
    background-repeat: no-repeat;
    padding: 10px 0;
    border-top: 1px solid #efefef;
    border-bottom: 1px solid #efefef;
    background-color: #f5f5f5;
    position: relative;
}
.sc-item .title-box
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
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
    text-align: center;
    font-weight: 500;
    font-size: 20px;
    line-height: 20px;
    position: relative;
    padding-bottom: 50px;
    
}

.sc-item-1 h3.sc-title:before
{
    width: 173px;
    height: 31px;
    margin-left: 35px;
    background-image: url(${path}/resources/image/feature-title-rest-1.png);
}
.sc-item:not(.operate) .wrap1
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: table;
    height: 460px;
    overflow: visible; 
}
.feature-thumb
{

    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 50%;
    height: 460px;
    overflow: hidden;
}
.feature-thumb ul#thumb-slider
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    margin: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
    position: relative;
} 
.sc-item-1 .feature-thumb ul#thumb-slider li.thumb-item-1
{
    line-height: 1.42857143;
    color: #888;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 85%;
    font-size: 0;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(${path}/resources/image/feature-thumb-dododo-1.png);
}

/**/
.sc-item-1 .feature-thumb ul#thumb-slider li.thumb-item-2
{
    line-height: 1.42857143;
    color: #888;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 85%;
    font-size: 0;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(${path}/resources/image/feature-thumb-dododo-5.jpg);
}
/**/
.sc-item-1 .feature-thumb ul#thumb-slider li.thumb-item-3
{
    line-height: 1.42857143;
    color: #888;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 85%;
    font-size: 0;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(${path}/resources/image/feature-thumb-dododo-3.png);
}
/**/
.sc-item-1 .feature-thumb ul#thumb-slider li.thumb-item-4
{
    line-height: 1.42857143;
    color: #888;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 85%;
    font-size: 0;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-image: url(${path}/resources/image/feature-thumb-dododo-4.png);
}
/**/
.gray .feature-info
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 50%;
    height: auto;
    margin: 0px 0;
    position: relative;
    padding-left: 0;
    background: white;
}
.gray .feature-info h4.feature-info-title
{
    box-sizing: border-box;
    border: 0;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0;
    margin: 0;
    font-size: 30px;
    font-weight: 700;
    letter-spacing: 0;
    text-align: left;
    padding-right: 30px;
    color: #f94c07;
    width: 100%;
    height: 50px;
    padding-left: 30px;
    line-height: 50px;
    background: #f5f5f5;
} 
.feature-info.thumb-left ul.feature-icon
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    margin: 0;
    width: 100%;
    max-width: 500px;
    overflow: visible;
    position: relative;
    margin-bottom: 30px;
    float: left;
    padding: 20px 30px 20px 10px;
} 
.feature-info.thumb-left ul.feature-icon:before
{
    left: -50px;
    border-color: #ffbf00;
} 
.gray .feature-info ul.feature-icon li
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 120px;
    height: 120px;
    margin-right: 25px;
    border-top-left-radius: 10px;
    border-bottom-right-radius: 10px;
    background: white;
} 
.feature-info ul.feature-icon li .icon
{
    color: #888;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 0;
    width: 100%;
    height: 89px;
    line-height: 90px;
    text-align: center;
} 
.inct-wide-i
{
    color: #888;
    list-style: none;
    font-size: 0;
    line-height: 90px;
    text-align: center;
    letter-spacing: -1px;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
    border: 0;
    display: inline !important;
    max-width: 100%;
    vertical-align: middle;
} 
.feature-info ul.feature-icon li p
{
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    display: block !important;
    padding: 0px;
    margin: 0px;
    width: 100%;
    height: 29px;
    line-height: 15px;
    text-align: center;
    font-size: 15px;
    color: #555;
    font-weight: 500;
    letter-spacing: 0;
} 
.gray .feature-info .feature-info-textbox
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #888;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    clear: both;
    width: 100%;
    background: rgba(245, 245, 245, 0.8);
}
.feature-info.thumb-left p.feature-info-text
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
    padding-bottom: 25px;
/*    text-align: left;*/
    padding-right: 50px;
    padding-left: 30px;
    padding-top: 10px;
}
.feature-info .feature-info-textbox p.feature-info-text span.feature-info-slogan
{
    color: #777;
    line-height: 25px;
    word-break: keep-all;
/*    text-align: left;*/
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: block;
    font-size: 20px;
    margin: 30px 0 40px;
    font-weight: 300;
}
.rest .inct-sc.feature .sc-item-1 .feature-info:after
{
    top: 20px;
    right: -65px;
    width: 133px;
    height: 116px;
    background: url(${path}/resources/image/feature-deco-rest-1.png) no-repeat center center;
}
/*오른쪽 시작*/



/*공간 특징 아이템 끝*/


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
    background-image: url(${path}/resources/image/feature-info-dododo-bg-2.png);
    
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
<body>
  <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            <!-- 나들목 -->
            <ul class="lnb-list lnb4">
                <li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
                <li class="lnb-menu active"><a href="${path}/dododo.html">두두두소개</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=program_02">프로그램</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=news_02">두두두소식</a></li>
                <li class="lnb-menu "><a href="${path}/dododoMap.html">찾아오시는길</a></li>
            </ul>

            <!-- 두두두 -->
        </nav>
    </div>


    <div id='sograp'>
        <div id='sogtop'>
            <h2>두두두특징<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘두두두 </a> > <a href='#'>두두두특징</a>
        </div>
        <!--중앙 부분 시작 -->
        <div id='sog'>
            <button type='button' onclick="location.href='${path}/dododo.html'" class='sogtopbutton'>청춘두두두 소개</button>
            <button type='button' onclick="location.href='#'" class='sogtopbutton a1'>청춘두두두 특징</button>
            <!--    -->


            <!--지도-->
<div class="blueprint-box multi-level inct-pc-mt-b inct-tab-lt-none">

          <!-- 공간 층 탭메뉴 시작 -->
          <div class="level-tabmenu-box">
            <ul id="level-tabmenu">
              <li class="on"><button class="level-tab-btn">1F</button></li>
              <li><button class="level-tab-btn">B1</button></li>
            </ul>
          </div>
          <!-- 공간 층 탭메뉴 끝 -->
          
          <!-- 공간 설계도 ; 지상 1층 시작 -->
          <div class="blueprint dododo-level1 active">
            <!-- 공간 박스 시작 -->
              <div class="level-1-1">
                <button class="available dododo-1-1" section-link="#cafeteria"><span>만나 Zone</span></button>
              </div>
              <div class="level-1-2">
                <button class="available dododo-1-2" section-link="#inforoom"><span>정보 Zone</span></button>
              </div>
              <div class="level-1-dashline"></div>
              <div class="level-1-3">
                <div class="non-use-box dododo-1-3"><span>장애인<br>화장실</span></div>
                <div class="non-use-box dododo-1-4"><span>여자<br>화장실</span></div>
                <div class="non-use-box dododo-1-5"><span>남자<br>화장실</span></div>
              </div>
            <!-- 공간 박스 끝 -->
          </div>
          <!-- 공간 설계도 ; 지상 1층 끝 -->

					<script type="text/javascript">
						$(document).ready(function(){
							$('button.available').on('click',function(e){
								e.preventDefault();
								var sectionID = $(this).attr('section-link');
								var sectionPosition = $(sectionID).offset().top - 151;
								$('html').stop().animate({scrollTop:sectionPosition}, 800);
							})
						})
					</script>
        </div>
           
           
           
            <!-- 지도 끝-->


            <!--공간 특징 아이템 시작-->

            <div id="rest-library" class="sc-item gray sc-item-1">

                <div class="title-box">
                    <h3 class="sc-title">카페테리아</h3>
                </div>
                <!-- 아이템 타이틀 끝 -->

                <!-- 1200px 묶음 시작 -->
                <div class="wrap1">
                    <!-- 공간 썸네일 슬라이드 시작 -->
                    <div class="feature-thumb thumb-left">
                        <ul id="thumb-slider">
                            <li class="thumb-item-1"></li>
                        </ul>
                    </div>
                    <!-- 공간 썸네일 슬라이드 끝 -->

                    <!-- 공간 특징정보 시작 -->
                    <div class="feature-info thumb-left">

                        <h4 class="feature-info-title">만나 Zone</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-01.png">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">카페</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-02.png" alt="네트워크">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">네트워크</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-03.png" alt="개인작업">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">개인작업</p>
                            </li>
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">작업과 네트워킹의 공간</span>
                                커피,간단한 식사와 함께 개인작업이 가능하고,소셜다이닝 및 소규모 네트워킹 프로그램 운영.<br> 
                                
                            </p>
                        </div>
                        <!-- 특징 설명 끝 -->

                    </div>
                    <!-- 공간 특징정보 끝 -->
                </div>
                <!-- 1200px 묶음 끝 -->
            </div>
            <!--공간 특징 아이템 끝(왼쪽)-->

            <!--공간 특징 아이템 시작(오른쪽)-->

            <div id="rest-library" class="sc-item gray sc-item-1">

                <div class="title-box">
                    <h3 class="sc-title">게시공간</h3>
                </div>
                <!-- 아이템 타이틀 끝 -->

                <!-- 1200px 묶음 시작 -->
                <div class="wrap2">
                    <!-- 공간 썸네일 슬라이드 시작 -->
                    <div class="feature-thumb thumb-left">
                        <ul id="thumb-slider">
                            <li class="thumb-item-2"></li>
                        </ul>
                    </div>
                    <!-- 공간 썸네일 슬라이드 끝 -->

                    <!-- 공간 특징정보 시작 -->
                    <div class="feature-info thumb-left">

                        <h4 class="feature-info-title">정보 Zone</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-04.png" alt="정보">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">정보</p>
                            </li>
<!--
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-05.png" alt="독서">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">독서</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-06.png" alt="핸드폰 충전">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">핸드폰 충전</p>
                            </li>
-->
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">정책, 문화, 행사 정보</span>
                               청년정책 및 대전광역시 문화 행사 정보 포스터 게시 공간.<br>
                            </p>
                        </div>
                        <!-- 특징 설명 끝 -->

                    </div>
                    <!-- 공간 특징정보 끝 -->
                </div>
                <!-- 1200px 묶음 끝 -->
            </div>
<!---->
<!---->

            <div id="rest-library" class="sc-item gray sc-item-1">

                <div class="title-box">
                    <h3 class="sc-title">교육공간</h3>
                </div>
                <!-- 아이템 타이틀 끝 -->

                <!-- 1200px 묶음 시작 -->
                <div class="wrap2">
                    <!-- 공간 썸네일 슬라이드 시작 -->
                    <div class="feature-thumb thumb-left">
                        <ul id="thumb-slider">
                            <li class="thumb-item-3"></li>
                        </ul>
                    </div>
                    <!-- 공간 썸네일 슬라이드 끝 -->

                    <!-- 공간 특징정보 시작 -->
                    <div class="feature-info thumb-left">

                        <h4 class="feature-info-title">배우 Zone</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-05.png">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">지식</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-06.png" alt="자기계발">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">자기계발</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-07.png" alt="강의">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">강의</p>
                            </li>
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">작업과 자기계발의 공간</span>
                                총 24석, 중간 규모의 강의나 프레젠테이션을 할 수 있는 공간.<br> 마이크, 컴퓨터 및 빔 프로젝트 사용 가능.                            </p>
                        </div>
                        <!-- 특징 설명 끝 -->

                    </div>
                    <!-- 공간 특징정보 끝 -->
                </div>
                <!-- 1200px 묶음 끝 -->
            </div>
<!--            -->
<!--        -->

            <div id="rest-library" class="sc-item gray sc-item-1">

                <div class="title-box">
                    <h3 class="sc-title">행사 공간</h3>
                </div>
                <!-- 아이템 타이틀 끝 -->

                <!-- 1200px 묶음 시작 -->
                <div class="wrap2">
                    <!-- 공간 썸네일 슬라이드 시작 -->
                    <div class="feature-thumb thumb-left">
                        <ul id="thumb-slider">
                            <li class="thumb-item-4"></li>
                        </ul>
                    </div>
                    <!-- 공간 썸네일 슬라이드 끝 -->

                    <!-- 공간 특징정보 시작 -->
                    <div class="feature-info thumb-left">

                        <h4 class="feature-info-title">라이브 Zone</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-11.png">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">영화상영</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-13.png" alt="강연">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">강연</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/doicon-12.png" alt="공연">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">공연</p>
                            </li>
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">함께하는 즐거움</span>
                                100명 규모의 관람석이 있어 공연, 강연이 가능하고 <br>빔 프로젝터를 이용한 영화 상영이 가능한 공간.
                            </p>
                        </div>
                        <!-- 특징 설명 끝 -->

                    </div>
                    <!-- 공간 특징정보 끝 -->
                </div>
                <!-- 1200px 묶음 끝 -->
            </div>



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
                            월요일 - 금요일 : 11 : 00 ~ 20 : 00<br>
                            토요일 : 11 : 00 ~ 17 : 00 <br>
                            *일요일, 공휴일은 정기 휴관합니다.<br>
                            <br>
                            개방시간 동안 청춘두두두를 사랑하는 누구나 무료로 공간 이용이 가능합니다.
                        </p>
                    </div>
                    <div class="operate-info operate-contact">
                        <p>
                            대전광역시 서구 강마중로 30번길 67<br>1층/지하1층<br class="inct-tab-mt-none inct-pc-mt-i"> <br>
                            <br>
                            TEL : 070-4275-9996 <br>                    
                            E-MAIL:ccdododo@naver.com<br>
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