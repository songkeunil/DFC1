<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articlesList}" />


<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/YS_board/mNewsListArticles.css"
	rel="stylesheet" />
<link href="${contextPath}/resources/css/common/font.css"
	rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
<br>
			<div id='thumbnail-rap'>
				<c:choose>
					<c:when test="${empty articlesList}">
						<tr width="1000px" height="10" align="center">
							<td colspan="4">
								<p align="center">
									<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
								</p>
							</td>
						</tr>
					</c:when>


					<c:when test="${not empty articlesList }">
						<div id='thumbnail-rap'>
							<c:forEach var="article" items="${articlesList }" end="4"
								varStatus="articleNum" >
								<span class="thumbnail">
									<div class='thumbnail-imgbox'>
										<a
											href='${contextPath}/YS_board/viewArticle.do?brd_no=${article.brd_no}'>
											<img class="form-img"
											src="${contextPath}/thumbnails.do?brd_no=${article.brd_no}&fileName=thumb.png" style="width: 230px; height: 230px;">
										</a>
									</div>
									<div class='thumbnail-namebox' style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
										<div hidden="${article.brd_no}"></div>
										<div class='thumbnail-title'>
											<a
												href='${contextPath}/YS_board/viewArticle.do?brd_no=${article.brd_no}'>
												${article.title}</a>
										</div>
										<span class='thumbnail-manager'><a>${article.member_id}</a></span>
										<span class='thumbnail-comment'><i
											class="bi bi-eye-fill"></i><a>${article.hits}</a></span>
									</div>
								</span>
							</c:forEach>
						</div>
					</c:when>
				</c:choose>
			</div>
</body>
</html>