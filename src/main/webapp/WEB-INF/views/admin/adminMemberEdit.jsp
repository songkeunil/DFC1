<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="${path}/resources/css/font.css" rel="stylesheet" />
<link href="${path}/resources/css/editinfo.css" rel="stylesheet" />
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
	integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="../jquery-ui-1.13.1.custom/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
	integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
        //생년월일
        $(function() {
            $('.datepicker').datepicker({
                showOn: "button",
                dateFormat: "yy-mm-dd",
                showOtherMonths: true,
                showMonthAfterYear: true,
                changeYear: true,
                changeMonth: true,
                showOn: "both",
                buttonImage: "${path}/resources/image/calendar-check.svg",
                buttonImageOnly: true,
                buttonText: "선택", //버튼 호버 텍스트              
                yearSuffix: "년", //달력의 년도 부분 뒤 텍스트
                monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //달력의 월 부분 텍스트
                monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //달력의 월 부분 Tooltip
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], //달력의 요일 텍스트
                dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'], //달력의 요일 Tooltip
                /*minDate: "-50Y", //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                maxDate: "+5y", //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)*/
                yearRange: "-100:+10",
            });
            /* $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)*/
        })

        //주소
        function sample4_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraRoadAddr !== '') {
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample4_postcode').value = data.zonecode;
                    document.getElementById("sample4_roadAddress").value = roadAddr;
                    /*  document.getElementById("sample4_jibunAddress").value = data.jibunAddress; */

                    // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                    /* if(roadAddr !== ''){
                        document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                    } else {
                        document.getElementById("sample4_extraAddress").value = '';
                    } */

                    var guideTextBox = document.getElementById("guide");
                    // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                    if (data.autoRoadAddress) {
                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                        guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                        guideTextBox.style.display = 'block';

                    }
                    /* else if(data.autoJibunAddress) {
	                var expJibunAddr = data.autoJibunAddress;
	                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                guideTextBox.style.display = 'block';
	            } */
                    else {
                        guideTextBox.innerHTML = '';
                        guideTextBox.style.display = 'none';
                    }
                }
            }).open();
        }
    </script>


<meta charset="UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<form action="${path}/admin/modifyMemberInfo.do" method="post">
		<!-- header -->
		<div id="header">
			<a href="${path }/admin/listMembers.do" title="회원목록"> <img
				src="${path}/resources/image/logo.png"></a>
			<h3 class="main-name">회원정보수정</h3>
		</div>



		<!-- wrapper -->
		<div id="wrapper">

			<!-- content-->
			<div id="content">

				<!-- ID -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="box int_id"> <input type="text" id="mobile"
						name="member_id" class="pixint" maxlength="16"
						value="${member_info.member_id }" readonly />
					</span> <span class="error_next_box"></span>
				</div>

				<!-- PW1 -->
				<div>
					<h3 class="join_title">
						<label for="pswd1">이메일 인증 여부</label>
					</h3>
					 <span class="box int_pass_check"> <select name="yechan">
							<option value="yechan1"<c:if test="${member_info.member_auth == 1}">selected</c:if>>O</option>
							<option value="yechan2"<c:if test="${member_info.member_auth == 0}">selected</c:if>>X</option>
					</select>

					</span> 
					 <span class="error_next_box"></span>
				</div>

				<!-- PW2 -->
				<div>
					<h3 class="join_title">
						<label for="pswd2">회원그룹</label>
					</h3>
					<span class="box int_pass_check"> 
					<select name="mg">
							<option value="member_group1"<c:if test="${member_info.member_group == '일반회원'}">selected</c:if>>일반회원</option>
							<option value="member_group2"<c:if test="${member_info.member_group == '대청넷'}">selected</c:if>>대청넷</option>
					</select>
	
					</span> <span class="error_next_box"></span>
				</div>

				<!-- NAME -->
				<div>
					<h3 class="join_title">
						<label for="name">이름</label>
					</h3>
					<span class="box int_pass_check"> <input type="text"
						id="mobile" name="member_name" class="pixint" maxlength="16"
						value="${member_info.member_name }" />

					</span> <span class="error_next_box"></span>
				</div>

				<!-- BIRTH -->
				<div>
					<h3 class="join_title">
						<label for="name">생년월일</label>
					</h3>
					<span class="box int_id"> <input type="text" id="mobile"
						name="member_birth" class="pixint" maxlength="16"
						value="${member_info.member_birth }" disabled />
					</span>
				</div>

				<!-- GENDER -->
				<div>
					<h3 class="join_title">
						<label for="gender">성별</label>
					</h3>
					<span class="box int_pass_check"> <input type="text"
						id="mobile" name="member_gender" class="pixint" maxlength="16"
						value="${member_info.member_gender }" disabled />
					</span>
				</div>

				<!-- MOBILE -->
				<div>
					<h3 class="join_title">
						<label for="phoneNo">휴대전화</label>
					</h3>
					<span class="box int_pass_check"> <input type="text"
						id="mobile" name="member_phoneno" class="pixint" maxlength="16"
						value="${member_info.member_phoneno }" />
					</span> <span class="error_next_box"></span>
				</div>

				<!-- addres -->
				<div>
					<h3 class="join_title">주소</h3>
					<span class="box int_addr"> <input type="text"
						id="sample4_postcode" name="member_addrnum" class="intaddr"
						value="${member_info.member_addrnum}">
						<button class="buttons" type="button"
							onclick="sample4_execDaumPostcode()">
							<i class="bi bi-house-door-fill"></i>
						</button>
					</span> <span class="box int_addrs"> <input type="text"
						id="sample4_roadAddress" name="member_address" class="int"
						value="${member_info.member_address }">
					</span>
				</div>

				<!-- EMAIL -->
				<div>
					<h3 class="join_title">
						<label for="email">이메일<span class="optional"></span></label>
					</h3>
					<span class="box int_email"> <input type="text" id="email"
						name="member_email" class="int" maxlength="100"
						value="${member_info.member_email }">
					</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
				</div>

				<!-- E-mail agree -->
				<br>
				<div class="mail-agree">
					<div class="mail-agreeok">
						<label for="emailagree"> <input type="radio"
							id="emailagree" name="member_eagree" class="agree_chk" value="1">[선택]이메일서비스신청
							수신동의
						</label> <label for="emailagree"> <input type="radio"
							id="emailagree" name="member_eagree" class="agree_chk" value="0">비동의
						</label>
					</div>
					<ul class="explan_txt">
						<li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에 대해 동의하지 않거나
							개인정보를 기재하지 않음으로써 거부하실 수 있습니다. 다만 이때 회원 대상 서비스가 제한될 수 있습니다.</li>
					</ul>
				</div>

				<!-- JOIN BTN-->
				<div class="btn_area">
					<button id="btnJoin">
						<span>수정하기</span>
					</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>