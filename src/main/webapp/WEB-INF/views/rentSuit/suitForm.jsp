<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel='stylesheet' href="${contextPath }/resources/css/font.css">
    <link rel='stylesheet' href="${contextPath }/resources/css/suit/rentForm.css">

	<!-- datepicker -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> 
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


</head>
<script language="javaScript">

	var  maxAppend = 1;

	$(function(){
		
		if($("#v_date[type=text]").length > 0) {
			setDatePicker($("#v_date"));
		}
		if($("#re_date[type=text]").length > 0) {
			setDatePicker($("#re_date"));
		}
		if($("#ic_date[type=text]").length > 0) {
			setDatePicker($("#ic_date"));
		}
		
		//수정화면
		if(${suitVO.req_no != null} ){
			maxAppend = $("a[id=file]").length + 1;
			console.log(maxAppend);
			$("input[type=checkbox]").each(function(i) {       
			    $(this).attr('checked', "true");
			    $(this).attr('disabled', "true");
			});
		 	document.getElementById("btn_suit_reg_disabled").style.display = "none";
		};
		
		
		//파일 업로드 동적으로 추가
		$('.__add ._add').on('click',function(){ 
		    if(maxAppend >= 5){
		        alert("파일 업로드 최대 개수는 5개 입니다.");
		        return;
		    } else{
		        $('.__add').append('<li><input type="file"name="file'+maxAppend+'" class="files"> <button type="button" id="btn_add" class="_add" onclick="addDel(this);">삭제</button></li>'); 
		        maxAppend ++;
		 	}
		});
		
		$("a[name=file-delete]").on("click", function(e){
			e.preventDefault();
			deleteFile($(this));
		})
		
	});//end

	//수정모드
	function fn_modSuit(){
		
		//submit   
        if (confirm("입력정보를 수정하시겠습니까?")) {
            alert("수정되었습니다");
        } else {
            return false;
        } 
		$('form').submit();
	}
	
	//파일 업로드 동적으로 삭제
	 function addDel(a){ 
	    $(a).closest('li').remove(); 
	    maxAppend --;
	 }
	function deleteFile(obj){
		obj.parent().remove();
		maxAppend --;
	}
	
	//업로드 된 파일 삭제
	function fn_file_delete(a){
		$(a).closest('input').attr("disabled","true");	
	}

	// 전화번호 자동 하이픈
     function test(e) {
        var number = e.value.replace(/[^0-9]/g, "");
        var phone = "";
 
        if (number.length < 4) {
            return number;
        } else if (number.length < 7) {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3);
        } else if (number.length < 10) {
            phone += number.substr(0, 2);
            phone += "-";
            phone += number.substr(2, 3);
            phone += "-";
            phone += number.substr(5);
        } else if (number.length < 11) {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3, 3);
            phone += "-";
            phone += number.substr(6);
        } else {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3, 4);
            phone += "-";
            phone += number.substr(7, 4);
        }
 
        e.value = phone;
    }//전화번호 자동 하이픈-끝
    
    //달력 
    function setDatePicker(dateObj) {
		dateObj.datepicker({
			buttonText: "Select date",
			changeMonth: true,
			changeYear: true,
			showMonthAfterYear:true,	//	년도 뒤에 month 배치하기
			monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			dayNamesMin:['일','월','화','수','목','금','토'],
			dateFormat:'yy-mm-dd',
			minDate: "+2D",
	        onClose: function( selectedDate ) {
	        	if(dateObj.attr("id").indexOf("v_date") != -1){
	        		$("#ic_date").datepicker( "option", "minDate", selectedDate );
	        	} else if(dateObj.attr("id").indexOf("re_date") != -1){
	        		$("#ic_date").datepicker( "option", "maxDate", selectedDate );
	        	} else if(dateObj.attr("id").indexOf("v_date") != -1){
	        		$("#re_date").datepicker( "option", "maxDate", selectedDate );
	       		}
	        }
		});	
	}
    
    //유효성 검사
    var radioChk1 = false;
    var radioChk2 = false;
    var radioChk3 = false;
    var arr_radio1 = document.getElementsByName("rent_date");
    var arr_radio2 = document.getElementsByName("rent_cname");
    var arr_radio3 = document.getElementsByName("hope_card");
    
        
    function check_All() {
    	
    	var theForm = document.frm1;
    	
    	var chk1 = document.getElementById('agree1').checked;
    	var chk2 = document.getElementById('agree2').checked;
    	var chk3 = document.getElementById('agree3').checked;
    	var chk4 = document.getElementById('agree4').checked;
        	
        	let result = true;
        	
        	//체크박스 체크여부 확인
	        if (!chk1) {
	            alert('개인정보의 수집∙이용에 동의해 주세요');
	            //console.log(!chk1);
	            document.getElementById('agree1').focus();
	            result = false;
	        }
        	
	        if (!chk2) {
	            alert('고유식별정보 수집에 동의해 주세요');
	            document.getElementById('agree2').focus();
	            result = false;
	        } 
	        
	        if (!chk3) {
	            alert('개인정보 제3자 제공에 동의해 주세요');
	            document.getElementById('agree3').focus();
	            result = false;
	        }
	        
	        if (!chk4) {
	            alert('제출서류 및 주의 사항에 동의해 주세요');
	            document.getElementById('agree4').focus();
	            result = false;
	        } 

	        
	        //대여일 선택
	        if ($("#v_date").val() == "") {
	            alert("방문일자를 선택해주세요.");
	            document.getElementById('v_date').focus();
	            result = false;
	        }
	        
		    if ($("#v_time").val() == "시간선택") {
	            alert("방문시간을 선택해주세요.");
	            document.getElementById('v_time').focus();
	            result = false;
	        }
	
		    if ($("#re_date").val() == "") {
	            alert("반납예정일을 선택해주세요.");
	            document.getElementById('re_date').focus();
	            result = false;
	        }
		    
		    if ($("#re_time").val() == "시간선택") {
	            alert("반납예정시간을 선택해주세요.");
	            document.getElementById('re_time').focus();
	            result = false;
	        }
	
		    
	        // 대여일 선택 라디오 박스 체크여부
	        for (var i = 0; i < arr_radio1.length; i++) {
	            if (arr_radio1[i].checked == true) {
	                radioChk1 = true;
	                break;
	            }
	        }
	        if (!radioChk1) {
	            alert("대여기간을 선택해주세요");
	            result = false;
	        }
	
	        for (var i = 0; i < arr_radio2.length; i++) {
	            if (arr_radio2[i].checked == true) {
	                radioChk2 = true;
	                break;
	            }
	        }
	        if (!radioChk2) {
	            alert("대여업체를 선택해주세요");
	            result = false;
	        }
	
	        for (var i = 0; i < arr_radio3.length; i++) {
	            if (arr_radio3[i].checked == true) {
	                radioChk3 = true;
	                break;
	            }
	        }
	        if (!radioChk3) {
	            alert("청년희망카드 참여여부를 선택해주세요");
	            result = false;
	        }
	
			
	 		//면접회사 정보 입력
	        if ($("#ic_name").val() == "") {
	            alert("회사명을 입력해주세요.");
	            document.getElementById('ic_name').focus();
	            result = false;
	        }
	
	        if ($("#ic_date").val() == "") {
	            alert("면접일자를 입력해주세요.");
	            document.getElementById('ic_date').focus();
	            result = false;
	        }
	
	        if ($("#ic_location").val() == "") {
	            alert("근무지를 입력해주세요.");
	            document.getElementById('ic_location').focus();
	            result = false;
	        }
	
	        if ($("#ic_pn").val() == "") {
	            alert("회사연락처를 입력해주세요.");
	            document.getElementById('ic_pn').focus();
	            result = false;
	        }
	
	        //첨부파일 
	        if(document.getElementById("file").files.length < 1)
	        {
	           alert("대전거주 증빙자료를 업로드해주세요.");
	           result = false;
	        }
	           
	        //submit   
	        if (confirm("정장대여서비스를 신청하시겠습니까?")) {
	            alert("접수되었습니다");
	        } else {
	            return false;
	        } 
	        
	        if(!result){
			    //alert("check")
			    return false;
			}
			
			$('form').submit();
		};		
	    
 
