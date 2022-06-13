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
    border-color: #005cb9
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
    overflow: hidden;
    max-width: 924px;
    margin: 0 auto 50px;
    border: 1px solid #959595;
    padding: 49px;
}
.blueprint-box .blueprint
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    overflow: hidden;
    border: 1px solid #959595;
    border-radius: 15px;
    padding: 19px;
    display: table;
    font-size: 0;
}



button.available.kitchen
{   
    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    display: table-cell;
    float: left;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    width: 14.89361702127659574468085106383%;
    margin-bottom: 0;
    padding: 120px 0;
    height: 232px;
    border-radius: 140px 0 0 0 / 190px 0;
    border-color: #19446e;
}

.blueprint-box .blueprint span
{    
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    transition: all 0.2s;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
    color: #19446e;}

.blueprint-box .blueprint span.circle-side-btn
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.2s;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
    color: #19446e;
}

.non-use-box.read-space
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    padding: 35px 0;
    width: 23.404255319148936170212765957447%;
    height: 117px;
    margin-bottom: 35px;
}

.blueprint-box .blueprint span
{   
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: #999;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
}
.blueprint-box .blueprint span.circle-side-btn
{
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.4s;
    color: #999;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
}
button.available.private-room
{

    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    padding: 2px 0;
    display: table-cell;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    height: 50px;
    margin-bottom: 17px;
    margin-right: 0;
    width: 57.446808510638297872340425531915%;
    border-color: #19446e;
}
.blueprint-box .blueprint span
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    transition: all 0.2s;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
    color: #19446e;
}
.blueprint-box .blueprint span.circle-side-btn
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.2s;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
    color: #19446e;
}
.non-use-box.pillar
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    width: 6.3829787234042553191489361702128%;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    height: 50px;
    padding: 13px 0;
    margin-bottom: 35px;
}
.blueprint-box .blueprint .pillar span
{
     
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: #999;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    line-height: 14px;
    padding: 0;
    height: 14px;
}

button.available.private-room.side-pillar
{   
    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    appearance: button;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    padding: 2px 0;
    display: table-cell;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    height: 50px;
    border-color: #19446e;
    width: 14.89361702127659574468085106383%;
    margin-bottom: 50px;
}
.blueprint-box .blueprint span
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    transition: all 0.2s;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
    color: #19446e;
}
.blueprint-box .blueprint span.circle-side-btn
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.2s;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
    color: #19446e;
}
.non-use-box.bgwhite
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    width: 6.3829787234042553191489361702128%;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    height: 50px;
    background: white;
    margin-bottom: 35px;
}
button.available.private-room.side-pillar
{    
    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    padding: 2px 0;
    display: table-cell;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    height: 50px;
    border-color: #19446e;
    width: 14.89361702127659574468085106383%;
    margin-bottom: 50px;
}
.blueprint-box .blueprint span
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    transition: all 0.2s;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
    color: #19446e;
}
.blueprint-box .blueprint span.circle-side-btn
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.2s;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
    color: #19446e;
}
.non-use-box.pillar
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    width: 6.3829787234042553191489361702128%;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    height: 50px;
    padding: 13px 0;
    margin-right: 0;
    margin-bottom: 35px;
}
.blueprint-box .blueprint .pillar span
{
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: #999;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    line-height: 14px;
    padding: 0;
    height: 14px;
}
button.available.commu-space
{
    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    padding: 0;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    display: table-cell;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    width: 23.404255319148936170212765957447%;
    margin-bottom: 0;
    height: 80px;
    border-color: #19446e;
}
.blueprint-box .blueprint span
{
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    transition: all 0.2s;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
    color: #19446e;
}
.blueprint-box .blueprint span.circle-side-btn
{   
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.2s;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
    color: #19446e;
}
button.available.library-space
{
    letter-spacing: -1px;
    box-sizing: border-box;
    vertical-align: middle;
    font: inherit;
    color: inherit;
    overflow: visible;
    text-transform: none;
    -webkit-appearance: button;
    line-height: inherit;
    font-family: 'Noto Sans KR', sans-serif;
    outline: none;
    cursor: pointer !important;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    padding: 18px 0;
    display: table-cell;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    border: 2px solid #efefef;
    text-align: center;
    background: #e5e5e5;
    transition: all 0.2s;
    width: 31.914893617021276595744680851064%;
    height: 100px;
    margin-bottom: 0;
    border-color: #19446e;
}

