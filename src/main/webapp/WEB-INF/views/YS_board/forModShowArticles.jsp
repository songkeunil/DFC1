<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="article" value="${articleMap.article}"></c:set>
<c:set var="articleFile" value="${articleMap.articleFileList}"></c:set>
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/YS_board/articleForm.css"
	rel="stylesheet" />
<link href="${contextPath}/resources/css/common/font.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>글 수정하기</title>


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function backToList(obj) {
		obj.action = "${contextPath}/YS_board/listArticles.do";
		obj.submit();
	}
	
	 var fileCount = ${fn:length(articleFile)};
	 var cnt = ${fn:length(articleFile)}+1;
	 function fn_addFile(){
		 $("#d_file").append("<tr>"+"<td>"+"<input type='file' class='addMore' name='articleFileName"+cnt+
				 "' multiple='multiple' class='y-writebottom-file-insert-input'/>" +
				 "</td>"+"</tr>");
		 cnt++;
		 fileCount++;
		 $("#added_file_num").val(fileCount);
	 }
	 	
	
 	$("#addMoreBtn").on("click", function () {
		uploadFile();
	}); 
	
 function uploadFile() {
		var formData = new FormData(); 
		var fileInput = $('.addMore');
		// fileInput 개수를 구한다.
		for (var i = 0; i < fileInput.length; i++) {
			if (fileInput[i].files.length > 0) {
				for (var j = 0; j < fileInput[i].files.length; j++) {
					console.log(" fileInput[i].addMore[j] :::"+ fileInput[i].files[j]);
					
					// formData에 'file'이라는 키값으로 fileInput 값을 append 시킨다.  
					formData.append('file', $('.addMore')[i].files[j]);
					formData.append('brd_no',${article.brd_no});
				}
			}
		}
	
	   $.ajax({
	        url : 'http://localhost:8090/project/YS_board/addNewFileOnMod.do',
	        type : 'POST',
	        data : formData,
	        contentType : false,
	        processData : false,
	        async : false,
	        enctype : 'multipart/form-data',
	        success: function(data) {
	            if (result.SUCCESS == true) {
	             alert("성공");
	            } else {
	             alert("실패");
	             }
	          }
	    });
	}
</script>
</head>
<body>
	<div id='y-boardrap'>
		<div id='y-boardtop'>
			<h2 class='y-h2'>
				청춘지원소식<br>
			</h2>
			<br>
			<p class='y-p'>
				자유게시판은 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적
				목적이나 성향, 동일인이라고 인정되는 자가 동일 <br>또는 유사 내용을 반복한 게시글 등은 관리자에 의해
				통보없이 삭제될 수 있습니다. <br>또한, 홈페이지를 통하여 불법유해 정보를 게시하거나 배포하면 정보통신망
				이용촉진 및 정보보호 등에 관한 법률 제74조에 의거<br> 1년이하의 징역 또는 1천만원 이하의 벌금에 처해질
				수 있습니다.
			</p>
			<br> <a href='#'><i class="y-bi bi-house-door"></i>Home </a> > <a
				href='#'> 청춘지원 </a> > <a href='#'>청춘지원소식</a>
		</div>


		<div id='y-writetitle'>
			<h3>청춘지원소식 글 수정</h3>
		</div>

		<form name="articleForm" method="post"
			action="${contextPath}/YS_board/modArticle.do"
			enctype="multipart/form-data" accept-charset="utf-8">
			<div id='y-write'>


				<div id='y-writetop'>
					<div class='y-writetop-option'>
						<div class="y-writetop-option-name">분류</div>
						<div class="y-writetop-option-box">
							<input type="radio" name="cc" value="청춘소식">청춘소식
							<input type="radio" name="cc" value="자료실">자료실
						</div>
					</div>


					<div class='y-writetop-title'>
						<div class="y-writetop-title-ti">제목</div>
						<div class='y-writetop-title-input'>
							<input name="brd_no" type="hidden" value="${article.brd_no }">
							<input name="title" type="text" value="${article.title }">
						</div>
						<div class="y-writetop-title-btn">
							<button type='button' onclick="location.href='#'">안내</button>
							<button type='button' onclick="location.href='#'">지도</button>
							<button type='button' onclick="location.href='#'">저장</button>
						</div>
					</div>
				</div>


				<div id='y-writemiddle'>
					<textarea name="support_context" id="ir1">${article.support_context}</textarea>
				</div>



				<div id='y-writebottom'>
					<div class='y-writebottom-link'>
						<div class="y-writebottom-link-name">링크 #1</div>
						<div class='y-writebottom-link-input'>
							<input type="text">
						</div>
					</div>

					<div class='y-writebottom-link'>
						<div class="y-writebottom-link-name">링크 #2</div>
						<div class='y-writebottom-link-input'>
							<input type="text">
						</div>
					</div>
					<c:choose>
						<c:when test="${not empty articleFile && articleFile!='null' }">
							<br>
							<c:forEach var="item" items="${articleFile}" varStatus="status">
								<tr id="${status.count}">
								<c:if test="${status.count eq 1}"><td>썸네일</td></c:if>
								<c:if test="${status.count ne 1}"><td>첨부파일 </td></c:if>
									<td>
										<input type="hidden" name="articleFileNO" value="${item.articleFileNO}" /> 
										<input type="hidden" name="oldFileName" value="${item.articleFileName}" />
										${item.articleFileName}
										<input type="file" value="articleFileName${status.count}" name="OriginalFileName${status.count}">
									</td>
								</tr>
								<br>
								<c:if test="${status.last eq true }">
									<c:set var="fil_index" value="${status.count}" />
									<input type="hidden" name="pre_file_num" value="${status.count}" />
									<!-- 기존의 이미지수 -->
									<input type="hidden" id="added_file_num" name="added_file_num"
										value="${status.count}"/>
									<!--   수정시 새로 추가된 이미지 수  -->
								</c:if>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:set var="fil_index" value="${0}" />
							<input type="hidden" name="pre_file_num" value="${0}" />
							<!-- 기존의 이미지수 -->
							<input type="hidden" id="added_file_num" name="added_file_num"
								value="${0}" />
							<!--   수정시 새로 추가된 이미지 수  -->
						</c:otherwise>				  
					</c:choose>
					
					  <input type="button" id="makeAddButton" value="파일 추가" onClick="fn_addFile()"/>
					<!--   <button id="addMoreBtn">업로드</button> -->
					  <div id="d_file"></div>
					  
					  
					<div id='y-write-buttonrap'>
						<div class="y-write-button">
							<button type="submit">
								<i class="bi bi-check-lg"></i>작성완료
							</button>
							<button type="submit" onclick="backToList(this.form)">취소</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>