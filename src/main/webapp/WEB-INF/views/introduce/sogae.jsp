<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="article" value="${articleMap.article}"></c:set>
<c:set var="articleFile" value="${articleMap.articleFileList}"></c:set>
<c:set var="member_id">
	<sec:authentication property="name" />
</c:set>
<!DOCTYPE html>
<html>
<head>

<link href="${path}/resources/css/font.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<style>
  #boardrap {
        width: 1000px;
        height: 1600px;
        margin: 0 auto;
        /*                background: red;*/
    }

    #boardtop {
        /*    background:red;*/
        width: 1000px;
        height: 90px;
        margin: 0 auto;
        border-bottom: 1px solid #A4A4A4;
        margin-top: 100px;
    }

    #boardtop a {
        text-decoration: none;
        color: #848484;

    }

    h2 {
        width: 90px;
        height: 30px;
        border-bottom: 3px solid #18A8F1;
    }
    
    .sogae-btn{
        width: 320px;
        height: 50px;
        margin: 5px;
        margin-top: 20px;
        background: #FAFAFA;     
        font-size: 17px;
        font-weight: bold;
        border: 1px solid #D8D8D8;
       
    }
    #boardrap button:hover{
        background: #18A8F1;
        color: white;
        cursor: pointer;
        
    }
    .center{
        background: #18A8F1;
        color: white;
    }
    .top-title{
        width: 1000px;
        height: 150px;
        border: 1px solid #d8d8d8;
        margin-top: 30px;
    }
    .img-box{
        width: 350px;
        height: 150px;
/*        background: red;*/
        float: left;
        
    }
    .img-box img{
        margin-top: -10px;
        margin-left: 10px;
    }
    .text-box{
        width: 650px;
        height: 150px;
/*        background: red;*/
        float: left;
        font-size: 19px;
        padding-top: 55px;   
        color: #848484;
    }
    .text-box span{
        font-weight: bold;
        color: #18A8F1;
        font-size: 22px;
        
    }
     .vision span {
        font-size: 25px;
        font-weight: bold;
        color: black;
        border-bottom: 3px solid #18A8F1;
    }
    .vision{
/*        background: red;*/
        width: 1000px;
        height: 50px;
        margin-top: 100px;
        padding-left: 10px;
        margin-bottom: 30px;
    }
    .vision-img{
        text-align: center;
        
    }
    .yaksok{
        padding-left: 150px;
    }
</style>

<body>
 <div id='boardrap'>
        <div id='boardtop'>
            <h2>센터소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘끼리소개 </a> > <a href='#'>센터소개</a>
        </div>
         <button class='sogae-btn center' onclick="location.href='${path}/sogae.html'">센터소개</button>
        <button class='sogae-btn saeop'  onclick="location.href='${path}/saeop.html'">사업소개</button>
        <button class='sogae-btn road'  onclick="location.href='${path}/sogaeRoad.html'">찾아오시는길</button>
        
        <div class="top-title">
           <div class="img-box"> <img src="${path}/resources/image/logo.png"></div>
           <div class="text-box"><span>청춘끼리</span>는 <br>
대전광역시 청년기본조례에 근거하여 청년정책을 수행하는 <span>중간지원조직</span>입니다.</div>
            
        </div>
        <div class="vision"><span>센터비전</span></div>
           <div class="vision-img"> <img src="${path}/resources/image/vision.png"></div>
           
           <div class="vision"><span>인사말</span></div>
           <div class="vision-img"> <img src="${path}/resources/image/insa.png"></div>
           
           <div class="vision"><span>청춘끼리의 약속</span></div>
           <div class="vision-img yaksok"> <img src="${path}/resources/image/yaksok.png"></div>
            
             
    </div>
</body>
</html>