<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
	<h1> FOR ADMIN! </h1>
	<s:authorize access="isAuthenticated()">
		<p> Session On </p>
	</s:authorize>
	<s:authorize access="isAnonymous()">
		<p> Session Off </p>
	</s:authorize>
	<p> HELLO <s:authentication property="name"/> </p>
	<a href="${contextPath}/security_logout">Log Out</a>
</body>
</html>