<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<link href="${path}/resources/css/board.css" rel="stylesheet"/>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
<div id='y-boardrap'>
        <div id='y-boardtop'>
            <h2 class='y-h2'>회원관리<br></h2><br>
            <p class='y-p'>자유게시판은 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적 목적이나 성향, 동일인이라고 인정되는 자가 동일 <br>또는 유사 내용을 반복한 게시글 등은 관리자에 의해
            <p class='y-p'>자유게신판은 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적 목적이나 성향, 동일인이라고 인정되는 자가 동일 <br>또는 유사 내용을 반복한 게시글 등은 관리자에 의해
                통보없이 삭제될 수 있습니다. <br>또한, 홈페이지를 통하여 불법유해 정보를 게시하거나 배포하면 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제74조에 의거<br> 1년이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.</p>
            <br>
            <a href='#'><i class="y-bi bi-house-door"></i>Home </a> > <a href='#'> 청년의목소리 </a> > <a href='#'>자유게시판</a>
        </div>
        <div id='y-board'>
            <table class="y-table">
                <thead>
                    <tr class='y-tr'>
                        <th id=y-th-1>아이디</th>
                        <th id=y-th-2>이름</th>
                        <th id=y-th-3>최종접속시간</th>
                        <th id=y-th-4>이메일</th>
                        <th id=y-th-5>휴대전화번호</th>
                    </tr>
                </thead>
                <tbody>
                <c:choose>
  <c:when test="${empty listMembers}" >
    <tr  height="10">
      <td colspan="4">
         <p align="center">
            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
 <c:when test="${!empty listMembers}" >
  <c:forEach var="admin" items="${listMembers}" varStatus="articleNum">             
    
     <tr class='y-tr'>
 					    <td>${admin.member_id}</td>
                    	<td>${admin.member_name}</td>                
                    	<td>${admin.member_last_log}</td>                
                    	<td>${admin.member_email}</td>                
                    	<td>${admin.member_phoneno}</td> 
	</tr>
    </c:forEach>
     </c:when>
    </c:choose>
</table>

<!-- <div class="cls2">
 --><%--  <c:if test="${totArticles != null }" > --%>
<%--       <c:choose>
        <c:when test="${totArticles >100 }">  <!-- 글 개수가 100 초과인경우 -->
	      <c:forEach   var="page" begin="1" end="10" step="1" >
	         <c:if test="${section >1 && page==1 }">
	          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; pre </a>
	         </c:if>
	          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
	         <c:if test="${page ==10 }">
	          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a>
	         </c:if>
	      </c:forEach> --%>
  <%--       </c:when>
	          <c:when test="${totArticles ==100 }" >  <!--등록된 글 개수가 100개인경우  -->
	      <c:forEach   var="page" begin="1" end="10" step="1" >
	        <a class="no-uline"  href="#">${page } </a>
	      </c:forEach>
        </c:when>
        
        <c:when test="${totArticles< 100 }" >   <!--등록된 글 개수가 100개 미만인 경우  -->
	      <c:forEach   var="page" begin="1" end="${totArticles/10 +1}" step="1" >
	         <c:choose>
	           <c:when test="${page==pageNum }">
	            <a class="sel-page"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
	          </c:when>
	          <c:otherwise>
	            <a class="no-uline"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
	          </c:otherwise>
	        </c:choose>
	      </c:forEach>
        </c:when>
      </c:choose>
    </c:if> --%>
<!-- </div>
 -->

                </tbody>
            </table>
            
        </div>
        <div id='y-boardfooter'>
           <div id = 'y-boardbtnbox'>
            <button type='button' onclick="location.href='#'" class='y-boardbtn'><i class="y-bi bi-pencil"></i>&nbsp글쓰기</button>
            <button type='button' onclick="location.href='#'" class='y-boardbtn searchbtn'><i class="y-bi bi-search"></i></button>
            </div>
            <div id='y-pagebtn'>
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-double-left"></i></button>
                
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-left"></i></button>
                
                <button type='button' onclick="location.href='#'">1</button>
                <button type='button' onclick="location.href='#'">2</button>
                <button type='button' onclick="location.href='#'">3</button>
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-right"></i></button>
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-double-right"></i></button>
            </div>

        </div>


    </div>

</body>
</html>