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
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/mrlistArticles.css"
	rel="stylesheet" />
<link href="${contextPath}/resources/css/font.css" rel="stylesheet" />
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.ypconsult_wrap {
	margin: 0 auto;
	width: 1000px;
	height: auto;
	/*            background-image: url(logo/bonobono.jpg);*/
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

/*        청년정책소개 페이지 상단영역*/


        .ypconsult_container_top_wrap {
    width: 100%;
    padding-bottom: 50px;
}

.ypconsult_container_top {
	width: 100%;
	height: auto;
}

.ypconsult_container_top_title {
	width: 100%;
	padding: 55px 0 19px;
	margin-bottom: 50px;
	border-bottom: 1px solid #999;
	overflow: hidden;
}

.ypconsult_container_top_content {
	width: 1000px;
	height: 120px;
	padding-bottom: 50px;
    text-align: center;
}

.ypconsult_container_top .ypconsult_container_top_content ul#ypconsult_container_top_content_box
	{
	position: relative;
	width: 100%;
	font-size: 0;
	text-align: center;
	line-height: 0;
}

ul#ypconsult_container_top_content_box li {
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

ul#ypconsult_container_top_content_box>.on {
	border-color: #18A8F1;
	background: #18A8F1;
}

ul#ypconsult_container_top_content_box>.on a {
	color: white;
}

ul#ypconsult_container_top_content_box li:hover {
	background: #18A8F1;
	border-color: #18A8F1;
	transition: all 0.5s;
}

ul#ypconsult_container_top_content_box li:hover a {
	color: white;
}

ul#ypconsult_container_top_content_box a {
	width: 100%;
	height: 100%;
	text-align: center;
	line-height: 48px;
	font-size: 18px;
	color: #555;
	font-weight: 300;
	transition: all 0.3s;
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

.youthinfo_sc {
	width: 100%;
	height: auto;
	position: relative;
	overflow: hidden;
	margin-bottom: 150px;
}

/*        청년정책소개 페이지 하단영역*/
.youthinfo_sc .youthinfo_sc_area {
	width: 100%;
	height: auto;
	position: relative;
}

.youthinfo_sc .youthinfo_sc_con {
	width: 100%;
	height: auto;
	position: relative;
}

.youthinfo_sc .youthinfo_sc_con>.title {
	width: 100%;
	text-align: center;
	position: relative;
	overflow: hidden;
	margin-bottom: 100px;
}

.youthinfo_sc .youthinfo_sc_con>.title>h2 {
	font-size: 28px;
	line-height: 28px;
	font-weight: bold;
}

.youthinfo_sc .youthinfo_sc_con .banner_area {
	width: 100%;
	height: 200px;
	border: 1px solid #18A8F1;
	padding: 30px;
	background-color: rgb(245, 245, 245);
	margin-bottom: 50px;
	background-image: url(logo/youthinfo_banner_01.png);
	background-position: center;
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	background-size: cover;
	text-align: center;
}

.youthinfo_sc .youthinfo_sc_con .banner_area .banner_box {
	float: none;
	padding-right: 0;
	text-align: center;
}

.youthinfo_sc .youthinfo_sc_con .banner_area .banner_box {
	float: right;
	padding-right: 100px;
	margin-top: 20px;
}

.youthinfo_sc .youthinfo_sc_con .banner_area .banner_box>h3 {
	line-height: 52px;
	font-weight: 400;
	font-size: 25px;
}

.youthinfo_sc .youthinfo_sc_con .banner_area .banner_box>h3>span {
	font-weight: 600;
	font-size: 40px;
	color: #18A8F1;
}

.youthinfo_sc .youthinfo_sc_con .info_area {
	width: 100%;
	height: auto;
	position: relative;
	overflow: hidden;
	margin-bottom: 50px;
}

.youthinfo_sc .youthinfo_sc_con .info_area .sub_title {
	display: inline-block;
	text-align: left;
	position: relative;
	margin-bottom: 20px;
}

.youthinfo_sc .youthinfo_sc_con .info_area .sub_title>h3 {
	font-size: 25px;
	font-weight: 500;
	line-height: 25px;
	position: relative;
}

.youthinfo_sc .youthinfo_sc_con .info_area .sub_title>h3::before {
	content: '';
	display: inline-block;
	width: 25px;
	height: 25px;
	background-color: #18A8F1;
	border-radius: 5.5rem;
	vertical-align: bottom;
	margin-right: 10px;
}

.youthinfo_sc .youthinfo_sc_con .info_area .info_list {
	width: 100%;
	height: auto;
	position: relative;
	padding: 30px 35px;
	border: 1px solid rgb(230, 230, 230);
	background-color: rgb(245, 245, 245);
	background-image: url(logo/youthinfo_banner_02.png);
	background-position: center;
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	background-size: cover;
}

.youthinfo_sc .youthinfo_sc_con .info_area .info_list>h4 {
	font-size: 20px;
	display: inline-block;
	position: relative;
	margin-bottom: 15px;
}