.blueprint-box .blueprint span
{    
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    text-align: center;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    transition: all 0.2s;
    display: inline-block;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    height: 20px;
    line-height: 14px;
    padding-bottom: 6px;
    color: #19446e;
}
.blueprint-box .blueprint span.circle-side-btn
{
     
    font: inherit;
    text-transform: none;
    cursor: pointer !important;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 80px;
    margin: 0 auto;
    border-radius: 12.5px;
    border: 1px solid transparent;
    text-align: center;
    transition: all 0.2s;
    font-weight: 500;
    vertical-align: middle;
    font-size: 14px;
    display: inline-block;
    border-color: #19446e;
    padding: 0;
    height: 20px;
    line-height: 18px;
    color: #19446e;
}
.non-use-box.info-desk
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    border-radius: 4px;
    font-size: 15px;
    text-align: center;
    background: #e5e5e5;
    margin: 0 2.1276595744680851063829787234043% 21px 0;
    padding: 18px 0;
    margin-right: 0;
    width: 23.404255319148936170212765957447%;
    margin-bottom: 0;
    height: 80px;
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
    background-image: url(${path}/resources/image/1feature-thumb-rest-1.png);
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
    background-image: url(${path}/resources/image/feature-thumb-rest-2.png);
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
    background-image: url(${path}/resources/image/feature-thumb-rest-3.png);
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
    background-image: url(${path}/resources/image/feature-thumb-rest-4.png);
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
    margin: 25px 0;
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
    color: #005cb9;
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
                <li class="lnb-menu active"><a href="${path}/neonadeuli.html">너나들이소개</a></li>
               <!--  <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=program_02">프로그램</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=news_02">너나들이소식</a></li> -->
                <li class="lnb-menu "><a href="${path}/neonadeuliMap.html">찾아오시는길</a></li>
            </ul>

            <!-- 두두두 -->
        </nav>
    </div>


    <div id='sograp'>
        <div id='sogtop'>
            <h2>너나들이특징<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘너나들이 </a> > <a href='#'>너나들이특징</a>
        </div>
        <!--중앙 부분 시작 -->
        <div id='sog'>
            <button type='button' onclick="location.href='${path}/neonadeuli.html'" class='sogtopbutton'>청춘너나들이 소개</button>
            <button type='button' onclick="location.href='#'" class='sogtopbutton a1'>청춘너나들이 특징</button>
            <!--    -->


            <!--지도-->

            <div class="blueprint-box inct-pc-mt-b inct-tab-lt-none">
                <!-- 공간 설계도 시작 -->
                <div class="blueprint">
                    <!-- 공간 박스 시작 -->
                    <button class="available kitchen" go-to-section="#rest-kitchen">
                        <span>공유공간</span><br>
                        <span class="circle-side-btn">먹장</span>
                    </button>
                    <div class="non-use-box read-space ptb50">
                        <span>도서공간</span><br>
                        <span class="circle-side-btn">보장</span>
                    </div>
                    <button class="available private-room mr0 ptb6" go-to-section="#rest-private-room">
                        <span>개인공간</span><br>
                        <span class="circle-side-btn">펴장</span>
                    </button>
                    <div class="non-use-box pillar ptb20">
                        <span>기둥</span>
                    </div>
                    <button class="available private-room side-pillar ptb6" go-to-section="#rest-private-room">
                        <span>개인공간</span><br>
                        <span class="circle-side-btn">펴장</span>
                    </button>
                    <div class="non-use-box bgwhite"></div>
                    <button class="available private-room side-pillar ptb6" go-to-section="#rest-private-room">
                        <span>개인공간</span><br>
                        <span class="circle-side-btn">펴장</span>
                    </button>
                    <div class="non-use-box pillar mr0 ptb20">
                        <span>기둥</span>
                    </div>
                    <button class="available commu-space" go-to-section="#rest-community">
                        <span>커뮤니티공간</span><br>
                        <span class="circle-side-btn">나누장</span>
                    </button>
                    <button class="available library-space ptb25" go-to-section="#rest-library">
                        <span>라이브러리</span><br>
                        <span class="circle-side-btn">책장</span>
                    </button>
                    <div class="non-use-box info-desk mr0 ptb25">
                        <span>안내데스크</span><br>
                        <span>(운영자 공간 : 알장)</span>
                    </div>
                    <!-- 공간 박스 끝 -->
                </div>

            </div>
            <!-- 지도 끝-->


            <!--공간 특징 아이템 시작-->

            <div id="rest-library" class="sc-item gray sc-item-1">

                <div class="title-box">
                    <h3 class="sc-title">라이브러리</h3>
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

                        <h4 class="feature-info-title">책장</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/chaicon1.png">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">지식</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/chaicon2.png" alt="정보">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">정보</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/chaicon3.png" alt="자기계발">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">자기계발</p>
                            </li>
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">청년 관련 서적 1500여권 보유</span>
                                향긋한 커피를 마시며 자유롭게 독서 가능합니다.<br> 책을 통해 쉬어가는 시간되세요.
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
                    <h3 class="sc-title">개인공간</h3>
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

                        <h4 class="feature-info-title">펴장</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-04.png" alt="스터디">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">스터디</p>
                            </li>
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
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">개인 공간 40석 이상</span>
                                개인 작업 및 그룹 모임도 가능<br> 청년들이 자유롭게 커피를 마시며 다양하게 역량을 키워갈 수 있는 공간입니다.
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
                    <h3 class="sc-title">공유공간</h3>
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

                        <h4 class="feature-info-title">먹장</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-07.png">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">커피</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-08.png" alt="냉장고">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">냉장고</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-09.png" alt="휴식">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">휴식</p>
                            </li>
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">커피와 간단한 식사 가능</span>
                                다과 및 간단한 외부음식 반입 가능하며,<br> 너나들이 공유부엌에서 잠시 쉬어가세요.
                            </p>
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
                    <h3 class="sc-title">커뮤니티</h3>
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

                        <h4 class="feature-info-title">나누장</h4>

                        <!-- 특징 아이콘 시작 -->
                        <ul class="feature-icon">
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-10.png">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">그룹모임</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-11.png" alt="커뮤니티">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">커뮤니티</p>
                            </li>
                            <li>
                                <div class="icon">
                                    <img class="inct-wide-i inct-pc-lt-none" src="${path}/resources/image/rest-icon-12.png" alt="비지니스">
                                </div>
                                <p class="inct-tab-mt-b inct-m-none">비지니스</p>
                            </li>
                        </ul>
                        <!-- 특징 아이콘 끝 -->

                        <!-- 특징 설명 시작 -->
                        <div class="feature-info-textbox">
                            <p class="feature-info-text">
                                <span class="feature-info-slogan">최대 12명 그룹모임 가능</span>
                                빔프로젝트와 노트북도 대여 가능합니다.<br>삼삼오오 모여 소통하고 어울릴 수 있는 공간입니다.
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
                            토요일 : 11 : 00 ~ 17 : 00 (개방)<br>
                            *일요일, 공휴일은 휴무입니다.<br>
                            <br>
                            개방시간 동안 청춘나들목을 사랑하는 누구나 무료로 공간 이용이 가능합니다. 단, 대관을 희망할 경우 대전청년공간 멥버쉽 가입자에 한해 월요일 - 토요일에 신청하시면 전체 공간을 대관할 수 있습니다.
                        </p>
                    </div>
                    <div class="operate-info operate-contact">
                        <p>
                            대전광역시 서구 둔산중로 19,2층(샤크존 2층)<br class="inct-tab-mt-none inct-pc-mt-i"> <br>
                            <br>
                            TEL : 070-4275-9995 <br>                    
                            FAX : 042-720-9303<br>
                            E - MAIL : info@bloomword.io<br>
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
   <!--  <script type="text/javascript" src="script/slide.js"></script> -->
  </body>
</html>