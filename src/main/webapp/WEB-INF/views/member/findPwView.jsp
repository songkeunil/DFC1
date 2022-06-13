<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html >
<html>
<head>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
	<script>
		window.onload = function() {
			result();
		}
	</script>
</c:if>
</head>
<style>
    .id-search-rap{
    width: 1000px;
    height: auto;
    margin: 0 auto;
/*    background: red;*/
}
	.id-search-form{
    width: 400px;
    height: auto;
    border: 2px solid #b4b4b4	;
    text-align: center;
    margin: 0 auto;
    padding-top: 100px;
    padding-bottom: 100px;
    
}
.form-group input{
    width: 300px;
    height: 30px;
    margin: 0 auto;
}
.form-group input:focus{
     outline-color: #18A8F1;
     box-shadow: 0px 0px 3px 0px #18A8F1;
}
.btn-primary{
    width: 200px;
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
<body>
	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
	<div class="id-search-rap">
	 <div id="id-search-form">
		<div class="text-center">
			<h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
			<p class="mb-4">아이디와 이메일을 입력해주세요!</p>
		</div>
		<form class="user" action="${contextPath}/findPw" method="post">
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
	</div>
</body>
</html>