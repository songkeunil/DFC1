<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags"  %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
       $(function(){
           var flag = true;
           $('.h-log').click(function(){
               if(flag){
                   $('#sidebar-container').animate({right:'0px'}, 0);
               }else{
                   $('#sidebar-container').animate({right:'-300px'}, 2);
               }
               flag = !flag;
           });
           $('.smenu').hover(function(){
               $(this).stop().animate({opacity:1},300);
           }, function(){
               $(this).stop().animate({opacity:0.7},300);
           });
                          
       });
    </script>
<style>
#sidebar-container{
            position: fixed;
            top: 0px;
            width: 100px;
            height: 100%;
            right: -300px;
            z-index: 99998;
            background: yellow;
        }
        
        #sidebar-container .siderbar-head {
            width: 300px;
            height: 10px;
            position: absolute;
            top: 10px;
            z-index: 10;   
            background: black;
        }
        
        .bg-navy{
            background-color: rgb(50, 60, 70);
            color: #fff;
        }
        
        .home{
            
            float: left;
            width: 100px;
            height: 200px;
            background: black;
            color:white;
            z-index: 99998;
            }
        
        .sidebar-content{
            position: relative;
            height: 100%;
/*            padding: 0px 15px;*/
            overflow: auto;
            overflow-x: hidden;            
            background: pink;
        }
        
        .sidebar-content > ul > li{
            top: 10px;
            position: relative;
            width: 200px;
            height: 40px;            
            background: white;
            opacity: 0.7;
        }
</style>
</head>

<body>
<!---------------- 사이드바  -------------------------->
  <div id = "sidebar-container">       
      <div class="sidebar-head bg-navy"></div>
       <div class = "sidebar-content">
          <ul>              
              <li class="smenu">청춘끼리</li>
              <li class="smenu">청춘지원소식</li>
              <li class="smenu">청년정책소개</li>
              <li class="smenu">청년정책상담실</li>
              <li class="smenu">찾아오시는길</li>
 <!--              <li class="smenu">메뉴6</li>
              <li class="smenu">메뉴7</li>
  -->         </ul>
       </div>
    </div> 
       <div id='h-hrap'>
       
        <div id='h-toprap'>
            <div id='h-top'>
                <div id='h-logo'>
                    <a href="${path}/main.html"><img src="${path}/resources/image/logo.png"></a>
                </div>
                <div id='h-search'>
                    <input type="text" Placeholder='검색어를 입력해주세요'>
                    <button type='button' onclick="location.href='#'" id='h-searchbtn'>
                        <i class="h-bi bi-search"></i>
                    </button>
                </div>
                <div id='h-login'>
                	<sec:authorize access="isAnonymous()">
                    	<a class="h-log" href="${path}/login.html">로그인 &nbsp&nbsp</a>
                    	<a class="h-log" href="${path}/signForm.html">회원가입 &nbsp&nbsp </a>
                    </sec:authorize>
                    
                    <sec:authorize access="isAuthenticated()">
                     	<sec:authentication property="name"/>님.&nbsp&nbsp
					  	<!-- <a class="h-log" href="#" onclick="document.getElementById('logout').submit();">로그아웃</a> -->
					  	<a class="h-log" href="${path}/security_logout">로그아웃&nbsp&nbsp</a>
					</sec:authorize>
					<%-- <form id="logout"  action="${path}/security_logout" method="POST">
					   	<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
					</form> --%>
                   
                    
                    <a class="h-log" href="#">정보찾기 </a>

                </div>
            </div>
        </div>
        
        <div id="h-nav">
            <ul class="h-nav justify-content-center">
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘끼리소개</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘공간</a>
                    <ul class='h-sub'>
                        <li><a href='#'>청춘나들목</a></li>
                        <li><a href='#'>청춘너나들이</a></li>
                        <li><a href='#'>청춘두두두</a></li>
                        <li><a href='#'>청춘터전</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청년마음건강</a>
                    <ul class='h-sub'>
                        <li><a href='${path}/mentalreview/introduceMental.html '>마음건강 소개</a></li>
                        <li><a href='#'>마음건강 상담신청</a></li>
                        <li><a href='${path}/mentalreview/listArticles.do'>이용후기</a></li>
                     
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘끼리정장대여</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">대청넷</a>
                    <ul class='h-sub'>
                        <li><a href='#'>대청넷 소개</a></li>
                        <li><a href='#'>대청넷 활동</a></li>
                        <li><a href='#'>청년소통</a></li>
                        <li><a href='#'>대청넷활동문의</a></li>
                        <li><a href='#'>대청넷 자료실</a></li>
                        
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청년정책</a>
                    <ul class='h-sub'>
                        <li><a href='#'>청년정책 소개</a></li>
                        <li><a href='#'>청년정책 상담실</a></li>
                 
                    </ul>
                </li>
                <li class="h-nav-item">
                    <a class="h-nav-link" href="#" style="color: black">청춘지원</a>
                    <ul class='h-sub'>
                        <li><a href='#'>menu1</a></li>
                        <li><a href='#'>menu2</a></li>
                        <li><a href='#'>menu3</a></li>
                        <li><a href='#'>menu4</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
       
</body>
</html>