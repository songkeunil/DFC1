<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    
   
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/mypage/mypage.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

</head>

<body>

<div id="mp_wrap">

	<div id='mp_wrap_top'>
        <h2>마이페이지</h2>
        <div class='mp_submenu'>
	        <a href='${contextPath }/main.html'><i class="bi bi-house-door"></i>Home</a> >
	        <a href='#'>내정보</a> >
	        <a href='#'>현재접속자</a>
        </div>
    </div>
    
    <div class="my_both">
		<!-- panel -->
		<div id="myProfile">	
		
			<div id="mp_profile_head">
				<h3>My Profile</h3>
			</div>
		
			<div id="mp_profile_body">
				
			</div>
		
		</div>
		
		<!-- Info -->
		<div id="myInfo">	
		
			<div id="mp_info_head">
				<h3>My Info</h3>
			</div>
		
			<div id="mp_info_body">
				<ul>
					<li>이름<span>${memberVO.member_name }</span></li>
					<li>연락처<span>${memberVO.member_phoneno }</span></li>
					<li>E-Mail<span>${memberVO.member_email }</span></li>
					<li>최종접속일<span>${memberVO.member_last_log }</span></li>
					<li>회원가입일<span>${memberVO.member_regDate }</span></li>
				</ul>
			</div>
		</div>	
	</div>
	
	<div id="mp_button">
		<div class="mp_button_a">
			<a href="${contextPath }/memberConfirm.html">회원정보수정</a>
			<%-- <a href="${contextPath }/deleteID.do">회원탈퇴</a>	 --%>
		</div>
		<div class="mp_button_b">
			<!-- <a href="#">내가 쓴 글 보기</a> -->
			<!-- <a href="#">사진올리기</a> -->
		</div>
	</div>
		
	
</div>

</body>
</html>