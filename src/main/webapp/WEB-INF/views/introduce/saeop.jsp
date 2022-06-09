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
        width: 142px;
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
    .saeop{
        background: #18A8F1;
        color: white;
    }
    
   
    
    .vision{
/*        background: red;*/
        width: 1000px;
        height: 50px;
        margin-top: 100px;
        
    }
    .vision-img{
        text-align: center;
        margin-left: 20px;
        
    }
    .saeop-img img{
        margin-left: -80px;
    }
</style>

<body>
<div id='boardrap'>
        <div id='boardtop'>
            <h2>청춘끼리 소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘끼리소개 </a> > <a href='#'>사업소개</a>
        </div>
        <button class='sogae-btn center' onclick="location.href='${path}/sogae.html'">센터소개</button>
        <button class='sogae-btn saeop'  onclick="location.href='${path}/saeop.html'">사업소개</button>
        <button class='sogae-btn road'  onclick="location.href='${path}/sogaeRoad.html'">찾아오시는길</button>
        
        
        <div class="vision"></div>
           <div class="vision-img"> <img src="${path}/resources/image/vision.png"></div>
           
           <div class="vision saeop-img"><img src="${path}/resources/image/saeop.png"></div>
           
           
            
             
    </div>

</body>
</html>