<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
       <div id='h-hrap'>
        <div id='h-toprap'>
            <div id='h-top'>
                <div id='h-logo'>
                    <a href='/main'><img src="${path}/resources/image/logo.png"></a>
                </div>
                <div id='h-search'>
                    <input type="text" Placeholder='검색어를 입력해주세요'>
                    <button type='button' onclick="location.href='#'" id='h-searchbtn'>
                        <i class="h-bi bi-search"></i>
                    </button>
                </div>
                <div id='h-login'>
                    <a class="h-log" href="${path}/login.html">로그인 &nbsp&nbsp</a>
                    <a class="h-log" href="${path}/security_logout">로그아웃&nbsp&nbsp</a>
                    <a class="h-log" href="${path}/signForm.html">회원가입 &nbsp&nbsp </a>
                    <a class="h-log" href="#">정보찾기 </a>

                </div>
            </div>
        </div>
        <div id="h-nav">
            <ul class="h-nav justify-content-center">
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘끼리소개</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘공간</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청년마음건강</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청년정장대여</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">대청넷</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청년정책</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘지원</a>
                    <ul class='h-sub'>
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