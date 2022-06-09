<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 --%>     
 <sec:authorize access="isAuthenticated()"></sec:authorize>

<c:set var="path"  value="${pageContext.request.contextPath}"  />


<%
  request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>청춘나들목 소개</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<link href="${path}/resources/css/djn.css" rel="stylesheet"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script>
        //이미지슬라이드 시작
        $('#slide3>ul>li').hide();
        $('#slide3>ul>li:first-child').show();

        setInterval(function() {
            $('#slide3>ul>li:first-child').fadeOut()
                .next().fadeIn().end(1000)
                .appendTo('#slide3>ul');
        }, 3000);
        //이미지슬라이드 끝

    </script>
</head>
<body>
<div class="djnwrap">
 <div class="lnb-box">
        <nav id="lnb-pc" class="inct-pc-mt-b inct-tab-lt-none">
            	<!--대청넷소개-->
		<ul class="lnb-list lnb4">
		<li class="lnb-home"><a href="${path}/main.html">메인으로 가기</a></li>
		<li class="lnb-menu active"><a href="#">대청넷소개</a></li>
		<li class="lnb-menu "><a href="#">대청넷활동</a></li>
		<li class="lnb-menu "><a href="#">대청넷활동질의</a></li>
	</ul>

	<!-- 대청넷 -->
	        </nav>
    </div> 
   
  <div class="jwrap">
             <div class="sp-title-box">
            <h2 class="sp-title">대청넷소개</h2>
            <ul class="sp-location inct-tab-mt-b inct-m-none">
                <li class="sp-home"><a href="#">HOME</a></li>
                <li class="sp-category"><a href="#">대청넷</a></li>
                <li class="sp-now"><a href="#">대청넷소개</a></li>
            </ul>
        </div>
    </div>
      <div class="page-wrap">
       <div class="inct-sc introduce">

    <!-- 서브콘텐츠 타이틀 시작 -->
    <div class="title-box1">
        <h3 class="sc-titles">대청넷이란?</h3>
    </div>
    <!-- 서브콘텐츠 타이틀 끝 -->

    <!-- 대청넷 슬라이드 소개 시작 (공간별로 레이아웃이 다른 영역) -->
         <div class="jhwrap">
       <!--   공간 정보 이미지 시작 -->
           <div class="space-info-img"></div>
                      <!--   공간 정보 이미지 끝 -->
            <!-- 서브콘텐츠 타이틀 시작 -->
            <div class="youthnet2">
                <h3 class="sc-title3">청년정책?<br class="inct-pc-mt-i inct-tab-lt-none"> 청년이 만듭니다!</h3>
                <p class="sc-title-slogann inct-pc-mt-b inct-tab-lt-nonee">대전 청년정책 네트워크
                <span class="slogann spann">DAEJEON YOUTH POLICY NETWORK</span></p>
                <!-- 공간 정보 설명 시작 -->
                <p class="space-info-textt inct-pc-mt-b inct-tab-lt-nonee">시정과의 대표적인 소통창구로서 청년이 주체가 되어 청년문제를 고민하고, 실천 가능한 정책을 발굴하며 제안과 정책모니터링, 다양한 청년들과 네트워킹하는 청년참여기구입니다.</p>
                <!-- 공간 정보 설명 끝 -->
            </div>
            <!-- 서브콘텐츠 타이틀 끝 -->        

        </div>
  


    <!-- 청년공간 컨셉 시작 -->
    <div class="space-conceptj youthnet">
        <!-- 청년공간 컨셉 오른쪽 영역 시작 -->
        <div class="concept-boxx concept-imgg concept-left"></div>
        <!-- 청년공간 컨셉 오른쪽 영역 끝-->
        <!-- 청년공간 컨셉 왼쪽 영역 시작 -->
        <div class="concept-boxx concept-rightt">
            <h3 class="sc-title-concepts">대청넷의 역할
            <span class="emphj">Duties</span></h3>
        </div>
        <!-- 청년공간 컨셉 왼쪽 영역 끝-->
    </div>
    <!-- 청년공간 컨셉 끝 -->

    <!-- 청년공간 컨셉 요약 목록 시작 -->
    <div class="space-concept-summaryy">
        <ul>
            <li>
                <div class="iconm">
                    <img class="inct-pc-mt-i inct-tab-lt-none" src="https://daejeonyouth.co.kr/thema/Basic/assets/img/opinion.png" alt="청년의견수렴">
                      </div>
                <p>청년의견수렴</p>
            </li>
            <li>
                <div class="iconm">
                    <img class="inct-pc-mt-i inct-tab-lt-none" src="https://daejeonyouth.co.kr/thema/Basic/assets/img/aim.png" alt="청년문제개선">
                </div>
                <p>청년문제개선</p>
            </li>
            <li>
                <div class="iconm">
                    <img class="inct-pc-mt-i inct-tab-lt-none" src="https://daejeonyouth.co.kr/thema/Basic/assets/img/alert.png" alt="정책제안">
                </div>
                <p>정책제안</p>
            </li>
            <li>
                <div class="iconm">
                    <img class="inct-pc-mt-i inct-tab-lt-none" src="https://daejeonyouth.co.kr/thema/Basic/assets/img/flag.png" alt="청년행사참여">
                    </div>
                <p>청년행사참여</p>
            </li>
            <li>
                <div class="iconm">
                    <img class="inct-pc-mt-i inct-tab-lt-none" src="https://daejeonyouth.co.kr/thema/Basic/assets/img/shake-hands.png" alt="시정참여">
                    </div>
                <p>시정참여</p>
            </li>
        </ul>
    </div>
    <!-- 청년공간 컨셉 요약 목록 끝 -->


    <!-- 서브콘텐츠 타이틀 시작 -->
    <div class="title-boxzx">
        <div class="sc-title-snss wrapp">
            <ul>
                <li><a href="https://blog.naver.com/daecheongnet" target="_blank"><img src="https://daejeonyouth.co.kr/thema/Basic/assets/img/naverblug.png"></a></li>
                <li><a href="https://www.facebook.com/daecheongnet/" target="_blank"><img src="https://daejeonyouth.co.kr/thema/Basic/assets/img/facebook.png"></a></li>
                <li><a href="https://www.instagram.com/daejeonyouth/" target="_blank"><img src="https://daejeonyouth.co.kr/thema/Basic/assets/img/insta.png"></a></li>
            </ul>
        </div>
    </div>
    <!-- 서브콘텐츠 타이틀 끝 -->


    <!-- 대청넷 문의처 시작 -->
    <div class="support-contactx youthnetz">
        <!-- 지원사업 문의처 목록 시작 -->
        <ul class="support-contactx-listz">
            <!-- 지원사업 문의처 아이템 시작 -->
            <li>
                <div class="iconzx"><img src="https://daejeonyouth.co.kr/thema/Basic/assets/img/support-callcenter.png" alt="대전광역시 경제기획과"></div>
                <div class="support-contact-infoo">
<!--                    <p class="contact-department">대전광역시 청년정책과<br class="inct-tab-mt-none inct-tab-mt-i">청년소통팀</p>-->
                    <p class="contact-number">070-7777-8691</p>
                    <p class="contact-number">wow@djyouthcenter.kr</p>
                </div>
            </li>
            <!-- 대청넷 문의처 아이템 끝 -->
        </ul>
        <!-- 대청넷 문의처 목록 끝 -->
    </div>
    <!-- 대청넷 문의처 끝 -->
    </div>
</div>
</div>
</body>
</html>