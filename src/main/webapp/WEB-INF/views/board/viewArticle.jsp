<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="article"  value="${articleMap.article}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a>brd_no = ${article.brd_no}</a><br>
<a>title = ${article.title}</a><br>
<a>young_context = ${article.young_context}</a><br>
<a>cc = ${article.cc}</a><br>
<a>w_date = ${article.w_date}</a><br>
<a>hits = ${article.hits}</a><br>
<a>publicopen = ${article.publicopen}</a><br>
<a>member_id = ${article.member_id}</a>

<br><br>
<input type=button value="수정하기" onClick="fn_enable(this.form)">
<input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.brd_no})">
</body>
</html>