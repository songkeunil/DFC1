<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="article" value="${articleMap.article}" />
<c:set var="articleFileList" value="${articleMap.articleFileList}" />
<c:set var="heart" value="${heart}" />
<%-- <c:set var="heart" value="${articleMap.heart}" /> --%>

<c:set var="replyList"  value="${replyMap.replyList}"  />
<c:set var="section"  value="${replyMap.section}"  />
<c:set var="pageNum"  value="${replyMap.pageNum}"  />
<c:set var="totReplies"  value="${replyMap.totReplies}"/>
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/YS_board/viewArticle.css"
	rel="stylesheet" />
<link href="${contextPath}/resources/css/common/font.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>${article.brd_no}번 글 상세창</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<c:choose>
	<c:when test="${removeCompleted eq true }">
		<script type="text/javascript">
   $(window).load(function(){
	   fn_enable()
	}); 
   </script>
	</c:when>
</c:choose>

<style>
#tr_btn_modify {
	display: none;
}

.tr_modEnable {
	visibility: hidden;
}
</style>

<script type="text/javascript">
     function backToList(obj){
	    obj.action="${contextPath}/YS_board/listArticles.do";
	    obj.submit();
     }
	
	function fn_remove_article(url,brd_no){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var brd_noInput = document.createElement("input");
	     brd_noInput.setAttribute("type","hidden");
	     brd_noInput.setAttribute("name","brd_no");
	     brd_noInput.setAttribute("value", brd_no);
		 
	     form.appendChild(brd_noInput);
	     document.body.appendChild(form);
	     form.submit();
	 }
	
$(document).ready(function () {
	var brd_no = '${article.brd_no}';
	$(function(){
    	$("#y-detail-comment").load('${contextPath}/YS_board/replyListArticles.do',{brd_no});
	});

	
	
	var heartval = ${heart};
	 
	  if(heartval > 0) {
          console.log(heartval);
          $("#heart").prop("class", "bi-hand-thumbs-up-fill");
          $(".y-detail-like").prop('name',heartval)
      }
      else{
          console.log(heartval);
          $("#heart").prop("class", "bi-hand-thumbs-up");
          $(".y-detail-like").prop('name',heartval)
      }
	
	$(".y-detail-like").on("click", function () {
		var that = $(".y-detail-like");
		var sendData = {'brd_no' : '${article.brd_no}','heart' : that.prop('name')};
		console.log(sendData);
			$.ajax({
              url :'${contextPath}/YS_board/activeLike.do',
              type :'POST',
              data : sendData,
              success : function(data){
                  that.prop('name',data);
                  if(data==1) {
                	   $("#heart").prop("class", "bi-hand-thumbs-up-fill");
                  }
                  else{
                	  $("#heart").prop("class", "bi-hand-thumbs-up");
                  }
              }
          });
	});
	
});
 </script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
	<div id='y-boardrap'>
		<div id='y-boardtop'>
			<h2 class='y-h2'>
				청춘지원소식<br>
			</h2>
			<br>
			<p class='y-p'>
				청춘지원소식 게시판은 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적
				목적이나 성향, 동일인이라고 인정되는 자가 동일 또는 유사 내용을 반복한 게시글 등은 관리자에 의해
				통보없이 삭제될 수 있습니다. <br>또한, 홈페이지를 통하여 불법유해 정보를 게시하거나 배포하면 정보통신망
				이용촉진 및 정보보호 등에 관한 법률 제74조에 의거<br> 1년이하의 징역 또는 1천만원 이하의 벌금에 처해질
				수 있습니다.
			</p>
			<br> <a><i class="y-bi bi-house-door"></i>Home</a> > <a> 청춘지원 </a> > <a>청춘지원소식</a>
		</div>
		<div id='y-detail-rap'>
			<div id='y-detail-title'>
				<table>
					<tr>
						<th class='y-detail-title-th1'>${article.title}</th>
						<th class='y-detail-title-th2'><i class="bi bi-eye-fill"></i>
							${article.hits}</th>
						<th class='y-detail-title-th3'></th>
						<th class='y-detail-title-th4'>${article.w_date}</th>
					</tr>
				</table>
			</div>
			<pre style="white-space: pre-line;">
			<div id='y-detail-mainIndex'>${article.support_context}</div>
			</pre>
			<div id= detail-picture>
				<c:forEach var="item" items="${articleFileList}" varStatus="status">
					<c:if test="${item.articleFileName ne 'thumb.png'}">
						<c:if test="${item.articleFileName.contains('jpg') or item.articleFileName.contains('png')}">
						<img class="form-img"
						src="${contextPath}/thumbnails.do?brd_no=${article.brd_no}
						&fileName=${item.articleFileName}" style="width: 450px; height: 450px;">
						</c:if>
					</c:if>
				</c:forEach>
			</div>
			<div id='y-detail-like-rap'>
				<button class='y-detail-like'>
					<!--  <i class="bi bi-hand-thumbs-up">${article.ylike}</i>  -->
					<a id="heart" /><a class="heart" />${article.ylike}
				</button>
			</div>

			<form name="downloadForm" method="post"
				action="${contextPath }/YS_board/download.do?brd_no=${article.brd_no}">
				<c:if test="${not empty articleFileList && articleFileList !='null'}">
					내용의 이미지는 JPG와 PNG만을 사용할 수 있습니다.<br><br>
					<c:forEach var="item" items="${articleFileList}" varStatus="status">
							<tr>
							<c:if test="${status.count eq 1}"><td>썸네일</td></c:if>
							<c:if test="${status.count ne 1}"><td>첨부파일</td></c:if>
								<td><input type="submit" name="articleFileName"
									value="${item.articleFileName }"  style="border: none; outline: none; box-shadow: none;"/></td>
								<br>
								<br>
							</tr>
					</c:forEach>
				</c:if>
			</form>
			<br> <br>





 
			<div id=y-detail-comment>
