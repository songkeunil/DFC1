<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="article" value="${articleMap.article}"></c:set>
<c:set var="articleFile" value="${articleMap.articleFileList}"></c:set>
<c:set var="member_id">
	<sec:authentication property="name" />
</c:set>
<!DOCTYPE html>
<html>
<head>

<link href="${contextPath}/resources/css/font.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<style>
#boardrap {
	width: 1400px;
	height: auto;
	margin: 0 auto;
	/*                background: red;*/
}

#boardtop {
	/*    background:red;*/
	width: 1000px;
	height: 90px;
	margin: 0 auto;
	border-bottom: 1px solid #A4A4A4;
	margin-top: 100px;
}

#boardtop a {
	text-decoration: none;
	color: #848484;
}

h2 {
	width: 185px;
	height: 30px;
	border-bottom: 3px solid #18A8F1;
}

#boardfooter {
	width: 1000px;
	height: 100px;
	/*    background: yellow;*/
	margin: 0 auto;
	margin-top: 50px;
}

#boardbtnbox {
	width: 1000px;
	height: 35px;
	float: right;
	margin-top: -45px;
}

.boardbtn {
	width: 120px;
	height: 35px;
	background: white;
	border: 1px solid #A4A4A4;
	border-radius: 5px;
	font-weight: bold;
	padding-bottom: 3px;
	padding-right: 8px;
	float: right;
	font-size: 15px;
	cursor: pointer;
}

.boardbtn:hover {
	background: #F2F2F2;
}

.searchbtn {
	float: left;
	font-size: 20px;
	margin-left:
}

.searchbtn i {
	margin-left: 10px;
	line-height: 33px;
}

#pagebtn {
	/*    background: red;*/
	width: 300px;
	text-align: center;
	text-decoration: none;
	font-size: 20px;
	margin: 0 auto;
}

#pagebtn a {
	text-decoration: none;
	color: black;
}

#pagebtn button {
	width: 30px;
	height: 35px;
	background: white;
	border: 1px solid #A4A4A4;
	border-radius: 5px;
	font-weight: bold;
	cursor: pointer;
}

#pagebtn button:hover {
	background: #F2F2F2;
}

.sangdam-rap {
	width: 1000px;
	height: auto;;
	/*    background: red;*/
	margin: 0 auto;
	margin-bottom: 150px;
}

.center-rap {
	width: 1000px;
	height: 150px;
	/*    background: blue;*/
	margin-top: 50px;
	border: 3px solid #D8D8D8;
}

.text-box {
	width: 970px;
	height: 30px;
	/*    background: red;*/
	line-height: 40px;
	padding-left: 30px;
	color: brown;
}

.center-info-box {
	width: 300px;
	height: 100px;
	/*    background: yellow;*/
	margin-left: 22px;
	margin-top: 10px;
	float: left;
	border: 1px solid #D8D8D8;
}

.center-name, .center-link {
	width: 300px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: white;
}

.center-link {
	background: #F2F2F2;
}

.center-link a {
	color: gray;
	display: inline-block;
	width: 300px;
}

.center-link a:hover {
	background: #18A8F1;
	color: white;
	font-weight: bold;
}

.checklist {
	width: 1000px;
	height: 300px;
	/*    background: red;*/
	margin-top: 20px;
	border: 3px solid #D8D8D8;
	padding-left: 10px;
}

.checklist span {
	color: brown;
}

.application-details-rap {
	width: 1015px;
	height: auto;
	/*    background: red;*/
}

.application-details-name {
	width: 520px;
	height: 70px;
	/*    background: blue;*/
	line-height: 70px;
	padding-left: 20px;
	font-size: 20px;
	font-weight: bold;
	float: left;
}

.application-details-count {
	width: 320px;
	height: 70px;
	/*    background: blue;*/
	line-height: 70px;
	padding-left: 20px;
	font-size: 20px;
	font-weight: bold;
	float: left;
	text-align: right;
}

.application-details-btn {
	width: 120px;
	height: 70px;
	/*    background: blue;*/
	line-height: 70px;
	float: right;
	text-align: right;
}

.application-details-btn button {
	width: 120px;
	height: 35px;
	background: white;
	border: 3px solid #18A8F1;
}

.application-details-btn button:hover {
	background: #18A8F1;
	color: white;
	font-weight: bold;
	cursor: pointer;
}

.application-details tr th {
	width: 1000px;
	height: 50px;
	/*    background: red;  */
	border-top: 2px solid #BDBDBD;
	border-bottom: 2px solid #BDBDBD;
}

.application-details tr td {
	width: 1000px;
	height: 50px;
	text-align: center;
	border-bottom: 1px solid #D8D8D8;
}

td input {
	width: 50px;
	height: 30px;
	background: white;
}