</script>

<body>
   
<form action="${contextPath}/addRentSuit.do" id="frm1" method="post" enctype="multipart/form-data">
 
<div id='y-rentForm-rap'>

    <div id='y-boardtop'>
        <h2>정장대여신청</h2>
        <div class='suit_submenu'>
	        <a href='${contextPath }/main.html'><i class="bi bi-house-door"></i>Home</a> >
	        <a href='#'>청년면접정장대여</a> >
	        <a href='#'>정장대여 신청</a>
        </div>
    </div>

    <div id="y-rentForm">
    
        <div class="y-rentForm-Terms">
            <div class="y-rentForm-Terms-title">개인정보의 수집∙이용에 관한 사항 (필수)</div>
            <div class="y-rentForm-Terms-detail">1. 수집·이용 목적<br>
                - 대전 청년 면접용 정장대여 사업 참여자 선정·관리, 주민등록 등·초본 조회, 개인별 참여 이력 관리, 고용보험 이력 조회, 서비스 실적 및 성과 평가, 중앙부처<br>- 지방자치단체의 일자리관련시스템 등 정보제공 및 정책자료 등에 활용(사업관련 연구, 설문조사 포함)
                <br><br>
                2. 수집하는 개인정보 항목<br>
                - 성명 / 주소 / 이메일 / 연락처 / 주민등록번호 / 입사면접관련 사항 등
                <br><br>
                3. 보유·이용 기간<br>
                <span>- 대전 청년 면접용 정장대여 사업 운영 기간 및 종료 이후 사업 문서 보존 기간 동안 보유 및 이용</span>
                <br><br>
                4. 보유·이용 근거<br>
                - 개인정보 주체자의 이용 동의
                <br><br>
                5. 개인정보수집 동의 거부의 권리<br>
                - (재)대전일자리경제진흥원 일자리지원센터는 보다 원활한 지원을 위하여 개인정보를 수집하고 있으며, <br>제공을 원하지 않을 경우 수집하지 않으며, 미동의시 해당사업에 참여할 수 없습니다. <br><br>
            </div>
            <div class="y-rentForm-Terms-agree">
                <div class="y-rentForm-Terms-agree-box"><input type="checkbox" id="agree1" name="agree1"></div> &nbsp이용약관의 내용에 동의합니다
            </div>
        </div>
        
        <div class="y-rentForm-Terms">
            <div class="y-rentForm-Terms-title">고유식별정보 수집 동의 (필수)</div>
            <div class="y-rentForm-Terms-detail">본인은 (재)대전일자리경제진흥원 일자리지원센터(이하 ‘회사’라 합니다)가 제공하는 대전청년 면접용 정장대여사업 서비스<br>(이하 ‘서비스’라 합니다)를 이용하기 위해, 다음과 같이 본인의 개인정보를 회사가 아래 기재된 제3자에게 제공하는 것에 동의합니다.
                <br><br>
                1. 개인정보를 제공받는 자<br>
                - (재)대전일자리경제진흥원 일자리지원센터
                <br><br>
                2. 개인정보를 제공받는 자의 개인정보 이용목적<br>
                - 신청일 현재 주민등록상 주소지 확인을 위한 주민등록 등·초본 조회<br>
                - 대전 청년 면접용 정장대여 사업 실적·성과 평가 등 활용을 위한 취업여부 조회(고용보험, 건강보험 등 4대 보험 가입내역 조회)
                <br><br>
                3. 제공하는 개인정보 항목<br>
                - 회사가 보유하고 있는 이용자의 주민등록번호
                <br><br>
                4. 개인정보를 제공받는 자의 개인정보 보유 및 이용기간<br>
                <span>- 대전 청년 면접용 정장대여 사업 운영 기간 및 종료 이후 사업 문서 보존 기간 동안 보유 및 이용</span>
                <br><br>
                5. 보유·이용 근거<br>
                - 개인정보 주체자의 이용 동의
                <br><br>
                6. 개인정보수집 동의 거부의 권리<br>
                (재)대전일자리경제진흥원 일자리지원센터는 보다 원활한 사업운영을 위하여 기본정보 이외의 고유식별 정보를 수집하고 있으며,<br> 고유식별정보는 개인인증을 위해 활용되는 정보로, 제공을 원하지 않을 경우 수집하지 않으며, 미동의시 해당사업에 참여할 수 없습니다.<br><br>
            </div>
            <div class="y-rentForm-Terms-agree">
                <div class="y-rentForm-Terms-agree-box"><input type="checkbox" id="agree2" name="agree2"></div> &nbsp개인정보 수집 이용에 관한 사항 내용에 동의합니다.
            </div>
        </div>
        
        <div class="y-rentForm-Terms">
            <div class="y-rentForm-Terms-title"> 개인정보 제3자 제공 동의 (필수)</div>
            <div class="y-rentForm-Terms-detail">1. 제공 목적<br>
                - 대전 청년 면접용 정장대여 사업 참여자 선정 및 참여자 지원·관리, 설문조사, 기타 본 사업과 관련사항 등<br><br>
                2. 제3자 (제공 기관)<br>
                - 지방자치단체, 행정안전부, (재)대전일자리경제진흥원일자리지원센터, 정장 대여업체 등 업무 관련 기관
                <br><br>
                3. 제공하는 개인정보 항목<br>
                - 성명 • 주소 • 이메일 • 휴대전화번호 • 생년월일 • 면접회사정보<br><br>
                4. 보유·이용 기간<br>
                <span>- 대전 청년 면접용 정장 대여 사업 운영 기간 및 종료 이후 사업 문서 보존 기간 동안 보유 및 이용</span><br><br>
                5. 보유·이용 근거<br>
                - 개인정보 주체자의 이용 동의
                6. 개인정보수집 동의 거부의 권리<br>
                - (재)대전일자리경제진흥원 일자리지원센터는 보다 원활한 사업운영을 위하여 제 3자에게 기본정보를 제공할 수 있으며,<br> 미동의시 해당사업에 참여할 수 없습니다.<br><br>
            </div>
            <div class="y-rentForm-Terms-agree">
                <div class="y-rentForm-Terms-agree-box"><input type="checkbox" id="agree3" name="agree3"></div> &nbsp개인정보 제3자 제공 동의 내용에 동의합니다.
            </div>
        </div>
        
        <div class="y-rentForm-Terms">
            <div class="y-rentForm-Terms-title"> 제출서류 및 주의 사항 (필수)</div>
            <div class="y-rentForm-Terms-detail">제출서류 : 정장대여신청서(개인정보동의서 포함), 주민등록등·초본, 면접증빙서류 등 각 1부 <br><br>
                <span> 물품 훼손 또는 분실시 그에 따른 손해배상책임(금전배상 원칙)이 따르며, 고의로 멸실 또는 반환하지 않을 경우 형사처벌 대상이 될 수 있습니다.<br>
                (정장 훼손, 반납 지연 등의 사유로 생기는 불이익 및 비용은 대여자 부담)</span><br><br>
               	대전 거주 구직청년이 아니거나 취업목적이 아닌 경우(모의면접, 경조사 참석 등) 지원이 불가합니다. 또한, 향후 적발될 경우 대여물품을 즉시 반납하여야 하며, 대전 청년 면접용 정장대여 사업의 불이익을 받을 수 있습니다.<br>
      			대여업체 방문시 본인확인을 위하여 신분증을 지참 바랍니다. <span>※ 본인 외 대여불가</span><br><br>
            </div>
            <div class="y-rentForm-Terms-agree">
                <div class="y-rentForm-Terms-agree-box"><input type="checkbox" id="agree4" name="agree4"></div> &nbsp제출서류 및 주의 사항 내용에 동의합니다.
            </div>
        </div>


        <div class="y-rentForm-titletext"><h2>대여일선택</h2></div>

        <div class="y-rentForm-borrow-date">
            <div class="y-rentForm-title-date">방문일자</div>
            <div class="y-rentForm-select-date">
               	 방문일자를 선택 해주세요
                <input type="text" id="v_date" class="datepicker" name="v_date" value="${suitVO.v_date }" readonly> <br>
                	※ 클릭하시면 달력이 출력되고 해당 달력에서 방문일자를 선택해 주세요. <br>
	                <p>※ 주말에는 승인 처리가 불가하오니 이점 유의하여 방문 일자를 선택해 주시기 바랍니다.</p>
	                <p>※ 대여기간 : 2박 3일</p>
	                <p>※ 방문전 꼭 대여업체에 전화 후 방문 바랍니다.</p><br>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-time">
            <div class="y-rentForm-title-time">방문시간</div>
            <div class="y-rentForm-select-time">
           		방문시간을 선택 해주세요
                <select id="v_time" name="v_time" >
                    <option value="시간선택">시간선택</option>
                    <c:forEach var="code" items="${codeList }">
                    	<option value="${code.timecode}" <c:if test="${suitVO.v_time eq code.timecode}"> selected="selected"</c:if>> ${code.timecode} </option>
                    </c:forEach>
                </select><br>
                <p>※ 슈트갤러리 (월~토 10:00 ~ 19:30 / 일 13:00 ~ 18:00 / 중구 동서대로 1263 / 042-524-9007 / <span>휴무 : 화요일</span> )</p>
                <p>※ 아모르메이크업 (월~금 9:00 ~ 19:00 / 토·일 13:00 ~ 19:00 / 서구 계룡로 339번길 19 / 042-301-3436 /<span> 휴무 : 화요일</span> )</p>
                <p>※ 가온유니폼 (월~금 10:00 ~ 20:30 / 토·일 11:00 ~ 20:30 / 중구 보문로 89 / 042-253-5336 / <span>연중무휴</span> )</p>
                <p>※ 방문전 꼭 대여업체에 전화 후 방문 바랍니다.</p>
                <br>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-redate">
            <div class="y-rentForm-title-redate">반납예정일</div>
            <div class="y-rentForm-select-redate">
             	반납예정일을 선택 해주세요
                <input type="text" id="re_date" class="datepicker" name="re_date" value="${suitVO.re_date }" readonly><br>
                	※ 클릭하시면 달력이 출력되고 해당 달력에서 방문일자를 선택해 주세요.<br>
	                <p>※ 방문전 꼭 대여업체에 전화 후 방문 바랍니다.</p><br>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-retime">
            <div class="y-rentForm-title-retime">반납예정시간</div>
            <div class="y-rentForm-select-retime">
             	반납시간을 선택 해주세요
                <select id="re_time" name="re_time" >
                    <option value="시간선택">시간선택</option>
                    <c:forEach var="code" items="${codeList }">
                    	<option value="${code.timecode}" <c:if test="${suitVO.re_time eq code.timecode}"> selected="selected"</c:if>> ${code.timecode} </option>
                    </c:forEach>
                </select><br>
                <p>※ 슈트갤러리 (월~토 10:00 ~ 19:30 / 일 13:00 ~ 18:00 / 중구 동서대로 1263 / 042-524-9007 )</p>
                <p>※ 아모르메이크업 (월~금 9:00 ~ 19:00 / 토·일 13:00 ~ 19:00 / 서구 계룡로 339번길 19 / 042-301-3436)</p>
                <p>※ 가온유니폼 (월~금 10:00 ~ 20:30 / 토·일 11:00 ~ 20:30 / 중구 보문로 89 / 042-253-5336 )</p>
                <p>※ 방문전 꼭 대여업체에 전화 후 방문 바랍니다.</p>
                <br>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-term">
            <div class="y-rentForm-title-term">대여기간</div>
            <div class="y-rentForm-select-term">
                <div class="y-rentForm-select-term-inputbox">
                	<input type="radio" id="rent_date" name="rent_date" value="1박2일" <c:if test="${suitVO.rent_date eq '1박2일'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-term-textbox">1박2일</div>
                <div class="y-rentForm-select-term-inputbox">
                	<input type="radio" id="rent_date" name="rent_date" value="2박3일" <c:if test="${suitVO.rent_date eq '2박3일'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-term-textbox">2박3일</div>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-company">
            <div class="y-rentForm-title-company">대여업체명</div>
            <div class="y-rentForm-select-company">
                <div class="y-rentForm-select-company-inputbox">
                	<input type="radio" id="rent_cname" name="rent_cname" value="슈트갤러리" <c:if test="${suitVO.rent_cname eq '슈트갤러리'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-company-textbox">슈트갤러리</div>
                <div class="y-rentForm-select-company-inputbox">
                	<input type="radio" id="rent_cname" name="rent_cname" value="아모르메이크업" <c:if test="${suitVO.rent_cname eq '아모르메이크업'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-company-textbox">아모르메이크업</div>
                <div class="y-rentForm-select-company-inputbox">
                	<input type="radio" id="rent_cname" name="rent_cname" value="가온유니폼" <c:if test="${suitVO.rent_cname eq '가온유니폼'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-company-textbox">가온유니폼</div>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-hopecard">
            <div class="y-rentForm-title-hopecard">현재 청년희망카드 참여여부</div>
            <div class="y-rentForm-select-hopecard">
                <div class="y-rentForm-select-hopecard-inputbox">
                	<input type="radio" id="hope_card" name="hope_card" value="Y" <c:if test="${suitVO.hope_card eq 'Y'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-hopecard-textbox">예</div>
                <div class="y-rentForm-select-hopecard-inputbox">
                	<input type="radio" id="hope_card" name="hope_card" value="N" <c:if test="${suitVO.hope_card eq 'N'}">checked</c:if>>
                </div>
                <div class="y-rentForm-select-hopecard-textbox">아니오</div>
            </div>
        </div>
        
        
        <div class="y-rentForm-titletext"><h2>면접 회사정보 입력</h2></div>
        
        <div class="y-rentForm-borrow-ic_name">
            <div class="y-rentForm-title-ic_name">회사명</div>
            <div class="y-rentForm-select-ic_name">
                <input type="text" id="ic_name" name="ic_name" value="${suitVO.ic_name }">
            </div>
        </div>
        
        <div class="y-rentForm-borrow-ic_date">
            <div class="y-rentForm-title-ic_date">면접일자</div>
            <div class="y-rentForm-select-ic_date">
                <input type="text" id="ic_date" class="datepicker" name="ic_date" value="${suitVO.ic_date }" readonly>
            </div>
        </div>
        
        <div class="y-rentForm-borrow-ic_location">
            <div class="y-rentForm-title-ic_location">근무지</div>
            <div class="y-rentForm-select-ic_location">
                <input type="text" id="ic_location" name="ic_location" value="${suitVO.ic_location }">
            </div>
        </div>
        
        <div class="y-rentForm-borrow-ic_pn">
            <div class="y-rentForm-title-ic_pn">회사연락처</div>
            <div class="y-rentForm-select-ic_pn">
                <input type="tel" id="ic_pn" name="ic_pn" onkeyup="test(this)" value="${suitVO.ic_pn }" placeholder="">
            </div>
        </div>
        
        
        <div class="y-rentForm-titletext"><h2>증빙서류 첨부</h2></div>
        
        <div class="y-rentForm-borrow-file">
            <div class="y-rentForm-title-file">증빙서류 첨부</div>
           	<div class="y-rentForm-select-file">
           		<span>※ 대전거주 증빙자료, 미취업자 또는 근로시간 30시간 미만 증빙자료, 면접증빙 자료를 증빙서류로 필수로 첨부해주세요.</span> <br>
               	※ 면접 사실 확인 서류(문자, 이메일 등)를 회사명, 면접일, 연락처가 보이도록 캡처하여 업로드해 주세요.<br>
               	※ 전화로 면접을 통보받았을 경우, 취업지원 사실을 확인할 수 있는 자료(입사지원서, 서류접수 확인증 등)를 캡처하여 업로드해 주세요.
               	<p>※ 본인 면접사실이 확인되지 않은 경우 대여가 어려울 수 있사오니 이점 양지바랍니다.</p><br>
           	</div>
        </div>
        <table class="y-rentForm-borrow-file1">
           	<th class="y-rentForm-title-file1">첨부파일</th>
           	<td id="fileIndex" class="y-rentForm-select-file1">
           		
           		<c:if test="${suitVO.req_no != null}">
           			<c:forEach var="item" items="${fileList }" varStatus="status">
           				<li id="mod_attachFile">
           					<input type="hidden" name="origin_file${status.count }" value="${item.fileName }">
	           				<span>${item.fileName }</span>&nbsp
	           				<a href="#this" id="file" name="file-delete">삭제</a>
           				</li>
           			</c:forEach>
           		</c:if>
           		
	       		<ul class="__add"> 
	       			<button  type="button" id="btn_add" class="_add" >파일 추가</button>
 					<li>
						<input type="file" id="file" name="file" class="files" >
					</li> 
				</ul>
				
           	</td>
       </table>    
          
				
		<div class="y-rentForm-submit-btn">
			<div id="btn_suit_reg_disabled">
				<button type="button" id="btn_suit_reg" onclick="check_All()" >신청하기</button>
				<button type="button" id="btn_suit_cancle" onclick="location.href='${contextPath}/listSuitAll.do'">취소</button>
			</div>
			<c:if test="${suitVO.req_no != null}">
				<input type="hidden" name="req_no" value="${suitVO.req_no }">
			    <button type="button" id="btn_suit_mod" onclick="fn_modSuit()" >수정완료하기</button>
			    <button type="button" id="btn_suit_comp" onclick="location.href='${contextPath}/listSuitAll.do'">취소</button>
		    </c:if>
		</div>
		
     </div>
    
</div>

</form>


</body></html>
