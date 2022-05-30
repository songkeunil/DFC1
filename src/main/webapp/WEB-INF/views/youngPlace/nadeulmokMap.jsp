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
    border-color: #2dc8c1;;
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
    border-color: #2dc8c1;;
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
    border-bottom: 3px solid #2dc8c1;;
}
/* 중앙 부분*/
.title-box
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
    overflow: hidden;
}
h3.sc-title
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
    font-weight: 500;
    padding-bottom: 25px;
    padding-top: 50px;
}
p.sc-title-text
{
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    padding-bottom: 35px;
    font-size: 20px;
    color: #555;
    text-align: center;
    line-height: 30px;
    font-weight: 300;
    letter-spacing: -0.5px;
}
.inct-tab-mt-none
{
    word-break: break-all;
    font-size: 20px;
    color: #555;
    text-align: center;
    line-height: 30px;
    font-weight: 300;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: none !important;
}

/* 지하철 버스*/
.traffic
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
    border-top: 1px solid #959595;
    border-bottom: 1px solid #959595;
    overflow: hidden;
    margin-top: 25%;
}
.traffic .traffic-info.bus
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
    padding: 24px 0;
    overflow: hidden;
    border-right: 1px solid #959595;
}
.traffic .traffic-info.bus
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
    padding: 24px 0;
    overflow: hidden;
    border-right: 1px solid #959595;
}
.traffic .traffic-info .vehicle
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 125px;
    padding: 30px 0;
}
.traffic .traffic-info.bus .vehicle .icon
{
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 0;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin: 0 auto 20px;
    background: transparent url(${path}/resources/image/bus.png) no-repeat center center;
    background-color: #2dc8c1;
}
.traffic .traffic-info .vehicle .icon + p
{
    letter-spacing: -1px;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    text-align: center;
    font-size: 18px;
    color: #555;
    line-height: 18px;
}
.traffic .traffic-info ul.traffic-list
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    overflow: hidden;
    margin: 0;
    float: left;
/*    width: calc(100% - 125px);*/
    padding-left: 20px;
}
.traffic .traffic-info ul.traffic-list li
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: rgb(52, 152, 219);
    width: 100%;
    overflow: hidden;
}

.traffic .traffic-info ul.traffic-list li .bus-tag
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    color: rgb(52, 152, 219);
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 40px;
    height: 100%;
    margin-right: 10px;
}
.traffic .traffic-info ul.traffic-list li.blue span
{
    list-style: none;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    width: 40px;
    height: 15px;
    margin: 5px 0;
    border-radius: 2px;
    font-size: 12px;
    text-align: center;
    line-height: 15px;
    color: white;
    font-weight: 300;
    letter-spacing: 0;
    background: #3454a4;
}
.traffic .traffic-info ul.traffic-list li p.number
{
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: calc(100% - 50px);
    line-height: 25px;
    font-size: 14px;
    color: #555;
    letter-spacing: 0;
    font-weight: 300;
}
.traffic .traffic-info ul.traffic-list li
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: rgb(140, 195, 70);
    width: 100%;
    overflow: hidden;
}
.traffic .traffic-info ul.traffic-list li .bus-tag
{
     
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    color: rgb(140, 195, 70);
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 40px;
    height: 100%;
    margin-right: 10px;  
}
.traffic .traffic-info ul.traffic-list li.green span
{
    list-style: none;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    width: 40px;
    height: 15px;
    margin: 5px 0;
    border-radius: 2px;
    font-size: 12px;
    text-align: center;
    line-height: 15px;
    color: white;
    font-weight: 300;
    letter-spacing: 0;
    background: #4d9f31; 
}
.traffic .traffic-info ul.traffic-list li p.number
{
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
/*    width: calc(100% - 50px);*/
    line-height: 25px;
    font-size: 14px;
    color: #555;
    letter-spacing: 0;
    font-weight: 300;
}
.traffic .traffic-info ul.traffic-list li
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: rgb(52, 152, 219);
    width: 100%;
    overflow: hidden;
}
.traffic .traffic-info ul.traffic-list li .bus-tag.line2
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    color: rgb(52, 152, 219);
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 40px;
    margin-right: 10px;
    height: 50px;
}
.traffic .traffic-info ul.traffic-list li.blue span
{
    list-style: none;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    width: 40px;
    height: 15px;
    margin: 5px 0;
    border-radius: 2px;
    font-size: 12px;
    text-align: center;
    line-height: 15px;
    color: white;
    font-weight: 300;
    letter-spacing: 0;
    background: #3454a4;
}
.traffic .traffic-info ul.traffic-list li p.number
{
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: calc(100% - 50px);
    line-height: 25px;
    font-size: 14px;
    color: #555;
    letter-spacing: 0;
    font-weight: 300;
}
.traffic .traffic-info ul.traffic-list li
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: rgb(140, 195, 70);
    width: 100%;
    overflow: hidden; 
}
.traffic .traffic-info ul.traffic-list li .bus-tag
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    color: rgb(140, 195, 70);
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 40px;
    height: 100%;
    margin-right: 10px;
}
.traffic .traffic-info ul.traffic-list li.green span
{
    list-style: none;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    width: 40px;
    height: 15px;
    margin: 5px 0;
    border-radius: 2px;
    font-size: 12px;
    text-align: center;
    line-height: 15px;
    color: white;
    font-weight: 300;
    letter-spacing: 0;
    background: #4d9f31;
}
.traffic .traffic-info ul.traffic-list li p.number
{
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
/*    width: calc(100% - 50px);*/
    line-height: 25px;
    font-size: 14px;
    color: #555;
    letter-spacing: 0;
    font-weight: 300;
}
.traffic .traffic-info ul.traffic-list li
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    color: rgb(233, 27, 35);
    width: 100%;
    overflow: hidden;
}
.traffic .traffic-info ul.traffic-list li .bus-tag
{
    font-size: 14px;
    line-height: 1.42857143;
    list-style: none;
    color: rgb(233, 27, 35);
    letter-spacing: -1px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 40px;
    height: 100%;
    margin-right: 10px;
}
.traffic .traffic-info ul.traffic-list li.red span
{
    list-style: none;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    display: inline-block;
    width: 40px;
    height: 15px;
    margin: 5px 0;
    border-radius: 2px;
    font-size: 12px;
    text-align: center;
    line-height: 15px;
    color: white;
    font-weight: 300;
    letter-spacing: 0;
    background: #d51119;
}
.traffic .traffic-info ul.traffic-list li p.number
{
    list-style: none;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: calc(100% - 50px);
    line-height: 25px;
    font-size: 14px;
    color: #555;
    letter-spacing: 0;
    font-weight: 300;
}
.traffic .traffic-info.subway
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
    padding: 24px 0;
    overflow: hidden;
    display: table;
}
.traffic .traffic-info .vehicle
{
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    float: left;
    width: 125px;
    padding: 30px 0;
}
.traffic .traffic-info.subway .vehicle .icon
{
    line-height: 1.42857143;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 0;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin: 0 auto 20px;
    background: transparent url(${path}/resources/image/subway.png) no-repeat center center;
    background-color: #2dc8c1;
}
.traffic .traffic-info .vehicle .icon + p
{
    letter-spacing: -1px;
    box-sizing: border-box;
    word-break: break-all;
    font-family: 'Noto Sans KR', sans-serif;
    padding: 0px;
    margin: 0px;
    width: 100%;
    text-align: center;
    font-size: 18px;
    color: #555;
    line-height: 18px;
}
.traffic .traffic-info.subway ul.traffic-list
{
    font-size: 14px;
    color: #333;
    letter-spacing: -1px;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    overflow: hidden;
    margin: 0;
    float: left;
/*    width: calc(100% - 125px);*/
    padding-left: 20px;
    display: table-cell;
    line-height: 158px;
}
.traffic .traffic-info.subway ul.traffic-list li
{
    list-style: none;
    line-height: 158px;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
    width: 100%;
    overflow: hidden;
    display: inline-block;
    vertical-align: middle;
    font-size: 15px;
    color: #555;
    letter-spacing: 0;
    font-weight: 300;
}

