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
<title>게시판 리스트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/YS_board/listArticles.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/common/font.css" rel="stylesheet"/>
</head>
<body>
 <div id='boardrap'>
        <div id='board'>
            <table>
                <thead>
                    <tr>
                        <th id=th-1>번호</th>
                        <th id=th-2>제목</th>
                        <th id=th-3>날짜</th>
                    </tr>
                </thead>
                <tbody>
                   <c:choose>
                      <c:when test="${empty articlesList}" >
                       <tr id="emptyList">
                          <td colspan="4">
                            <p align="center">
                                <b><span style="font-size:11pt;">등록된 글이 없습니다.</span></b>
                            </p>
                          </td>  
                        </tr>
                      </c:when>
                      
                      
                      <c:when test="${not empty articlesList }" >
                          <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
                             <tr align="center">
                             	<td>${article.recNum2}</td>
                                <td class='text-left'>
                                    <a href='${contextPath}/YS_board/viewArticle.do?brd_no=${article.brd_no}'>${article.title}</a>
                                </td>
                                <td>${article.w_date}</td>
                            </tr>
                          </c:forEach>
                      </c:when>
                    </c:choose>
                </tbody>
            </table>           
        </div>
      </div>
</body>
</html>