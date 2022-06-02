<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<!DOCTYPE html>

<html>
<head>

<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<link href="${path}/resources/css/mypage/modMemberInfo.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script src="../jquery-ui-1.13.1.custom/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>

    $(function() {
    	
    	$("#gender").each(function(i) {       
		    /* $(this).attr('checked', "true"); */
		    $(this).attr('disabled', "true");
		});
    	
    	//모든 공백 체크 정규식
		var empJ = /\s/g;
       	
		//비밀번호 정규식
		var pwJ = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/; 
		
	    //비밀번호
		/* $('#pwch1').text('6~20자의 영문 소문자, 숫자만 사용가능합니다') */
		$('#pwch1').css('color', 'red') 
	   	$("#pswd1").focusout(function(){
		     if($('#pswd1').val() == ""){
		    	$('#pwch1').text('*필수 정보입니다.');
			   	$('#pwch1').css('color', 'red');
				return false;
			 }else if(!pwJ.test($(this).val())){
				$('#pwch1').text('*6~20자, 하나이상의  영문 대∙소문자,특수문자,숫자를 사용합니다')
				$('#pwch1').css('color', 'red') 
				return false;
		     }else{
		        /* pwc2 = true; */
		        /* $('#pwch1').hide(); */
		        
		        var pswd1 = $("#pswd1").val();
					$.ajax({
						type:'post'
						,url:'${path}/duplicatePW.do'
						,data:{member_pw : pswd1 }
						,success:function(obj){
						console.log(obj);
						if(obj != true){
							$('#pwch1').text('*사용할 수 있는 비밀번호입니다.')
							$('#pwch1').css('color', 'green') 
							pwc2= true;
						}else{
							$('#pwch1').text('*현재 사용중인 비밀번호 입니다.')
							$('#pwch1').css('color', 'red') 
						}
					}
					,error:function(e){
						console.log(e);
					}
				});	
		       /*  return true; */
			 }
		});
		//비밀번호 재확인
		$("#pswd2").keyup(function(){
		    if($(this).val()!=$("#pswd1").val()){
		        $("#pwch2").html("*비밀번호가 다릅니다");
		        $("#pwch2").css("color",'red');
		        pwc = false;
		    }else{
		        $("#pwch2").html("*비밀번호가 일치합니다");
		        $("#pwch2").css("color",'blue');
		        pwc = true;
		    }
		});
		//비밀번호 불일치 확인
		$("#pswd1").keyup(function(){
		    if($(this).val()!=$("#pswd2").val()){
		        $("#pwch2").html("*비밀번호가 다릅니다");
		        $("#pwch2").css("color",'red');
		        pwc = false;
		
		    }else{
		        $("#pwch2").html("*비밀번호가 일치합니다");
		        $("#pwch2").css("color",'blue');
		        pwc = true;
		    }
		});
		

		
		//핸드폰번호 정규식
		var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		/* $("#mobile").focusout(function(){ */
		   if($('#mobile').val() == ""){
			   $('#phonech').text('*필수 정보입니다.');
			   $('#phonech').css('color', 'red');
		   }else if(!phoneJ.test($('#mobile').val())){
				$('#phonech').text('*-없이 숫자만 입력가능합니다.')
				$('#phonech').css('color', 'red') 
				return false;
		   }else{
		       phonec = true;
		       $('#phonech').hide();
		   }
		/* }); */
		
		//이메일 정규식
		var emailJ = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		/* $("#email").focusin(function(){ */
		 	if($('#email').val() == ""){
			    $('#emailch').text('*필수 정보입니다.');
			    $('#emailch').css('color', 'red');
			    /* $(this).focus(); */
				return false; 
	    	}else if(!emailJ.test($('#email').val())){
				$('#emailch').text('*정확한 이메일 형식으로 입력합니다.')
				$('#emailch').css('color', 'red') 
				return false;
		   }else{
		       	emailc = true;
		       	$('#emailch').hide();
		       	return true;
		   	}
		/* }); */
		
		
		
    })//DOC end.

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
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
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
	
	            /* var guideTextBox = document.getElementById("guide");
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	            if(data.autoRoadAddress) {
	                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                guideTextBox.style.display = 'block';
	
	            } else {
	                guideTextBox.innerHTML = '';
	                guideTextBox.style.display = 'none';
	            } */
	        }
	    }).open();
	}
    
    
    var overChk = false;
    var pwc = false;
    var pwc2 = false;
	var phonec = false;
	var emailc = false;

    //등록
	function regist(){
		
		var pw = $("#pswd1").val();
		var pw2 = $("#pswd2").val();
		var phone = $("#mobile").val();
		var addr = $("#sample4_jibunAddress").val();
		var email = $("#email").val();
		
		let result = true;
		
		if(pwc == false|| pw2 === "" || pwc2 == false){
		    alert('비밀번호를 확인 해 주세요')
		    result = false;
		}
		
		if(phonec == false || phone === ""){
		    alert('전화번호를 입력해주세요.')
		    result = false;
		}
		
		if(addr == ""){
		 	alert('주소를 선택해주세요')
		 	result = false;
		}
		
		if(emailc == false || email === ""){
			alert('이메일을 입력해주세요')
			result = false;
		}
		
		/* if(emoverChk == false){
			alert('이메일을 중복 검사를 해주세요')
		} */
		
		if(!result){
		   /*  alert("check") */
		    return false;
		}
		$('form').attr("action", "<c:url value='/updateInfo.do'/>");
		$('form').submit();
	};		

	
	function delete_id(){
		if(confirm("탈퇴하시겠습니까?")) {
			$('form').attr("action", "<c:url value='/deleteID.do'/>");
			$('form').submit();
		} else {
			return false;
		}
	};	    
    