/* 버스 지하철 끝*/

</style>


</head>
<body>
   
    <!--상단메뉴 시작-->
    <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            <ul class="lnb-list lnb4">
                <li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
                <li class="lnb-menu"><a href="${path}/nadeulmok.html">나들목소개</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=program_02">프로그램</a></li>
                <li class="lnb-menu "><a href="https://daejeonyouth.co.kr/bbs/board.php?bo_table=news_02">나들목소식</a></li>
                <li class="lnb-menu active"><a href="#">찾아오시는길</a></li>
            </ul>
        </nav>
    </div>
    <!--  상단박스 끝-->

    <!--   -->
    <div id='sograp'>
        <div id='sogtop'>
            <h2>찾아오시는길<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘나들목 </a> > <a href='#'>찾아오시는길</a>
        </div>
        <!--중앙부분 시작-->
       <div class="title-box">
          <h3 class="sc-title">청춘나들목</h3>
          <p class="sc-title-text">
            주소 : 대전시 동구 중앙로<br class="inct-tab-mt-none inct-m-i"> 대전역 지하철 역사 지하3층<br>
            전화번호 : 070-4275-9993(지하3층)<br>
            이메일 : dareunkorea20@gmail.com
          </p>
<!--          -->
         
         <!-- 버스 지하철-->
          <div class="traffic">
              <div class="traffic-info bus">
                <div class="vehicle">
                  <div class="icon"></div>
                  <p>버스</p>
                </div>
                <ul class="traffic-list">
                  <li class="blue">
                    <div class="bus-tag"><span>좌석</span></div>
                    <p class="number">2002</p>
                  </li>
                  <li class="green">
                    <div class="bus-tag"><span>외곽</span></div>
                    <p class="number">30, 33, 52, 60, 62, 63</p>
                  </li>
                  <li class="blue">
                    <div class="bus-tag line2"><span>간선</span></div>
                    <p class="number">101, 102, 103, 107, 201, 202, 311, 313, 501, 511, 512, 514, 603, 607, 608, 61, 613, 615, 616, 701</p>
                  </li>
                  <li class="green">
                    <div class="bus-tag"><span>지선</span></div>
                    <p class="number">200, 317, 606, 612, 614</p>
                  </li>
                  <li class="red">
                    <div class="bus-tag"><span>급행</span></div>
                    <p class="number">1, 2, 1001(BRT)</p>
                  </li>
                </ul>
              </div>
              <div class="traffic-info subway">
                <div class="vehicle">
                  <div class="icon"></div>
                  <p>지하철</p>
                </div>
                <ul class="traffic-list">
                  <li>지하철 1호선 → 대전역에서 하차</li>
                </ul>
              </div>
            </div>          
          <!-- 버스 지하철 -->
       
        
          </div>
        <!--중앙부분 끝-->
      
      

    </div>
    <!--끝-->
   
  </body>
</html>