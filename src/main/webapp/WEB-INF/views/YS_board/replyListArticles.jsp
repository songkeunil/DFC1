<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
/* function fn_addReplyOnReply(){
	 $("#r_Form").append("<tr>"+"<td>"+"<input type='file' class='addMore' name='articleFileName"+cnt+
			 "' multiple='multiple' class='y-writebottom-file-insert-input'/>" +
			 "</td>"+"</tr>");
	 cnt++;
	 fileCount++;
	 $("#added_file_num").val(fileCount);
} */

function fn_remove_Replyarticle(url,reply_no){
	 var form = document.createElement("form");
	 form.setAttribute("method", "post");
	 form.setAttribute("action", url);
    var reply_noInput = document.createElement("input");
    reply_noInput.setAttribute("type","hidden");
    reply_noInput.setAttribute("name","reply_no");
    reply_noInput.setAttribute("value", reply_no);
	 
    form.appendChild(reply_noInput);
    document.body.appendChild(form);
    form.submit();
}

</script>
</head>
<body>
	<div id=y-detail-comment>
		<div class='y-detail-comment-top'>
			<h3>Comment</h3>
		</div>
		<c:choose>
			<c:when test="${empty replyList}">
				<div class='y-detail-comment-middle'>
					<tr width="1000px" height="10" align="center">
						<td colspan="4">
							<p align="center">
								<b><span style="font-size: 9pt;">등록된 댓글이 없습니다.</span></b>
							</p>
						</td>
					</tr>
				</div>
			</c:when>

			<c:when test="${not empty replyList }">
				<c:forEach var="reply" items="${replyList }" varStatus="replyNum">
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
								<button type="button" style="border: none; outline: none; box-shadow: none;" 
								onclick="fn_remove_Replyarticle('${contextPath}/YS_board/removeReplyArticle.do?brd_no=${reply.brd_no }'
								, ${reply.reply_no})">삭제</button>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
		</c:choose>
	</div>
</body>
</html>