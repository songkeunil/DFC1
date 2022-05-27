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
    <link rel='stylesheet' href="${contextPath }/resources/css/suit/rentForm2.css">


</head>
<script language="javaScript">

	$(function(){
	
		
	});
	
</script>

<body>
   
<form action="${contextPath}/suitForm.html" method="post" enctype="multipart/form-data">
 
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
    
        <div class="y-rentForm-titletext"><h2>대여일</h2></div>

       <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">등록번호</div>
            <div class="y-rentForm-select">
            	<p>${suitVO.req_no }</p>
            	<input type="hidden" name="req_no" value="${suitVO.req_no }">
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">방문일자</div>
            <div class="y-rentForm-select">
            	<p>${suitVO.v_date }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">방문시간</div>
            <div class="y-rentForm-select">
            	<p>${suitVO.v_time }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">반납예정일</div>
            <div class="y-rentForm-select">
            	<p>${suitVO.re_date }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">반납예정시간</div>
            <div class="y-rentForm-select">
            	<p>${suitVO.re_time }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">대여기간</div>
            <div class="y-rentForm-select">
                <p>${suitVO.rent_date }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">대여업체명</div>
            <div class="y-rentForm-select">
                <p>${suitVO.rent_cname }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">현재 청년희망카드 참여여부</div>
            <div class="y-rentForm-select">
                <p>${suitVO.hope_card }</p>
            </div>
        </div>
        
        
        <div class="y-rentForm-titletext"><h2>면접 회사정보</h2></div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">회사명</div>
            <div class="y-rentForm-select">
                <p>${suitVO.ic_name }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">면접일자</div>
            <div class="y-rentForm-select">
                <p>${suitVO.ic_date }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">근무지</div>
            <div class="y-rentForm-select">
                <p>${suitVO.ic_location }</p>
            </div>
        </div>
        
        <div class="y-rentForm-borrow">
            <div class="y-rentForm-title">회사연락처</div>
            <div class="y-rentForm-select">
                <p>${suitVO.ic_pn }</p>
            </div>
        </div>
        
        
        <div class="y-rentForm-titletext"><h2>증빙서류 첨부</h2></div>
        
        <div class="y-rentForm-borrow-file">
            <div class="y-rentForm-title-file">증빙서류 첨부</div>
           	<div class="y-rentForm-select-file">
                
                <div class='y-rentForm-file-insert'>
					<c:forEach var="item" items="${fileList }">
           				<a href="${contextPath }/download.do?req_no=${suitVO.req_no}&fileName=${item.fileName}&stored_fileName=${item.stored_fileName}" id="file">${item.fileName}</a><br>
           			</c:forEach>                
           		</div>
                
        	</div>
		</div>
		
		<div class="y-rentForm-submit-btn">
		    <button type="submit" id="btn_suit_mod" >수정하기</button>
		    <input type="button" value="완료" onclick="location.href='${contextPath}/listSuitAll.do'">
		</div>
		
     </div>
    
</div>

</form>


</body></html>
