<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags"  %>
     
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<sec:authentication property="principal" var="principal" />

<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/suit/listSuit.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<script  type="text/javascript">
	
	$(function(){
		
		$('#suit_searchBtn').click(function() {
 			self.location = "listSuitAll.do?" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
 		});
		
		$("#keywordInput").bind("keyup",function(){ 
			re = /[~!@\#$%^&*\/()\-=+_']/gi;  
			var temp=$("#keywordInput").val(); 
			if(re.test(temp)){
            	$("#keywordInput").val(temp.replace(re,""));
			}
		});
	});   
	
	function cancle_reservation(req_no){
		var c = confirm("예약을 취소하시겠습니까?");
		if(c){
			alert("예약을 취소하셨습니다.");
			location.href="<c:url value='/deleteSuit.do?req_no="+req_no+"'/>";
			return true;
		}else{
			return false;
		}
	}
	
</script>
				    
</head>

<form method="get" enctype="multipart/form-data">

<body>
	<div id='suit_boardrap'>
	
        <div id='suit_boardtop'>
            <h2><a id="suit_home" href="${contextPath }/listSuitAll.do">정장대여신청</a></h2>
            <div class='suitList_submenu'>
            	<a href='${contextPath }/main.html'><i class="bi bi-house-door"></i>Home </a> > 
            	<a href='#'> 청년면접정장대여 </a> > 
            	<a href='#'>정장대여 신청</a>
        	</div>
        </div><br><br>
        
     	<div id="suit_notice">
			<br><h3>확인사항</h3><br>
			<p>
			- 대여신청 및 취소는 방문일 기준 2일 전까지만 가능합니다.<br>
			EX) 3월 20일 방문예정일 경우, 3월 18일까지만 신청 및 취소 가능<br><br>
			<span>- 방문 전 반드시 대여업체(슈트갤러리/아모르메이크업/가온유니폼)에 연락하여 주시기 바랍니다.</span><br><br>
			- 예약상태가 “승인”으로 변경되면 <span>접수증을 출력</span>하여 신분증 지참 후 대여업체(슈트갤러리/아모르메이크업/가온유니폼)에 방문하여 주시기 바랍니다.<br><br>
			- 문의처 : (재)대전일자리경제진흥원 대전일자리지원센터 ☎ 042)719-8337<br>
			</p>
		</div>
        
        <div id='suit_board'>
            <table>
                <thead>
                    <tr>
                        <th id=th-s1>대여일자</th>
                        <th id=th-s2>대여시간</th>
                        <th id=th-s3>면접회사명</th>
                        <th id=th-s4>신청자명</th>
                        <th id=th-s5>면접일자</th>
                        <th id=th-s6>신청일자</th>
                        <th id=th-s7>예약상태</th>
                        <th id=th-s8>예약인증번호</th>
                        <th id=th-s9>예약취소</th>
                        <th id=th-s10>수정</th>
                        <th id=th-s11>접수증</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="item" items="${allList }">
                    	<tr class='suit_content'>
                    		<td>${item.v_date }</td>
                    		<td>${item.v_time }</td>
                    		<td>${item.ic_name }</td>
                    		<td>${item.member_name }</td>
                    		<td>${item.ic_date }</td>
                    		<td>${item.reg_date }</td>
                    		<td>${item.rent_enabled }</td>
                    		<td>${item.req_no }</td>
                    		<c:if test="${item.member_id == principal }">
                    			<td><button type="button" onclick="cancle_reservation(${item.req_no})">예약취소</button></td>
	                    		<td><button type="button" onclick="location.href='${contextPath}/suitForm.html?req_no=${item.req_no}'">수정</button>
	                    		<td><button type="button">출력</button></td>
                    		</c:if>
                    		<c:if test="${item.member_id != principal }">
	                    		<td></td>
	                    		<td></td>
	                    		<td></td>
                    		</c:if>
                    		
                    	</tr>
                 	</c:forEach>
                </tbody>
            </table>
        </div>
        
        
        <div id='suit_boardfooter'>
        
            <div id = 'suit_boardbtnbox'>
            
            	<div class="suit_search">
				    <select name="searchType" class="select_suitSearch">
				        <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>전체</option>
				        <option value="m"<c:out value="${scri.searchType eq 'm' ? 'selected' : ''}"/>>작성자</option>
				        <option value="r"<c:out value="${scri.searchType eq 'r' ? 'selected' : ''}"/>>대여일</option>
				    </select>
				    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
            		<!-- <button type='button' id="suit_searchBtn" class='boardbtn searchbtn'><i class="bi bi-search"></i></button> -->
            		<button type='button' id="suit_searchBtn" class='boardbtn searchbtn'>검색</button>
				</div>
				
				<sec:authorize access="isAuthenticated()">
            		<button type='button' onclick="location.href='${contextPath}/suitForm.html'" class='boardbtn register'>신청</button>
            	</sec:authorize>
            	
            </div>
            
            
            <div id='suit_pagebtn'>
           		<ul>
				    <c:if test="${pageMaker.prev}">
				   		<li id="suit_page"><button type='button' onclick="location.href='listSuitAll.do${pageMaker.makeSearch(pageMaker.startPage - 1)}'"><i class="bi bi-chevron-left"></i></button></li>
				    </c:if> 
				
				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				      	<li id="suit_page"><button type='button' onclick="location.href='listSuitAll.do${pageMaker.makeSearch(idx)}'">${idx}</button></li>
				    </c:forEach>
				
				    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				      	<li id="suit_page"><button type='button' onclick="location.href='listSuitAll.do${pageMaker.makeSearch(pageMaker.endPage + 1)}'"><i class="bi bi-chevron-right"></i></button></li>
				    </c:if> 
				</ul>
                <!-- <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-double-left"></i></button> -->
                <!-- <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-double-right"></i></button> -->
            </div>

        </div>


    </div>

</form>


</body>
</html>