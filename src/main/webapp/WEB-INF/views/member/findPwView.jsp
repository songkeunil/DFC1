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
	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
	<div class="p-5">
		<div class="text-center">
			<h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
			<p class="mb-4">아이디와 이메일을 입력해주세요!</p>
		</div>
		<form class="user" action="/djplat/findPw" method="post">
			<div class="form-group">
				<input type="text" class="form-control form-control-user"
					id="memberId" aria-describedby="IdHelp" name="member_id"
					placeholder="Enter ID....">
			</div>
			<div class="form-group">
				<input type="email" class="form-control form-control-user"
					id="memberEmail" aria-describedby="emailHelp" name="member_email"
					placeholder="Enter Email Address...">
			</div>

			<button type="submit" class="btn btn-primary btn-user btn-block">
				Find PW</button>
		</form>
		<hr>
		<a href="/djplat/login.html" class="btn btn-google btn-user btn-block">
			Login </a>
		<hr>
		<div class="text-center">
			<a class="small" href="/djplat/main.html">메인페이지</a>
		</div>
	</div>
</body>
</html>