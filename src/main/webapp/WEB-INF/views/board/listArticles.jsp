<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="articlesList"  value="${articlesMap.articlesList}"  />
<c:set var="section"  value="${articlesMap.section}"  />
<c:set var="pageNum"  value="${articlesMap.pageNum}"  />
<c:set var="totArticles"  value="${articlesMap.totArticles}"/>

<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/listArticles.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
</head>
<body>
  <div id='boardrap'>
        <div id='boardtop'>
            <h2>청춘지원소식<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘지원 </a> > <a href='#'>청춘지원소식</a>
        </div>
        <div id='board'>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton'>전체</button>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton'>청춘소식</button>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton a3'>자료실</button>
            <table>
                <thead>
                    <tr>
                        <th id=th-1>번호</th>
                        <th id=th-2>분류</th>
                        <th id=th-3>제목</th>
                        <th id=th-4>날짜</th>
                        <th id=th-5>조회</th>
                    </tr>
                </thead>
                <tbody>
                   <c:choose>
                      <c:when test="${empty articlesList}" >
                        <tr  height="10">
                          <td colspan="4">
                            <p align="center">
                                <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
                            </p>
                          </td>  
                        </tr>
                      </c:when>
                      
                      
                      <c:when test="${not empty articlesList }" >
                          <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
                            <tr align="center">
                                <td>${articleNum.count}</td>
                                <td class = 'text-color'><a href = '#'>${article.cc }</a></td>
                                <td class='text-left'>
                                    <a href='${contextPath}/board/viewArticle.do?brd_no=${article.brd_no}'>${article.title}</a>
                                </td>
                                <td>${article.w_date}</td>
                                <td>${article.hits}</td>
                          </c:forEach>
                      </c:when>
                    </c:choose>
                </tbody>
            </table>
            
            
            
        </div>
        <div id='boardfooter'>

            <div id = 'boardbtnbox'>
            <button type='button' onclick="location.href='#'" class='boardbtn'><i class="bi bi-justify"></i>목록</button>
            <button type='button' onclick="location.href='#'" class='boardbtn searchbtn'><i class="bi bi-search"></i></button>
            </div>
            
            
            
            

        <div class="pagebtn">
            <c:if test="${not empty totArticles}" >
                <c:choose>
                    <c:when test="${totArticles >100 }">
                        <c:forEach   var="page" begin="1" end="10" step="1" >
                            <c:if test="${section >1 && page==1 }">
                               <button type="button"><a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; pre </a></button>
                            </c:if>
                               <button type="button"><a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a></button>
	                        <c:if test="${page ==10 }">
                                <button type="button"><a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a></button>
                            </c:if>
                        </c:forEach>
                    </c:when>
                    
                    <c:when test="${totArticles ==100 }" >
                        <c:forEach   var="page" begin="1" end="10" step="1" >
                            <button type="button"><a class="no-uline"  href="#">${page } </a></button>
                        </c:forEach>
                    </c:when>
                    
                    <c:when test="${totArticles< 100 }" >
                        <c:forEach   var="page" begin="1" end="${totArticles/10 +1}" step="1" >
                             <c:choose>
	                           <c:when test="${page==pageNum }">
                               <button type="button"><a class="sel-page"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a></button>
	                          </c:when>
	                          <c:otherwise>
                                <button type="button"><a class="no-uline"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a></button>
	                          </c:otherwise>
	                        </c:choose>
                        </c:forEach>
                    </c:when>
                </c:choose>
            </c:if>
        </div>  
      </div>
    </div>
</body>
</html>