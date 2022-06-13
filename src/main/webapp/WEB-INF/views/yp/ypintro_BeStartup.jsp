<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()"></sec:authorize>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articlesMap.articlesList}" />
<c:set var="section" value="${articlesMap.section}" />
<c:set var="pageNum" value="${articlesMap.pageNum}" />
<c:set var="totArticles" value="${articlesMap.totArticles}" />

<%
	request.setCharacterEncoding("UTF-8");
%>
<html>

<head>
<meta charset="UTF-8">
<title>Document</title>

<style>
/* * {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
} */

.ypintro_wrap {
	margin: 0 auto;
	width: 1000px;
	height: auto;
/* 	background-image: url(logo/bonobono.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover; */
}

/*        청년정책소개 페이지 상단영역*/
.ypintro_container_top {
	width: 100%;
	height: auto;
}

.ypintro_container_top_wrap {
	
}

.ypintro_container_top_title {
	width: 100%;
	padding: 55px 0 19px;
	margin-bottom: 50px;
	border-bottom: 1px solid #999;
	overflow: hidden;
}

.ypintro_container_top_content {
	width: 100%;
	height: 160px;
	/*            background: red;*/
}

.ypintro_container_top .ypintro_container_top_content ul#ypintro_container_top_content_box
	{
	position: relative;
	width: 100%;
	font-size: 0;
	text-align: center;
	line-height: 0;
}

ul#ypintro_container_top_content_box li {
	display: inline-block;
	width: calc(( 100% - 30px)/5);
	height: 50px;
	margin-right: 10px;
	border-radius: 4px;
	border: 1px solid #dedede;
	background: #f8f8f8;
	overflow: hidden;
	transition: all 0.5s;
}

ul#ypintro_container_top_content_box li:hover {
	background: #18A8F1;
	transition: all 0.5s;
	border-color: #18A8F1;
}

ul#ypintro_container_top_content_box li:hover a {
	color: white;
}

ul#ypintro_container_top_content_box>.on {
	border-color: #18A8F1;
	background: #18A8F1;
}

ul#ypintro_container_top_content_box>.on>a {
	color: white;
}

ul#ypintro_container_top_content_box a {
	width: 100%;
	height: 100%;
	text-align: center;
	line-height: 48px;
	font-size: 18px;
	color: #555;
	font-weight: 300;
	transition: all 0.3s;
}

/*        청년정책소개 페이지 하단영역*/
.ypintro_container_bot {
	margin: 0 auto;
	width: 100%;
	height: auto;
	padding-top: 10px;
}

.ypintro_container_bot_title {
	width: 100%;
	height: 50px;
}

.ypintro_container_bot_content {
	padding-bottom: 90px;
	width: 100%
}

.work_list_wrap {
	width: 100%;
	height: auto;
	position: relative;
	margin-bottom: 20px;
	overflow: hidden;
	background: #fff;
}

.work_list_title {
	width: 100%;
	background: #18A8F1;
	padding: 10px 20px;
}

.sc_item-title {
	height: 20px;
	margin-bottom: 20px;
	font-size: 20px;
	line-height: 20px;
	border-left: 5px solid;
	border-color: #5e4b8d;
}

.work_list_title>h2 {
	color: #fff;
	font-size: 16px;
	line-height: 16px;
	font-weight: 400;
}

.work_list_content {
	width: 100%;
	padding: 10px 20px;
	border: 1px solid #ddd;
}

.work_list_wrap .work_list_content>.list_txt {
	width: 100%;
	height: auto;
	position: relative;
	overflow: hidden;
}

.work_list_wrap .work_list_content>.list_txt>li {
	width: 100%;
	overflow: hidden;
	margin-bottom: 10px;
	border-bottom: 1px dashed #ddd;
	padding-bottom: 7px;
}

.work_list_link {
	width: 100%;
	padding: 10px 20px;
	border: 1px solid #ddd;
	border-top: 0;
}

.work_list_wrap .work_list_link>a {
	display: inline-block;
	background-color: #f8f8f8;
	border: 1px solid #dedede;
	border-radius: 5px;
	padding: 5px 10px;
	font-weight: 400;
	margin-right: 10px;
}

h2.sc-item-title {
	height: 20px;
	margin-bottom: 20px;
	font-size: 20px;
	line-height: 20px;
}

h2.sp_title {
	float: left;
	width: auto;
	font-size: 30px;
	line-height: 30px;
	font-weight: 500;
}

