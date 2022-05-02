<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단부</title>
</head>
<body>
	<table border=0 width="100%">
		<tr>
			<td>
				<a href="${contextPath }/member/main.do">
					<img src="${contextPath }/resources/image/duke_swing.gif">
				</a>
			</td>
			<td>
				<h1><font size=30>스프링실습 홈페이지!!</font></h1>
			</td>
			<td>
				<!-- <a href="#"><h3>로그인</h3></a> -->
				<c:choose>
					
					<c:when test="${isLogOn == true && member != null }"><!-- isLogOn 속성값을 체크하여 로그인 상태시 "로그아웃"이 표시. -->
						<h3>환영합니다. ${member.name }님!</h3>
						<a href="${contextPath }/member/logout.do"><h3>로그아웃</h3></a><!-- 로그아웃 링크를 클릭하면 "로그인"으로 바뀜 -->
					</c:when>
					
					<c:otherwise>
						<a href="${contextPath }/member/loginForm.do"><h3>로그인</h3></a><!-- 로그인 링크를 클릭하면 로그인창 요청 -->
					</c:otherwise>
						
				</c:choose>
				<a href="${contextPath}/security_logout">Log Out</a>
			</td>
		</tr>
	</table>
</body>
</html>