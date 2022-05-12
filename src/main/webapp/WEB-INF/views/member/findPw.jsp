<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html >
<html>
<head>
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