/*        전역옵션*/
/* ul {
	list-style: none;
	width: 100%;
	overflow: hidden;
	margin: 0;
}

a {
	text-decoration: none;
} */

.work_list_wrap .work_list_content>.list_txt>li>h4:before {
	content: '';
	width: 5px;
	height: 5px;
	background-color: #18A8F1;
	border-radius: 5rem;
	display: inline-block;
	margin-bottom: 4px;
	margin-right: 5px;
}

.work_list_wrap .work_list_content>.list_txt>li>h4 {
	font-size: 16px;
	color: rgb(40, 40, 40);
	position: relative;
	display: inline-block;
	margin-bottom: 4px;
	vertical-align: top;
	margin-top: 3px;
}

.work_list_wrap .work_list_content>.list_txt>li>p {
	font-size: 15px;
	color: #555;
	font-weight: 300;
	padding-left: 10px;
	display: inline-block;
	line-height: 29px;
	text-align: left;
}

a:link, a:visited {
	color: #000;
	text-decoration: none;
}

a:active {
	color: #18A8F1;
}

ul.sp_location {
	float: right;
	width: auto;
	overflow: hidden;
}

ul.sp_location li {
	float: left;
	font-size: 0;
	line-height: 30px;
}

ul.sp_location li a {
	display: inline-block;
	vertical-align: middle;
	font-size: 13px;
	color: #777;
	line-height: 30px;
	letter-spacing: 0;
}

.inct_tab_mt_b {
	display: block !important;
}

ul.sp_location li:after {
	content: '>';
	display: inline-block;
	vertical-align: middle;
	width: 30px;
	height: 15px;
	text-align: center;
	font-size: 13px;
	color: #777;
	line-height: 15px;
}

ul.sp_location li:last-child:after {
	content: none;
}

#boardtop {
	/*        background:red;*/
	width: 1000px;
	height: 90px;
	margin: 0 auto;
	border-bottom: 1px solid #A4A4A4;
	margin-top: 100px;
	margin-bottom: 50px;
}

#boardtop a {
	text-decoration: none;
	color: #848484;
}

#boardtop h2 {
	width: 288px;
	height: 30px;
	border-bottom: 3px solid #18A8F1;
}
</style>



</head>

