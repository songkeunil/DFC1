<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/mypage/member_confirm.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script type="text/javascript">
	$(function(){
		if (${confirm == "false"})
			alert("비밀번호가 일치 하지 않습니다. 다시입력해주세요.");
	})
</script>
</head>
<body>

<form if="chk_pwd" method="post" action="${contextPath }/confirmPwd.do">
<div id="mp_cf_wrap">

	<div id='mp_cf_wrap_top'>
        <h2>정보수정</h2>
        <div class='mp_submenu'>
	        <a href='${contextPath }/main.html'><i class="bi bi-house-door"></i>Home</a> >
	        <a href='#'>회원</a> >
	        <a href='#'>정보수정</a>
        </div>
    </div>
    
    <div id="password_confirm">	
		
		<div id="mp_cf_head">
			<h3>회원 비밀번호 확인</h3>
		</div>
	
		<div id="mp_cf_notice">
			<p><span>비밀번호를 한번 더 입력해주세요.</span><br>
			회원님의 정보를 안전하게 보호하기 위해 비밀번호를 한번 더 확인합니다.</p><br>
			<span>회원아이디 : </span><span id="confirm_id"><sec:authentication property="name" /></span><br>
			<input type="password" name="input_pw" placeholder="비밀번호 입력"><br>
			<div id="confirm_a">
				<!-- <a href="javascript:chk_pwd.submit();">확인하기</a> -->
				<button id="mp_confirm_b">확인</button>
			</div>
			
		</div>
	</div>
	
	<div id="mp_cf_btn">
		<a href="${contextPath }/main.html">메인으로</a>
	</div>
    
</div>
</form>

</body>
</html>