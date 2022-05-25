<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
     <sec:authorize access="isAuthenticated()"></sec:authorize>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="articlesList"  value="${articlesMap.articlesList}"  />
<c:set var="section"  value="${articlesMap.section}"  />
<c:set var="pageNum"  value="${articlesMap.pageNum}"  />
<c:set var="totArticles"  value="${articlesMap.totArticles}"/>

<%
  request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/mrlistArticles.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
</head>
<body>
 <div id='boardrap'>
        <div id='boardtop'>
            <h2>이용후기<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청년마음건강 </a> > <a href='${contextPath }/mentalreview/listArticles.do'>이용후기</a>
        </div>
        <div id='board'>
             <table>
                <thead>
                    <tr>
                        <th id=th-1>번호</th>
                        <th id=th-2>작성자</th>
                        <th id=th-3>제목</th>
                        <th id=th-4>날짜</th>
                        <th id=th-5>조회</th>
                        <th id=th-6>추천</th>
                    </tr>
                </thead>
                <tbody>
                   <c:choose>
                      <c:when test="${empty articlesList}" >
                        <tr  height="10">
                          <td width="1000" colspan="4">
                            <p align="center">
                                <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
                            </p>
                          </td>  
                        </tr>
                      </c:when>
                      
                      
                      <c:when test="${not empty articlesList }" >
                          <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
                            <tr align="center">
                               <!--   <td>${articleNum.count}</td>-->
                               <td>${article.two }</td>
                                <td class = 'text-color'><a href = '#'>${article.member_id }</a></td>
                                <td class='text-left'>
                                    <a href='${contextPath}/mentalreview/viewArticle.do?brd_no=${article.brd_no}'>${article.title}</a>
                                </td>
                                <td>${article.w_date}</td>
                                <td>${article.hits}</td>
                                <td>${article.mr_like}</td>
                          </c:forEach>
                      </c:when>
                    </c:choose>
                </tbody>
            </table>
            
            
            
        </div>
        <div id='boardfooter'>

            <div id = 'boardbtnbox'>
            	<form name="articleSearch" action="${contextPath}/mentalreview/searchArticles.do">
            		<input name="searchWord" type="text">
            		<button type="submit" class='boardbtn searchbtn'><i class="bi bi-search"></i></button>
            	</form>
            	<button type='button' class='boardbtn' onclick='location.href="${contextPath }/mentalreview/mrWriteForm.do"'>글 쓰기</button>
            																				 
            </div>
            
          <!--   ----
        <form name="frmSearch" action="${contextPath}/goods/searchGoods.do" >
			<input name="searchWord" class="main_input" type="text"  onKeyUp="keywordSearch()"> 
			<input type="submit" name="search" class="btn1"  value="검 색" >
		</form>
            ---- -->
            
            

        <div class="pagebtn">
        
        	<button type='button' onclick="location.href='#'"><i class="bi bi-chevron-double-left"></i></button>
			<button type='button' onclick="location.href='#'"><i class="bi bi-chevron-left"></i></button>
			
 		<c:if test="${not empty totArticles}">
			<c:choose>
				<c:when test="${totArticles >100 }">
					<c:forEach var="page" begin="1" end="10" step="1">
						<c:if test="${section >1 && page==1 }">
							<button type="button" onclick='location.href="${contextPath }/mentalreview/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }"'>
								&nbsp;pre
							</button>
						</c:if>
							<button type="button" onclick='location.href=href="${contextPath }/mentalreview/listArticles.do?section=${section}&pageNum=${page}"'>
								${(section-1)*10 +page }
							</button>
						<c:if test="${page ==10 }">
							<button type="button" onclick='location.href=href="${contextPath }/mentalreview/listArticles.do?section=${section+1}&pageNum=${section*10+1}"'>
								&nbsp; next
							</button>
						</c:if>
					</c:forEach>
				</c:when>

				<c:when test="${totArticles ==100 }">
					<c:forEach var="page" begin="1" end="10" step="1">
						<button type="button" onclick='location.href="#"'>
							${page}
						</button>
					</c:forEach>
				</c:when>

				<c:when test="${totArticles< 100 }">
					<c:forEach var="page" begin="1" end="${totArticles/10 +1}" step="1">
						<c:choose>
							<c:when test="${page==pageNum }">
								<button type="button" onclick='location.href="${contextPath }/mentalreview/listArticles.do?section=${section}&pageNum=${page}"'>
									${page }
								</button>
							</c:when>
						<c:otherwise>
							<button type="button" onclick='location.href="${contextPath }/mentalreview/listArticles.do?section=${section}&pageNum=${page}"'>
									${page }
							</button>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:when>
			</c:choose>
		</c:if>
            
            <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-right"></i></button>
			<button type='button' onclick="location.href='#'"><i class="bi bi-chevron-double-right"></i></button>
            
        </div>  
      </div>
    </div>
</body>
</html>