</script>

 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

<form id="frm_memberModform"  method="post">

    <!-- header -->
    <div id="header">
        <a href="${path }/main.html" title="회원가입">
        <img src="${path}/resources/image/logo.png"></a>
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
                    &nbsp<span id="idch"></span>
                </h3>
                <span class="box int_id">
                    <input type="text" id="id" name="member_id" class="intid" maxlength="20" value="${memberVO.member_id }" disabled>
                </span> 
                
                <span class="error_next_box"></span>
               
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title">
                <label for="pswd1">비밀번호</label>
                 &nbsp<span id="pwch1"></span>
                </h3>
                <span class="box int_pass">
                    <input type="password" id="pswd1" name="member_pw" class="int" maxlength="20">
                    <span id="alertTxt">사용불가</span>
                </span>
                <span class="error_next_box"></span>
                <!-- <p id="pwch1" class="reg_check"> </p> -->
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title">
                <label for="pswd2">비밀번호 재확인</label>
                &nbsp<span id="pwch2"></span>
                </h3>
                <span class="box int_pass_check">
                    <input type="password" id="pswd2" class="int" maxlength="20">
                </span>
                <span class="error_next_box"></span>
                <!-- <p id="pwch2" class="reg_check"> </p> -->
            </div>

            <!-- NAME -->
            <div>
                <h3 class="join_title">
                <label for="name">이름</label>
                &nbsp<span id="namech"></span>
                </h3>
                <span class="box int_name">
                    <input type="text" id="name" name="member_name"class="int" maxlength="20" value="${memberVO.member_name }" disabled>
                </span>
                <span class="error_next_box"></span>
                <!-- <p id="namech" class="reg_check"> </p> -->
            </div>

            <!-- BIRTH -->
          	<div>
                <h3 class="join_title"><label for="name">생년월일</label></h3>
                <span class="box date_name">
                    <input type="text" id="birth" class="datepicker" name="member_birth" maxlength="20" disabled value="${memberVO.member_birth }" >
                </span>
            </div>

            <!-- GENDER -->
            <div>
                <h3 class="join_title"><label for="gender">성별</label></h3>
                <span class="box gender_code">
                    <select id="gender" name="member_gender" class="sel" disabled>
                        <option>성별</option>
                        <option value="M" <c:if test="${memberVO.member_gender eq 'M'}"> selected="selected"</c:if>>남자</option>
                        <option value="F" <c:if test="${memberVO.member_gender eq 'F'}"> selected="selected"</c:if>>여자</option>
                    </select>
                </span>
                <span class="error_next_box">필수 정보입니다.</span>
            </div>

            <!-- MOBILE -->
            <div>
                <h3 class="join_title">
                <label for="phoneNo">휴대전화</label>
                &nbsp<span id="phonech"></span>
                </h3>
                <span class="box int_mobile">
                    <input type="tel" id="mobile" name="member_phoneno" class="int" maxlength="16" placeholder="전화번호 입력" value="${memberVO.member_phoneno }">
                </span>
                <span class="error_next_box"></span>
               <!--  <p id="phonech" class="reg_check"> </p> -->
            </div>

            <!-- address -->
			<div>
                <h3 class="join_title">주소</h3>
                <span class="box int_addr">
	                <input type="text" id="sample4_postcode" name="member_addrnum" class="intaddr" placeholder="우편번호" value="${memberVO.member_addrnum }">
 					<button class="buttons" type="button" onclick="sample4_execDaumPostcode()"><i class="bi bi-house-door-fill"></i></button>
                </span>
                <span class="box int_addrs">
				<input type="text" id="sample4_roadAddress" name="member_address" class="int" placeholder="주소" value="${memberVO.member_address }">
				</span>
            </div>

            <!-- EMAIL -->
            <div>
                <h3 class="join_title">
                <label for="email">이메일<span class="optional"></span></label>
                &nbsp<span id="emailch"></span>
                </h3>
                <span class="box int_email">
                    <input type="text" id="email" name="member_email" class="int" maxlength="100" placeholder="선택입력" value="${memberVO.member_email }">
                </span>
                <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
                <!-- <p id="emailch" class="reg_check"> </p> -->
            </div>

			<!-- E-mail agree -->
			<br>
			<div class="mail-agree">
              	<div class="mail-agreeok">
	               	<label for="emailagree">
	              		<input type="radio" id="emailagree" name="member_eagree" class="agree_chk" value="0">비동의
	              	</label>
	              	<br>
	              	<label for="emailagree">
	              		<input type="radio" id="emailagree" name="member_eagree" class="agree_chk" value="1" checked>[선택]이메일서비스신청 수신동의
	              	</label>
            	</div>
               	<ul class="explan_txt">
               	<li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에
                  	대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.
                  	다만 이때 회원 대상 서비스가 제한될 수 있습니다.</li>
                </ul>
            </div>
            
            <!-- JOIN BTN-->
            <div class="btn_area_a">
                <button type="button" id="btn_mod" onclick="regist()">
                    <span>수정완료</span>
                </button>
            </div>
            <div class="btn_area_b">
                <button type="button" id="btn_delete" onclick="delete_id()">
                    <span>회원탈퇴</span>
                </button>
            </div>
            
        </div>
    </div>
    
</form>

</body>
</html>