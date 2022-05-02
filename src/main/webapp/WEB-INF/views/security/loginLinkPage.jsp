<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/security/tags"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Link Page!</h1>
	<s:authorize access="isAnonymous()">
		<button type="button" onclick="location.href='login.html'">LOGIN</button>
	</s:authorize>
</body>
</html>