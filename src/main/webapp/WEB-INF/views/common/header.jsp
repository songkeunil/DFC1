<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${path}/resources/css/header.css" rel="stylesheet" type="text/css" media="screen"/>

</head>
<body>
       <div id='hrap'>
        <div id='toprap'>
            <div id='top'>
                <div id='logo'>
                    <a href='#'><img class="form-img" src="resources/image/logo.png"></a>
                </div>
                <div id='search'>
                    <input type="text" Placeholder='검색어를 입력해주세요'>
                    <button type='button' onclick="location.href='#'" id='searchbtn' >
                        <i class="bi bi-search" ></i>
                    </button>
                </div>
                <div id='login'>
                    <a class="log" href="#">로그인 &nbsp&nbsp</a>
                    <a class="log" href="#">회원가입 &nbsp&nbsp </a>
                    <a class="log" href="#">정보찾기 </a>

                </div>
            </div>
        </div>
        <div id="nav">
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">청춘끼리소개</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">청춘공간</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">청년마음건강</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">청년정장대여</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">대청넷</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">청년정책</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" style="color: black">청춘지원</a>
                    <ul class='sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
       
</body>
</html>