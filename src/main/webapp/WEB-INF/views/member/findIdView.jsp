<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}


</script>
</c:if>
<style>
    #id-search-rap{
    width: 1000px;
    height: auto;
    margin: 0 auto;
/*    background: red;*/
}

#id-search-form{
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

</head>
<body>

<body>
    <div id="id-search-rap">
        <div id="id-search-form">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-2">아이디 찾기</h1>
                <br> <br> <br><br><br>
                <p class="mb-4">이메일을 입력해주세요!</p>
                <br>
            </div>
            <form class="user" action="${contextPath}/findId" method="POST">
                <br>
                <div class="form-group">

                    <input type="email" class="form-control form-control-user" id="memberEmail" aria-describedby="emailHelp" name="member_email" placeholder="Enter Email Address...">
                    <br><br>
                </div>
                <br><br>
                <button type="submit" class="btn btn-primary btn-user btn-block">Find ID</button>
                <br><br>
            </form>
            <button type='button' onclick="location.href='${contextPath}/login.html'" class="btn btn-primary btn-user btn-block">
                Login
            </button>
            <br><br>
            <div class="text-center">
                <button type='button' onclick="location.href='${contextPath}/main.html'" class="btn btn-primary btn-user btn-block">
                    메인페이지
                </button>

            </div>
        </div>
    </div>
</body>
</html>