.youthinfo_sc .youthinfo_sc_con .info_area .info_list>h4::before {
	content: '';
	width: 20px;
	height: 20px;
	background-position: center;
	-webkit-background-size: contain;
	background-size: contain;
	background-image: url(logo/youthinfo_chack_01.png);
	background-repeat: no-repeat;
	display: inline-block;
	margin-right: 10px;
	vertical-align: bottom;
}

.youthinfo_sc .youthinfo_sc_con .info_area .sub_title>h3::after {
	content: '';
	display: inline-block;
	position: absolute;
	width: 15px;
	height: 15px;
	background-color: #fff;
	border-radius: 5.5rem;
	left: 5px;
	top: 5px;
}

.youthinfo_sc .youthinfo_sc_con .info_area .info_list .list_box {
	width: 100%;
	height: auto;
	position: relative;
	overflow: hidden;
}

.youthinfo_sc .youthinfo_sc_con .info_area .info_list .list_box>li {
	margin-bottom: 5px;
	font-size: 16px;
}

.youthinfo_sc .youthinfo_sc_con .info_area .info_list .list_box>li::before
	{
	content: '';
	position: relative;
	display: inline-block;
	width: 5px;
	height: 5px;
	background-color: #18A8F1;
	margin-right: 5px;
	border-radius: 5px;
	vertical-align: middle;
}

/*   청년정책상담실 이용방법 CSS*/
.youthinfo_sc .youthinfo_sc_con .step_area {
	width: 100%;
	height: auto;
	position: relative;
	overflow: hidden;
}

.youthinfo_sc .youthinfo_sc_con .step_area .sub_title {
	display: inline-block;
	text-align: left;
	position: relative;
	margin-bottom: 20px;
}

.youthinfo_sc .youthinfo_sc_con .step_area .sub_title>h3 {
	font-size: 25px;
	font-weight: 500;
	line-height: 25px;
	position: relative;
}

.youthinfo_sc .youthinfo_sc_con .step_area .sub_title>h3::before {
	content: '';
	display: inline-block;
	width: 25px;
	height: 25px;
	background-color: #18A8F1;
	border-radius: 5rem;
	vertical-align: bottom;
	margin-right: 10px;
}

