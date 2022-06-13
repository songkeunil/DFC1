<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하단 부분</title>
<style>
* {
/* 	margin: 0 auto; */
	padding: 0;
	
}

.footer_wrap{
width:1300px;
margin: 0 auto;
}
p11 {
	font-size: 20px;
/* 	text-align: center; */
}

.wrap {
	display: grid;
	grid-template-columns: 10% 16% 10% 54% 10%;
	grid-template-rows: 35px 35px 35px 35px 35px;
	border-top: 1px solid #BDBDBD;
	/*            background: gray;*/
}

.grid1 {
	grid-column-start: 1;
	grid-column-end: 2;
	grid-row-start: 1;
	grid-row-end: 6;
	/*            background: blue;*/
}

.grid2 {
	grid-column-start: 3;
	grid-column-end: 5;
	grid-row-start: 1;
	grid-row-end: 2;
	line-height: 35px;
	text-align: left;
	font-size: 13px;
	color: #6E6E6E;
	/*            background: red;*/

	/*        border-bottom: solid 2px #808080;*/
}

.grid3 {
	grid-column-start: 2;
	grid-column-end: 3;
	grid-row-start: 1;
	grid-row-end: 6;
	text-align: center;
	/*                    border-right: solid 2px #808080;*/
	/*            background: green;*/
}

.grid3>div {
	margin-top: 20px;
}

.grid4 {
	grid-column-start: 3;
	grid-column-end: 4;
	grid-row-start: 2;
	grid-row-end: 3;
	line-height: 35px;
	text-align: left;
	font-size: 15px;
	color: #6E6E6E;
	/*            background: yellow;*/
}

.grid5 {
	grid-column-start: 3;
	grid-column-end: 4;
	grid-row-start: 3;
	grid-row-end: 4;
	line-height: 35px;
	text-align: left;
	font-size: 15px;
	color: #6E6E6E;
	/*            background: red;*/
}

.grid6 {
	grid-column-start: 3;
	grid-column-end: 4;
	grid-row-start: 4;
	grid-row-end: 5;
	line-height: 35px;
	text-align: left;
	font-size: 15px;
	color: #6E6E6E;
	/*            background: blue;*/
}

.grid7 {
	grid-column-start: 4;
	grid-column-end: 5;
	grid-row-start: 2;
	grid-row-end: 3;
	line-height: 35px;
	text-align: left;
	font-size: 15px;
	color: #6E6E6E;
	/*            background: pink;*/
}

.grid8 {
	grid-column-start: 4;
	grid-column-end: 5;
	grid-row-start: 3;
	grid-row-end: 4;
	line-height: 35px;
	text-align: left;
	font-size: 15px;
	color: #6E6E6E;
	/*            background: magenta;*/
}

.grid9 {
	grid-column-start: 4;
	grid-column-end: 5;
	grid-row-start: 4;
	grid-row-end: 5;
	line-height: 35px;
	text-align: left;
	font-size: 15px;
	color: #6E6E6E;
	/*            background: red;*/
}

.grid10 {
	grid-column-start: 3;
	grid-column-end: 5;
	grid-row-start: 5;
	grid-row-end: 6;
	text-align: left;
	font-size: 15px;

	/*            background: orange;*/
}

.grid11 {
	grid-column-start: 5;
	grid-column-end: 6;
	grid-row-start: 1;
	grid-row-end: 6;
	/*            background: blue;*/
}

p11 {
	color: #A4A4A4;
	opacity: 0.9;
}

.ggiri {
	padding: 2px;
	width: 155px;
}

.DaeJeon {
	padding: 2px;
	width: 155px;
}

a {
	text-decoration-line: none;
	color: inherit;
}
</style>
</head>


<body>
<div class="footer_wrap">
	<div class="wrap">
		<div class="grid1"></div>
		<div class="grid2">
			&nbsp;|&nbsp;개인정보취급관리&nbsp;| &nbsp;<a
				href="http://www.goso.co.kr/bbs/board.php?bo_table=testDB&gclid=EAIaIQobChMI5ZuF2M-z9wIVN8EWBR3wKwLLEAAYASAAEgJsTPD_BwE"
				target='_blank'>소비자고발센터</a>&nbsp;| &nbsp;<a
				href="https://www.daejeon.go.kr/" target='_blank' text>대전광역시청</a>
		</div>
		<div class="grid3">
			<div>
				<img class="ggiri" src="${path }/resources/image/elephant.png"
					alt="ggiri_logo">
			</div>
			<div>
				<img class="DaeJeon" src="${path}/resources/image/DaeJeon.png"
					alt="Daejeon_logo">
			</div>
		</div>
		<div class="grid4">
			&nbsp;<a href="#" target='_blank' text>청춘끼리</a>
		</div>
		<div class="grid5">
			&nbsp;<a href="#" target='_blank' text>청춘너나들이</a>
		</div>
		<div class="grid6">
			&nbsp;<a href="#" target='_blank' text>청춘두두두</a>
		</div>
		<div class="grid7">&nbsp;대전 서구 둔산서로 17 양호빌딩 6층</div>
		<div class="grid8">&nbsp;대전광역시 서구 둔산중로 19,2층 (T. 070-4275-9995)
		</div>
		<div class="grid9">&nbsp;대전광역시 서구 갈마중로30번길 67, 지하1층/1층
			(T.070-4275-9996)</div>
		<div class="grid10">
			<p11>&nbsp;COPYRIGHT ⓒ 청춘끼리.ALL RIGHTS RESERVED</p11>
		</div>
		<div class="grid11"></div>

	</div>



	<!-- 
<p> e-mail:admin@test.com</p> 
<p> 회사주소:서울시 강동구</p>
<p>찾아오는 길:<a href="#">약도</a></p>
 -->
</div>
</body>
</html>