<body>
	<div class="ypintro_wrap">
		<div class="ypintro_container_top">
			<div id='boardtop'>
				<h2>
					청년정책소개<br>
				</h2>
				<br> <br> <a href='#'><i class="bi bi-house-door"></i>Home
				</a> > <a href='#'> 청년정책 </a> > <a href='#'>청년정책소개</a>
			</div>
			<div class="ypintro_container_top_content">
				<ul id="ypintro_container_top_content_box">
					<li><a href="${contextPath}/yp/ypintro_Ustudent.do"
						target="_self">대학생</a></li>
					<li class="on"><a
						href="${contextPath}/yp/ypintro_BeStartup.do" target="_self">취창업준비생</a></li>
					<li><a href="${contextPath}/yp/ypintro_Worker.do"
						target="_self">취창업자</a></li>

				</ul>
			</div>
		</div>
		<div class="ypintro_container_bot">
			<div class="ypintro_container_bot_title">
				<h4 class="sc_item-title">취창업준비생</h4>
			</div>
			<div class="ypintro_container_bot_content">
				<ul class="work_list_wrap">
					<li class="work_list_title">
						<h2>대전 청년취업희망카드</h2>
					</li>
					<li class="work_list_content">
						<ul class="list_txt">
							<li>
								<h4>목적</h4>
								<p>청년 미취업자에 대한 지원으로 고용 활성화</p>
							</li>
							<li>
								<h4>기간</h4>
								<p>연중모집 공고 - 심사선정 : 매월 4.1~10/ 6.1~10/ 8.1~10 / 포인트 지급</p>
							</li>
							<li>
								<h4>지원대상</h4>
								<p>6개월 이상 대전 주민등록자로 만18세~34세 미취업 청년 중 졸업, 중퇴 2년 경과자, 대학
									졸업예정자, 휴학생, 중위소득 150% 미만인 자</p>
							</li>
							<li>
								<h4>문의</h4>
								<p>대전광역시 경제통상진흥원 / 719-8325</p>
							</li>
						</ul>
					</li>
					<li class="work_list_link"><a
						href="https://www.djba.or.kr/board?menuId=MENU00354&amp;siteId=null"
						target="_blank">바로가기</a></li>
				</ul>
				<ul class="work_list_wrap">
					<li class="work_list_title">
						<h2>구직청년 면접 정장 대여</h2>
					</li>
					<li class="work_list_content">
						<ul class="list_txt">
							<li>
								<h4>목적</h4>
								<p>성공적인 취업과 면접정장 비용 절감을 위한 무료대여</p>
							</li>
							<li>
								<h4>사업기간</h4>
								<p>2020.3. ~ 2020.12. (예산 소진시 조기마감)</p>
							</li>
							<li>
								<h4>지원대상</h4>
								<p>대전시에 주민등록을 둔 만 18~39세 청년 구직자</p>
							</li>
							<li>
								<h4>내용</h4>
								<p>
									면접정장 무료대여 <br>○ 대여품목 <br>- (여성) 재킷, 블라우스, 치마, 구두 <br>-
									(남성) 재킷, 셔츠, 넥타이, 바지, 벨트 (구두 대여불가) <br>○ 대여기간 : 2박 3일 /
									1인당 연 3회까지 가능 <br>○ 대여업체 <br>- 슈트갤러리 : 여성, 남성 정장 각
									1세트(중구 동서대로 1263 / ☎ 042)524-9007) <br>- 아모르메이크업 : 여성 정장
									1세트(서구 계룡로 339번길 19 / ☎ 042)301-3436)
								</p>
							</li>
							<li>
								<h4>문의</h4>
								<p>대전광역시 경제통상진흥원 / 719-8345</p>
							</li>
						</ul>

					</li>
					<li class="work_list_link"><a
						href="https://www.djba.or.kr/board?menuId=MENU00354&amp;siteId=null"
						target="_blank">바로가기</a></li>
				</ul>
				<ul class="work_list_wrap">
					<li class="work_list_title">
						<h2>청년 인턴지원사업</h2>
					</li>
					<li class="work_list_content">
						<ul class="list_txt">
							<li>
								<h4>목적</h4>
								<p>미취업 청년과 채용기업 간 사전채용으로 취업률 향상 및 미스매치 해소</p>
							</li>
							<li>
								<h4>지원대상</h4>
								<p>지역 내 청년 미취업자(만18세 이상 만 39세 이하)/100명</p>
							</li>
							<li>
								<h4>문의</h4>
								<p>대전광역시 경제통상진흥원 / 719-8332</p>
							</li>
						</ul>
					</li>
					<li class="work_list_link"><a
						href="https://www.djba.or.kr/board?menuId=MENU00401&amp;siteId=null"
						target="_blank">바로가기</a></li>
				</ul>
				<ul class="work_list_wrap">
					<li class="work_list_title">
						<h2>대전일자리지원센터 운영</h2>
					</li>
					<li class="work_list_content">
						<ul class="list_txt">
							<li>
								<h4>목적</h4>
								<p>다양한 계층의 일자리사업 발굴 및 일자리지원 원스톱 서비스 제공</p>
							</li>
							<li>
								<h4>지원대상</h4>
								<p>대전소재 취업희망자</p>
							</li>
							<li>
								<h4>문의</h4>
								<p>대전광역시 경제통상진흥원 / 719-8320</p>
							</li>
						</ul>
					</li>
				</ul>
				<ul class="work_list_wrap">
					<li class="work_list_title">
						<h2>해외취업 지원사업</h2>
					</li>
					<li class="work_list_content">
						<ul class="list_txt">
							<li>
								<h4>목적</h4>
								<p>지역 청년층 글로벌 인재육성으로 대외 경쟁력 제고 및 청년실업 해소</p>
							</li>
							<li>
								<h4>기간</h4>
								<p>연중모집</p>
							</li>
							<li>
								<h4>지원대상</h4>
								<p>대전 시민 또는 대전소재 대학교 재학생</p>
							</li>
							<li>
								<h4>사업내용</h4>
								<p>해외기업 인재채용 프로젝트 추진, 해외취업 상담설명회 등 캠프진행, K-Move스쿨 연수사업비 지원</p>
							</li>
							<li>
								<h4>문의</h4>
								<p>대전광역시 경제통상진흥원 / 719-8334</p>
							</li>
						</ul>
					</li>
					<li class="work_list_link"><a
						href="https://www.djba.or.kr/board?menuId=MENU00401&amp;siteId=null"
						target="_blank">바로가기</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