<%-- 				<div class='y-detail-comment-top'>
					<h3>Comment</h3>
				</div>
				 <c:choose>
                      <c:when test="${empty replyList}" >
                       <div class='y-detail-comment-middle'>
						<tr width="1000px" height="10" align="center">
                          <td colspan="4">
                            <p align="center">
								<b><span style="font-size:9pt;">등록된 댓글이 없습니다.</span></b>
							</p>
						  </td>
						 </tr>
						</div>
                      </c:when>
                      
                       <c:when test="${not empty replyList }" >
                       		<c:forEach  var="reply" items="${replyList }" varStatus="replyNum" >
                       			<div class='y-detail-comment-middle'>
									<div class="y-detail-comment-middle-profile">
										<i class="bi bi-person-fill"></i>
									</div>
									<div>
										<div class="y-detail-comment-middle-info">
											<div class="y-detail-comment-middle-info-name">${reply.member_id}</div>
											<div class="y-detail-comment-middle-info-date">${reply.reply_time}</div>
										</div>

										<div class="y-detail-comment-middle-info-main">${reply.reply_text}</div>
										<div class="reply">
											<a href="#">답글</a>
										</div>
									</div>
								</div>
                       		</c:forEach>
                       </c:when>
                 </c:choose> --%>
			</div>
			<form name="replyForm" method="post"
				action="${contextPath }/YS_board/addNewReply.do?brd_no=${article.brd_no}">
			<div class="y-detail-comment-write-rap">
				<input type="text" name="reply" class="y-detail-comment-write">
				<button type="submit">
					<i class="bi bi-chat"></i> 등록
				</button>
			</div>
			</form>
			<div id='y-detail-bottom-rap'>
				<div class='y-detail-bottom-left'>
					<button type='button' onclick="location.href='http://localhost:8090/project/YS_board/viewArticle.do?brd_no=${article.brd_no-1}'">
						<i class="y-bi bi-chevron-left"></i> 이전
					</button>
					<button type='button' onclick="location.href='http://localhost:8090/project/YS_board/viewArticle.do?brd_no=${article.brd_no+1}'">
						다음<i class="y-bi bi-chevron-right"></i>
					</button>
					<button type="button"
						onclick="location.href='${contextPath}/YS_board/forModShowArticles.do?brd_no=${article.brd_no}'" style="float: right;">
						수정하기</button>
				</div>
				
				<div class='y-detail-bottom-right'>
					<button type="button"
					onclick="fn_remove_article('${contextPath}/YS_board/removeArticle.do', ${article.brd_no})" style="float: left;">
						삭제하기</button>	
								
					<button type='button' class='boardbtn' onclick="location.href='${contextPath }/YS_board/listArticles.do'">
            			<i class="bi bi-justify"></i>목록
            		</button>
				</div>
			</div>
		</div>
</body>
</html>