.youthinfo_sc .youthinfo_sc_con .step_area .sub_title>h3::after {
	content: '';
	display: inline-block;
	position: absolute;
	width: 15px;
	height: 15px;
	background-color: #fff;
	border-radius: 5.5rem;
	left: 5px;
	top: 5px;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box {
	width: 100%;
	height: auto;
	position: relative;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list {
	width: 100%;
	height: auto;
	position: relative;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li
	{
	width: -webkit-calc(( 100% - 41px)/2);
	width: calc(( 100% - 41px)/2);
	margin-bottom: 50px;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li
	{
	width: -webkit-calc(( 100% - 61px)/4);
	width: calc(( 100% - 61px)/4);
	margin-right: 20px;
	float: left;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_title
	{
	width: 100%;
	height: auto;
	border: 1px solid rgb(230, 230, 230);
	margin-bottom: 20px;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_01>.step_bg
	{
	background-image: url(logo/youthinfo_coun_01.png);
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_02>.step_bg
	{
	background-image: url(logo/youthinfo_coun_02.png);
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_03>.step_bg
	{
	background-image: url(logo/youthinfo_coun_03.png);
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_04>.step_bg
	{
	background-image: url(logo/youthinfo_coun_04.png);
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_title>.step_bg
	{
	width: 100%;
	height: 160px;
	position: relative;
	background-position: center;
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	background-size: cover;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_title>.step_bg>h3
	{
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	font-weight: 500;
	font-size: 20px;
	line-height: 30px;
	width: 100%;
	text-align: right;
	padding-right: 30px;
	color: rgb(40, 40, 40);
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_01>.title
	{
	background-color: #eaeb79;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_02>.title
	{
	background-color: #18A8F1;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_03>.title
	{
	background-color: #d76986;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_04>.title
	{
	background-color: #40C6C6;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_title>.title
	{
	width: 100%;
	height: 50px;
	text-align: center;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_bg_01>.title>p
	{
	color: #000;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_title>.title>p
	{
	font-size: 20px;
	font-weight: 600;
	line-height: 50px;
	color: #fff;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_box
	{
	border: 1px solid rgb(230, 230, 230);
	padding: 20px 20px;
	height: auto;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_box li
	{
	margin-bottom: 20px;
	overflow: hidden;
	height: auto;
	width: 100%;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_box li>h4
	{
	text-align: left;
	font-size: 25px;
	font-weight: 500;
	margin-bottom: 15px;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li .step_box li>p
	{
	width: 100%;
	height: auto;
	position: relative;
	display: block;
	background-color: rgb(245, 245, 245);
	padding: 30px 20px;
	font-size: 16px;
	color: rgb(100, 100, 100);
	text-align: center;
}

.youthinfo_sc .youthinfo_sc_con .step_area .step_list_box .step_list>li:last-of-type
	{
	margin-right: 0;
}

/*        공통적용*/
article, aside, details, figcaption, figure, footer, header, hgroup,
	main, nav, section, summary {
	display: block;
}

ul, ol, dl {
	list-style: none;
	width: 100%;
	overflow: hidden;
	margin: 0;
}

ul ul, ol ul, ul ol, ol ol {
	margin-bottom: 0;
}
</style>
</head>
<body>
	<div id='boardrap'>
		<div id='boardtop'>
			<h2>
				청년정책상담<br>
			</h2>
			<br> <br> <a href='#'><i class="bi bi-house-door"></i>Home
			</a> > <a href='#'> 청년정책 </a> > <a
				href='${contextPath }/yp/ypconsult_board.do'>청년정책상담</a>
		</div>

		<div class="ypconsult_container_top_content">
			<ul id="ypconsult_container_top_content_box">
				<li><a href="${contextPath}/yp/ypconsult.do">청년정책상담실</a></li>
				<li class="on"><a href="${contextPath}/yp/ypconsult_board.do">상담</a></li>
				<li><a href="${contextPath}/yp/ypconsult_faq.do">자주묻는질문(FAQ)</a></li>
			</ul>
		</div>

		<div id='board'>
			<table>
				<thead>
					<tr class='y-tr'>
						<th id=y-th-1>번호</th>
						<th id=y-th-2>작성자</th>
						<th id=y-th-3>제목</th>
						<th id=y-th-4>날짜</th>
						<th id=y-th-5>조회</th>

					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty articlesList}">
							<tr height="10">
								<td width="1000" colspan="4">
									<p align="center">
										<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
									</p>
								</td>
							</tr>
						</c:when>


						<c:when test="${not empty articlesList }">
							<c:forEach var="article" items="${articlesList }"
								varStatus="articleNum">
								<tr align="center">

									<td>${article.two }</td>
									<td class='text-color'><a href='#'>${article.member_id }</a></td>
									<td class='text-left'><a
										href='${contextPath}/yp/viewArticle.do?brd_no=${article.brd_no}'>${article.title}</a>
									</td>
									<td>${article.w_date}</td>
									<td>${article.hits}</td>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>



		</div>
		<div id='boardfooter'>

			<div id='boardbtnbox'>
			<%-- 	<form name="articleSearch"
					action="${contextPath}/yp/searchArticles.do">
					<input name="searchWord" type="text">
					<button type="submit" class='boardbtn searchbtn'>
						<i class="bi bi-search"></i>
					</button>
				</form> --%>
				<button type='button' class='boardbtn'
					onclick='location.href="${contextPath }/yp/mrWriteForm.do"'>글
					쓰기</button>

			</div>

			<!--   ----
        <form name="frmSearch" action="${contextPath}/goods/searchGoods.do" >
			<input name="searchWord" class="main_input" type="text"  onKeyUp="keywordSearch()"> 
			<input type="submit" name="search" class="btn1"  value="검 색" >
		</form>
            ---- -->



			<%-- <div class="pagebtn">

				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-double-left"></i>
				</button>
				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-left"></i>
				</button>

				<c:if test="${not empty totArticles}">
					<c:choose>
						<c:when test="${totArticles >100 }">
							<c:forEach var="page" begin="1" end="10" step="1">
								<c:if test="${section >1 && page==1 }">
									<button type="button"
										onclick='location.href="${contextPath }/yp/ypconsult_board.do?section=${section-1}&pageNum=${(section-1)*10 +1 }"'>
										&nbsp;pre</button>
								</c:if>
								<button type="button"
									onclick='location.href=href="${contextPath }/yp/ypconsult_board.do?section=${section}&pageNum=${page}"'>
									${(section-1)*10 +page }</button>
								<c:if test="${page ==10 }">
									<button type="button"
										onclick='location.href=href="${contextPath }/yp/ypconsult_board.do?section=${section+1}&pageNum=${section*10+1}"'>
										&nbsp; next</button>
								</c:if>
							</c:forEach>
						</c:when>

						<c:when test="${totArticles ==100 }">
							<c:forEach var="page" begin="1" end="10" step="1">
								<button type="button" onclick='location.href="#"'>
									${page}</button>
							</c:forEach>
						</c:when>

						<c:when test="${totArticles< 100 }">
							<c:forEach var="page" begin="1" end="${totArticles/10 +1}"
								step="1">
								<c:choose>
									<c:when test="${page==pageNum }">
										<button type="button"
											onclick='location.href="${contextPath }/yp/ypconsult_board.do?section=${section}&pageNum=${page}"'>
											${page }</button>
									</c:when>
									<c:otherwise>
										<button type="button"
											onclick='location.href="${contextPath }/yp/ypconsult_board.do?section=${section}&pageNum=${page}"'>
											${page }</button>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:when>
					</c:choose>
				</c:if>

				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-right"></i>
				</button>
				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-double-right"></i>

			</div> --%>
		</div>
	</div>
</body>
</html>