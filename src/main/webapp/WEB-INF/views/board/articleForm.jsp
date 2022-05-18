<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
	%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
     <c:set var="article" value="${articleMap.articleList }"/>
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/resources/css/articleForm.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>


<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
function backToList(obj){
    obj.action="${contextPath}/board/listArticles.do";
    obj.submit();
  }
</script>
</head>
<body>
<div id='y-boardrap'>
        <div id='y-boardtop'>
            <h2 class='y-h2'>청춘지원소식<br></h2><br>
            <p class='y-p'>자유게시판은 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적 목적이나 성향, 동일인이라고 인정되는 자가 동일 <br>또는 유사 내용을 반복한 게시글 등은 관리자에 의해
                통보없이 삭제될 수 있습니다. <br>또한, 홈페이지를 통하여 불법유해 정보를 게시하거나 배포하면 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제74조에 의거<br> 1년이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.</p>
            <br>
            <a href='#'><i class="y-bi bi-house-door"></i>Home </a> > <a href='#'> 청춘지원 </a> > <a href='#'>청춘지원소식</a>
        </div>
        
        
        <div id='y-writetitle'>
                <h3>청춘지원소식 글쓰기</h3>
        </div>
        
        <form name="articleForm" method="post"  action="${contextPath}/board/addNewArticle.do"   enctype="multipart/form-data"  accept-charset="utf-8">
        <div id='y-write'>
        
        
            <div id='y-writetop'>
                <div class='y-writetop-option'>
                    <div class="y-writetop-option-name">옵션 </div>
                    <div class="y-writetop-option-box"> <input type="checkbox"></div>비밀글
                </div>
                    
                    
                <div class='y-writetop-title'>
                    <div class="y-writetop-title-ti">제목</div>
                    <div class='y-writetop-title-input'> <input name="title" type="text"></div>
                    <div class="y-writetop-title-btn">
                        <button type='button' onclick="location.href='#'">안내</button>
                        <button type='button' onclick="location.href='#'">지도</button>
                        <button type='button' onclick="location.href='#'">저장</button>
                    </div>
                </div>
            </div>
            
            
            <div id='y-writemiddle'>
                <textarea name="support_context" id="ir1"></textarea>
            </div>



            <div id='y-writebottom'>
                <div class='y-writebottom-link'>
                    <div class="y-writebottom-link-name">링크 #1</div>
                    <div class='y-writebottom-link-input'> <input type="text"></div>
                </div>

                <div class='y-writebottom-link'>
                    <div class="y-writebottom-link-name">링크 #2</div>
                    <div class='y-writebottom-link-input'> <input type="text"></div>
                </div>

            
		  		<div class="y-writebottom-file">
                    <div class="y-writebottom-file-name">첨부파일</div>
                    <div class='y-writebottom-file-insert'>
                        <input type='file'  name="articleFileName1" multiple="multiple" class='y-writebottom-file-insert-input'>
                    </div>
                </div>
                
                <div class="y-writebottom-file">
                    <div class="y-writebottom-file-name"></div>
                    <div class='y-writebottom-file-insert'>
                        <input type='file' name="articleFileName2" multiple="multiple" class='y-writebottom-file-insert-input'>
                    </div>
                </div>
                
                <div class="y-writebottom-file">
                    <div class="y-writebottom-file-name"></div>
                    <div class='y-writebottom-file-insert'>
                        <input type='file' name="articleFileName3" multiple="multiple" class='y-writebottom-file-insert-input'>
                    </div>
                </div>	
                
                <div id ='y-write-buttonrap'>
                    <div class="y-write-button">
                        <button type="submit"><i class="bi bi-check-lg"></i>작성완료</button>
                        <button type="submit" onclick="backToList(this.form)">취소</button>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>

</body>
</html>