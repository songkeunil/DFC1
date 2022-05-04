<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>

<head>
<link href="${path}/resources/css/loginForm.css" rel="stylesheet"/> 	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
<main class="form-all">

	<form action="login_check" method="post" class="from-center">
		
		<c:if test="${LoginFailMessage != null}">
		<p> <c:out value="${LoginFailMessage}"/> </p>
		</c:if>
		
	<div>
		<a href="${path}/main.html">
	<img class="form-img" src="${path}/resources/image/logo.png"></a>
	</div>
	
	<div class="form-login">
		<div class="form-title">로그인</div>
	    <div class="form-subtitle">대전 청춘끼리를 이용해주셔서 감사합니다 <br>신청 및 다양한 서비스를 사용하시려면 로그인해주세요.</div></br>
	   	<div class="form-id"><input type="text" name="user_id" class="form-control-id" id="floatingInput" placeholder="아이디"></div> 
	    <div class="form-pw"><input type="password" name="user_pw" class="form-control-pw" id="floatingPassword" placeholder="비밀번호"></div>
	    <div class = "form-button">
	 		<button class="btn btn-outline-primary">로그인</button>
	  	</div>
	</div> 

    <div class = "form-find">
	    <ul class="test">
	    	<li><a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" class="find-text">ID 찾기</a></li> 
	    	<li><a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" class="find-text">PW 찾기</a></li>
	    	<li><a href="${path }/signForm.html" class="find-text">회원가입</a></li>    
	    </ul>
    </div></br> 

	<p class="form-copyright">© 안구건조</p>

	</form>
</main>
    
    
</body>
</html>