td input:hover {
	cursor: pointer;
	background: gray;
	color: white;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
     function backToList(obj){
       obj.action="${contextPath}/mentalreview/listArticles.do";
       obj.submit();
     }
   
   function fn_remove_article(url,brd_no){
       var form = document.createElement("form");
       form.setAttribute("method", "post");
       form.setAttribute("action", url);
        var brd_noInput = document.createElement("input");
        brd_noInput.setAttribute("type","hidden");
        brd_noInput.setAttribute("name","brd_no");
        brd_noInput.setAttribute("value", brd_no);
       
        form.appendChild(brd_noInput);
        document.body.appendChild(form);
        form.submit();
    }
   </script>
<body>

	<div id='boardrap'>
		<div id='boardtop'>
			<h2>
				마음건강 상담신청<br>
			</h2>
			<br> <br> <a href='#'><i class="bi bi-house-door"></i>Home
			</a> > <a href='#'> 청년 마음건강 </a> > <a href='#'>마음건강 상담신청</a>
		</div>
		<div class="sangdam-rap">
			<div class="center-rap">
				<div class="text-box">※ 상담 신청하시기 전 상담소에 정보가 궁금하시면 클릭해 주세요.</div>
				<div class="center-info-box">
					<div class="center-name">헤아려봄상담센터</div>
					<div class="center-link">
						<a href="#">소개 바로가기</a>
					</div>
				</div>
				<div class="center-info-box">
					<div class="center-name">나우 인사이드</div>
					<div class="center-link">
						<a href="#">소개 바로가기</a>
					</div>
				</div>
				<div class="center-info-box">
					<div class="center-name">희망찾기 사회적협동조합</div>
					<div class="center-link">
						<a href="#">소개 바로가기</a>
					</div>
				</div>
			</div>
			<div class="checklist">
				<br>
				<h3>확인사항</h3>
				<br> - 2021년 1월 1일 기준 이전부터 대전광역시에 주소를 둔 만 18~39세 청년만 신청 가능합니다.<br>※
				신청일 기준 주소지가 대전시가 아니더라도, <span>학교 또는 직장이 대전시인 경우 증빙서류(재학증명서 또는
					재직증명서 등) <br>지참 후 상담소에 방문
				</span>해주시기 바랍니다.<br> <br> <span>- 상담 신청은 상담소별 시간을 확인 후
					신청해주시기 바랍니다.</span><br> <br> - 상담 신청 및 취소는 방문일 기준 1일 전까지만
				가능합니다.ex) 4월 3일 방문 예정일인 경우, 4월 2일까지만 신청 및 취소 가능<span><br>※
					당일 신청 및 취소는 불가능</span><br> <br> - 예약상태가 “승인”으로 변경되면 신분증 지참 후
				상담소에 방문하여 주시기 바랍니다.<br> <br> <span>- 본 상담은 사업비 소진시
					종료됩니다.</span><br> <br> - 문의처 : 청춘끼리 ☎ 042)222-3007
			</div>
			<div class="application-details-rap">
				<div class="application-details-name">
					<sec:authorize access="isAuthenticated()">
						<sec:authentication property="name" />


					</sec:authorize>
					님의 신청내역
				</div>
				<div class="application-details-count">0명 신청 / 0명 승인 / 0회 희망</div>
				<div class="application-details-btn">
					<button>엑셀저장</button>
				</div>

				<table class="application-details">
					<tr>
						<th>신청번호</th>
						<th>회원아이디</th>
						<th>상담소이름</th>
						<th>방문예정일</th>
						<th>방문시간</th>
						<th>신청일자</th>
						<th>승인여부</th>
						<th>신청회차</th>
						<th>상담취소</th>
					</tr>
					<c:forEach var="request" items="${counselMentalList}"
						varStatus="articleNum" end="7">
						<c:if test="${member_id == request.MEMBER_ID}">
							<tr>
							<input name="BRD_NO" type="hidden" value="${BRD_NO }">
		
								<td>${request.BRD_NO}</td>
								<td>${request.MEMBER_ID}</td>
								<td>${request.TITLE}</td>
								<td>${request.O_TIME}</td>
								<td>${request.R_TIME}</td>
								<td>${request.R_DATE}</td>
								<td>${request.R_TRUE}</td>
								<td>${request.MRE_CC}</td>
								
								<td><input type="button"
         onclick="fn_remove_article('${contextPath}/mentalreview/deleteMental.do?brd_no=${request.BRD_NO}',
                ${requset.BRD_NO})"
               value="삭제">   	</td>			 
					
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>


		<div id='boardfooter'>

			<div id='boardbtnbox'>

				<button type='button' onclick="location.href='#'"
					class='boardbtn searchbtn'>
					<i class="bi bi-search"></i>
				</button>
			</div>
			<div id='pagebtn'>
				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-double-left"></i>
				</button>

				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-left"></i>
				</button>

				<button type='button' onclick="location.href='#'">1</button>
				<!-- <button type='button' onclick="location.href='#'">2</button>
				<button type='button' onclick="location.href='#'">3</button> -->
				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-right"></i>
				</button>
				<button type='button' onclick="location.href='#'">
					<i class="bi bi-chevron-double-right"></i>
				</button>
			</div>

		</div>


	</div>



</body>
</html>