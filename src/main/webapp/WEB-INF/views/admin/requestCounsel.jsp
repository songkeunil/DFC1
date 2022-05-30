<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="article" value="${articleMap.article}"></c:set>
<c:set var="articleFile" value="${articleMap.articleFileList}"></c:set>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<link href="${path}/resources/css/font.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<style>
/*?고듃*/
@font-face {
	font-family: 'Eoe_Zno_EB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/Eoe_Zno_EB.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Eoe_Zno_B';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/Eoe_Zno_B.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/* ?덉씠?꾩썐 ?� */
html {
	height: 100%;
}

body {
	margin: 0;
	height: 1200px;
}

#logo {
	cursor: pointer;
}

#header {
	margin: auto;
	text-align: center;
}

#wrapper {
	position: relative;
	height: 100%;
	background:red;
}

#content {
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	width: 460px;
}

/* ?낅젰??*/
.main-name {
	font-size: 40px;
	font-family: 'Eoe_Zno_EB';
}

h3 {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
}

.box {
	display: block;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 14px 10px 14px;
	box-sizing: border-box;
	background: #fff;
	position: relative;
}

.int {
	display: block;
	position: relative;
	width: 100%;
	height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
}

.pixint {
	display: block;
	position: relative;
	width: 100%;
	height: 29px;
	border: none;
	background: #fff;
	font-size: 18px;
}

.box.int_id {
	padding-right: 110px;
}

.box.int_pass {
	padding-right: 40px;
}

.box.int_pass_check {
	padding-right: 40px;
}

.pswdImg {
	width: 18px;
	height: 20px;
	display: inline-block;
	position: absolute;
	top: 50%;
	right: 16px;
	margin-top: -10px;
	cursor: pointer;
}

.datepicker {
	width: 95%;
	height: 29px;
	font-size: 15px;
	background-size: 20px 8px;
	-webkit-appearance: none;
	display: inline-block;
	text-align: start;
	border: none;
	cursor: default;
}
/*주소*/
.intaddr {
	display: block;
	position: relative;
	width: 93%;
	height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	float: left;
}

.buttons {
	width: 7%;
	height: 29px;
	background-color: #fff;
	border: none;
}

/* gender */
select {
	width: 100%;
	height: 29px;
	font-size: 15px;
	background: #fff
		url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100%
		50% no-repeat;
	background-size: 20px 8px;
	-webkit-appearance: none;
	display: inline-block;
	text-align: start;
	border: none;
	cursor: default;
}

/* ?먮윭硫붿꽭吏� */
.error_next_box {
	margin-top: 9px;
	font-size: 12px;
	color: red;
	display: none;
}

#alertTxt {
	position: absolute;
	top: 19px;
	right: 38px;
	font-size: 12px;
	color: red;
	display: none;
}

/* 동의 */
.mail-agreeok {
	font-family: 'Eoe_Zno_B';
	font-size: 15px;
	margin-bottom: 2px;
}

.explan_txt {
	margin-left: 19px;
	font-size: 11px;
	text-align: left;
}

/* 踰꾪듉 */
.btn_area {
	margin: 30px 0 91px;
	border: 1px solid #0d6efd;
}

#btnJoin {
	font-family: 'Eoe_Zno_EB';
	width: 100%;
	padding: 21px 0 17px;
	cursor: pointer;
	color: #0d6efd;
	background-color: transparent;
	font-size: 20px;
	font-weight: 400;
	line-height: 1.5;
	border: 1px #0d6efd;
}

#btnJoin:hover {
	color: white;
	background-color: #0d6efd;
}

.gender_code {
	background: #d9d9d9;
}

.date_name {
	background: #d9d9d9;
}

.int_name {
	background: #d9d9d9;
}

.int_id {
	background: #d9d9d9;
}

.int_id input {
	background: #d9d9d9;
	font-weigth: bold;
}
</style>

