<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
</head>
<body>
	<h1> FOR ADMIN! </h1>
	<sec:authorize access="isAuthenticated()">
		<p> Session On </p>
		<p> IP : ${ipAddress} </p>
	</sec:authorize>
	<sec:authorize access="isAnonymous()">
		<p> Session Off </p>
	</sec:authorize>
	<p> HELLO <sec:authentication property="name"/> </p>
	<a href="${contextPath}/security_logout">Log Out</a>
</body>
</html>