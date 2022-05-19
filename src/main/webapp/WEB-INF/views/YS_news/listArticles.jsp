<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articlesList" value="${articlesMap.articlesList}" />
<c:set var="section" value="${articlesMap.section}" />
<c:set var="pageNum" value="${articlesMap.pageNum}" />
<c:set var="totArticles" value="${articlesMap.totArticles}" />

<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/YS_news/listArticles.css"
	rel="stylesheet" />
<link href="${contextPath}/resources/css/common/font.css"
	rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<div id='boardrap'>
		<div id='boardtop'>
			<h2>
				청춘지원소식<br>
			</h2>
			<br><br>
			<a href='#'><i class="bi bi-house-door"></i>Home</a> > <a href='#'> 청춘지원 </a> > <a href='#'>청춘지원소식</a>
		</div>
		<div id='board'>
			<button type='button' class = 'boardtopbutton a1' onclick='location.href=href="${contextPath}/YS_board/listArticles.do"'>전체</button>
            <button type='button' class = 'boardtopbutton' onclick='location.href="${contextPath}/YS_news/listArticles.do"'>청춘소식</button>
            <button type='button' class = 'boardtopbutton' onclick='location.href=href="${contextPath}/YS_repository/listArticles.do"'>자료실</button>
			<div id='thumbnail-rap'>
			<c:choose>
				<c:when test="${empty articlesList}">
					<tr height="10">
						<td width="1000" colspan="4">
							<p align="center">
								<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
							</p>
						</td>
					</tr>
				</c:when>


				<c:when test="${not empty articlesList }">
					<div id='thumbnail-rap'>
					<c:forEach var="article" items="${articlesList }" varStatus="articleNum">
							<span class="thumbnail">
								<div class='thumbnail-imgbox'>
								<!--  <a href='#'><img class="form-img"
									src="C:\YS\YS_board\article_file+${article.brd_no}"></a>-->
								</div>
								<div class='thumbnail-namebox'>
									<div hidden="${article.brd_no}"></div>
									<div class='thumbnail-title'>
									<a href='${contextPath}/YS_board/viewArticle.do?brd_no=${article.brd_no}'>
									${article.title}</a></div>
									
									<span class='thumbnail-manager'><a>${article.member_id}</a></span>
									<span class='thumbnail-comment'><i class="bi bi-eye-fill"></i><a>${article.hits}</a></span>
								</div>
							</span>
					</c:forEach>
					</div>
				</c:when>
			</c:choose>
		</div>
	</div>
		<!-- <div id='thumbnail-rap'>
                <span class="thumbnail">
                    <div class='thumbnail-imgbox'>
                        <a href='#'><img class="form-img" src="${contextPath}/resources/image/logo.png"></a>
                    </div>
                    <div class='thumbnail-namebox'>
                        <div class='thumbnail-title'><a href='#'>AI모의면접기 이용 안내</a></div>
                        <span class='thumbnail-manager'>정장대여관리자</span>
                        <span class='thumbnail-comment'><i class="bi bi-chat"></i>5</span>
                    </div>
                </span>
               </div> -->

	<div id='boardfooter'>

		<div id='boardbtnbox'>
			<button type='button' onclick="location.href='${contextPath}/YS_news/listArticles.do'" class='boardbtn'>
				<i class="bi bi-justify"></i>목록
			</button>
			<button type='button' onclick="location.href='#'" class='boardbtn searchbtn'>
				<i class="bi bi-search"></i>
			</button>
		</div>
		<div id='pagebtn'>
			<button type='button' onclick="location.href='#'">
				<i class="bi bi-chevron-double-left"></i>
			</button>
			<button type='button' onclick="location.href='#'">
				<i class="bi bi-chevron-left"></i>
			</button>

		<c:if test="${not empty totArticles}">
			<c:choose>
				<c:when test="${totArticles >100 }">
					<c:forEach var="page" begin="1" end="12" step="1">
					(1-1) * 12 + 1 => 1
						<c:if test="${section >1 && page==1 }">
							<button type="button" onclick='location.href="${contextPath }/YS_news/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }"'>
								&nbsp; pre
							</button>
						</c:if>
							<button type="button" onclick='location.href=href="${contextPath }/YS_news/listArticles.do?section=${section}&pageNum=${page}"'>
								${(section-1)*10 +page }
							</button>
						<c:if test="${page ==10 }">
							<button type="button" onclick='location.href=href="${contextPath }/YS_news/listArticles.do?section=${section+1}&pageNum=${section*10+1}"'>
								&nbsp; next
							</button>
						</c:if>
					</c:forEach>
				</c:when>

				<c:when test="${totArticles ==100 }">
					<c:forEach var="page" begin="1" end="12" step="1">
						<button type="button" onclick='location.href="#"'>
							${page }
						</button>
					</c:forEach>
				</c:when>

				<c:when test="${totArticles< 100 }">
					<c:forEach var="page" begin="1" end="${totArticles/12 +1}" step="1">
						<c:choose>
							<c:when test="${page==pageNum }">
								<button type="button" onclick='location.href="${contextPath }/YS_news/listArticles.do?section=${section}&pageNum=${page}"'>
									${page }
								</button>
							</c:when>
						<c:otherwise>
							<button type="button" onclick='location.href="${contextPath }/YS_news/listArticles.do?section=${section}&pageNum=${page}"'>
									${page }
							</button>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:when>
			</c:choose>
		</c:if>

			<button type='button' onclick="location.href='#'">
				<i class="bi bi-chevron-right"></i>
			</button>
			<button type='button' onclick="location.href='#'">
				<i class="bi bi-chevron-double-right"></i>
			</button>
			</div>
		</div>
	</div>
</body>
</html>