<body>
	<form action="${path}/admin/counselRegistration.do" method="post" enctype="multipart/form-data"  accept-charset="utf-8">
	<input type="hidden" value="${member_info.member_id}" name="member_id">
		<!-- header -->
		<div id="header">
			<a href="${path }/admin/listMembers.do" title="회원가입"> <img
				src="${path}/resources/image/logo.png"></a>
			<h3 class="main-name">회원상담신청</h3>
		</div>



		<!-- wrapper -->
		<div id="wrapper">

			<!-- content-->
			<div id="content">

				<!-- ID -->
				 <div>
					<h3 class="join_title">
						<label for="id">상담소</label>
					</h3>
					<span class="box int_pass_check"> 
					<select name="title">
							<option inputmode="text">--------------</option>
							<option inputmode="text">헤아려봄심리상담센터</option>
							<option inputmode="text">희망찾기 사회적협동조합</option>
							<option inputmode="text">나우 인사이드</option>
					</select>

					

					</span> <span class="error_next_box"></span>
				</div> 

				<!-- PW1 -->
				 <div>
					<h3 class="join_title">
						<label for="pswd1">1회차 방문일자</label>
					</h3>
					<span class="box int_pass"> <input type="date" id="pswd1"
						name="o_time" class="int" maxlength="20"> <span
						id="alertTxt">사용불가</span>
					</span> <span class="error_next_box"></span>
				</div> 
				<!-- 방문시간 -->
		 	 <div>
					<h3 class="join_title">
						<label for="pswd2">방문시간</label>
					</h3>
					<span class="box int_pass_check"> <!-- <input type="text"
						id="pswd1" name="r_time" class="int" maxlength="20"> -->
						<select name="r_time">
							<option inputmode="text">10:00 ~ 12:00</option>
							<option inputmode="text">13:00 ~ 15:00</option>
							<option inputmode="text">15:00 ~ 17:00</option>
							
						</select>

					</span> <span class="error_next_box"></span>
				</div>  

				<!-- NAME -->
				<div>
					<h3 class="join_title">
						<label for="name">신청자명</label>
					</h3>
					<span class="box int_pass_check"> <input type="text"
						id="mobile" name="member_id" class="pixint" maxlength="16"
						value="${member_info.member_name}" disabled/>

					</span> <span class="error_next_box"></span>
				</div>

				<!-- 신청회차 -->
				  <div>
					<h3 class="join_title">
						<label for="name">상담회차</label>
					</h3>
					<span class="box int_pass_check"> <!-- <input type="text"
						id="mobile" name="mre_cc" class="pixint" maxlength="16"
						value="" /> -->
						<select name="mre_cc">
						<option inputmode="text">1 회차</option>
						<option inputmode="text">2 회차</option>
						<option inputmode="text">3 회차</option>
						<option inputmode="text">4 회차</option>
						<option inputmode="text">5 회차</option>
						</select>

					</span>
				</div>  

				<!-- 신청일자 -->
				 <div>
					<h3 class="join_title">
						<label for="gender">신청일자</label>
					</h3>
					<span class="box int_pass"> <input type="date" id="pswd1"
						name="r_date" class="int" maxlength="20"> <span
						id="alertTxt">사용불가</span>
					</span>
				</div> 

				<!-- 승인여부 -->
				 <div>
					<h3 class="join_title">
						<label for="phoneNo">승인여부</label>
					</h3>
					<span class="box int_pass_check"> 
					
					<select name="r_true">
							<option inputmode="text">예약진행중</option>	
							<option inputmode="text">예약완료</option>
					</select>

					</span> <span class="error_next_box"></span>
				</div>
				
				

				<!-- addres -->


				<!-- EMAIL -->
				 <!-- <div>
					<h3 class="join_title">
						<label for="email">예약취소<span class="optional"></span></label>
					</h3>
					<span class="box int_pass_check"> <select name="r_true">

							<option>예약</option>
							<option>취소</option>
					</select>

					</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
				</div>  -->
				<!-- E-mail agree -->
				<br>

				<!-- JOIN BTN-->
				<div class="btn_area">
					<button type="submit" id="btnJoin" >
						<span>신청하기</span>
					</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>