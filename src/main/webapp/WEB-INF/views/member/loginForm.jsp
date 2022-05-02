<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main class="form-all">
        <form>
            <img class="form-img" src="${path}/resources/image/logo.png">
            <div class="form-login">
            <div class="form-title">로그인</div></br>
             <div class="form-id"><input type="text" class="form-control-id" id="floatingInput" placeholder="ID"></div> 
                <div class="form-pw"><input type="password" class="form-control-pw" id="floatingPassword" placeholder="Password"></div></br>
                <div class="button"><button class="btn-primary" type="submit">로그인</button></div>
            </div></br>
                <div class = "form-find">
                <li><a target="_blank" href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" class="find-text">ID 찾기</a></li> 
                 <li><a target="_blank" href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" class="find-text">PW 찾기</a></li>
                <li><a target="_blank" href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR" class="find-text">회원가입</a></li>    
                </div></br> 
            <p class="form-copyright">© 안구건조</p>
        </form>
    </main>
</body>
</html>