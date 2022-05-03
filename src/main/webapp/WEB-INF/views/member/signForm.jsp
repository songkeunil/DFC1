<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<!DOCTYPE html>

<html>
<head>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<link href="${path}/resources/css/signForm.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%-- <form action="${path}/member/signUp.do" method="post">
	<input type="text" name="member_id">
	<input type="hidden" name="member_pw" value="12345">
	
	<input type="submit" value="가입">
</form> --%>


<form action="${path}/signUp.do" method="post">
    <!-- header -->
    <div id="header">
        <a href="${path }/main.html" title="회원가입"><img src="${path}/resources/image/logo.png"></a>
         <h3 class="main-name">회원가입</h3>
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
                <span class="box int_id">
                    <input type="text" id="id" name="member_id" class="int" maxlength="20">
					<!-- <input type="hidden" name="member_id"> -->
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                <span class="box int_pass">
                    <input type="password" id="pswd1" name="member_pw" class="int" maxlength="20">
                    <span id="alertTxt">사용불가</span>

                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                <span class="box int_pass_check">
                    <input type="password" id="pswd2" class="int" maxlength="20">

                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="name">이름</label></h3>
                <span class="box int_name">
                    <input type="text" id="name" name="member_name"class="int" maxlength="20">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- BIRTH -->
            <div>
            <input type="date" name="member_birth">
<!--                 <h3 class="join_title"><label for="yy">생년월일</label></h3>

                <div id="bir_wrap">
                    BIRTH_YY
                    <div id="bir_yy">
                        <span class="box">
                            <input type="text" id="yy" name="member_birth" class="int" maxlength="4" placeholder="년(4자)">
                        </span>
                    </div>

                    BIRTH_MM
                    <div id="bir_mm">
                        <span class="box">
                            <select id="mm" class="sel">
                                <option>월</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                    </div>

                    BIRTH_DD
                    <div id="bir_dd">
                        <span class="box">
                            <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                        </span>
                    </div>

                </div>
                <span class="error_next_box"></span> -->
            </div>

            <!-- GENDER -->
            <div>
                <h3 class="join_title"><label for="gender">성별</label></h3>
                <span class="box gender_code">
                    <select id="gender" name="member_gender" class="sel">
                        <option>성별</option>
                        <option value="M">남자</option>
                        <option value="F">여자</option>
                    </select>
                </span>
                <span class="error_next_box">필수 정보입니다.</span>
            </div>

            <!-- MOBILE -->
            <div>
                <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                <span class="box int_mobile">
                    <input type="tel" id="mobile" name="member_phoneno" class="int" maxlength="16" placeholder="전화번호 입력">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- addres -->
            <div class="address">
               <h3 class="address-title">주소</h3>
               <input type="text" id="sample6_postcode"  placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" placeholder="주소"><br>
				<input type="text" id="sample6_detailAddress" name="member_address" placeholder="상세주소">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목">
            </div>

            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                <span class="box int_email">
                    <input type="text" id="email" name="member_email" class="int" maxlength="100" placeholder="선택입력">
                </span>
                <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
            </div>

			<!-- E-mail agree -->
			<div class="mail-agree">
              <input type="checkbox" id="emailagree"  class="agree_chk">
              <input type="hidden" name="member_eagree" value="1">
              <label for="emailagree">[선택]이메일서비스신청 수신동의</label>
               <ul class="explan_txt">
               <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
                  	대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
                  	다만 이때 회원 대상 서비스가 제한될 수 있습니다.
                </li>
            </div>
            
          
            <!-- JOIN BTN-->
            <div class="btn_area">
                <button  id="btnJoin">
                    <span>가입하기</span>
                </button>
            </div>
        </div>
        <!-- content-->
         <input type="submit" value="가입">
    </div>
    
</form>
</body>
</html>