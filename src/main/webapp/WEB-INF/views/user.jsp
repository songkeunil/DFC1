<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags"  %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> FOR USER MEMBERS! </h1>
	<c:if test="${not empty pageContext.request.userPrincipal}">
		<p> Session On </p>
		<p> IP : ${ipAddress} </p>
	</c:if>
	<c:if test="${empty pageContext.request.userPrincipal}">
		<p> Session Out </p>
	</c:if>
	<p> HELLO ${pageContext.request.userPrincipal.name} </p>
	<a href="${contextPath}/security_logout">Log Out</a>
</body>
</html>