<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>

<style>
*{
list-style:none;
}
    .my-5{
    width: 1000px;
    height: auto;
    margin: 0 auto;
}

.jumbotron{
    width: 400px;
    height: auto;
    border: 2px solid #b4b4b4;
    text-align: center;
    margin: 0 auto;
    padding-top: 100px;
    padding-bottom: 100px;
    
}
.jumbotron li{
   
  
    margin-right: 40px;
    
}
.btn-primary{
    width: 100px;
    height: 30px;
    background: white;
    border: 2px solid #18A8F1;
    font-weight: bold;
}
.btn-primary:hover{
    background: #18A8F1;
    color: white;
    cursor: pointer;
}
    </style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
	<script>
		window.onload = function() {
			result();
		}
	</script>
</c:if>
</head>
<body>
	<div class="card o-hidden border-0 shadow-lg my-5">



		<div class="jumbotron">
			<h2>임시 비밀번호가 전송되었습니다.</h2>
			<br />

			<h1>${member}</h1>
			<br />
			<h2>를 확인해주세요.</h2>
			<button type="button" class="btn btn-primary"
				onclick="location.href='/djplat/login.html'">로그인페이지</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='/djplat/main.html'">메인페이지</button>

		</div>
	</div>
</body>
</html>