<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}


</script>
</c:if>
</head>
<body>
	   <div class="text-center">
<h1 class="h4 text-gray-900 mb-2">아이디 찾기</h1>
 <p class="mb-4">이메일을 입력해주세요!</p>
  </div>
<form class="user" action="${contextPath}/findId" method="POST">
<div class="form-group">
<input type="email" class="form-control form-control-user"
	id="memberEmail" aria-describedby="emailHelp" name="member_email"
	placeholder="Enter Email Address...">
</div>
<button type="submit" class="btn btn-primary btn-user btn-block">Find ID</button>
</form>
 <hr>
  <a href="/djplat/login.html" class="btn btn-facebook btn-user btn-block">Login</a>
  <hr>
  <div class="text-center">
<a class="small" href="/djplat/main.html">메인페이지</a>
</div>
</body>
</html>