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
<link href="${contextPath}/resources/css/mrWrite.css" rel="stylesheet"/>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>


<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
function backToList(obj){
    obj.action="${contextPath}/mentalreview/listArticles.do";
    obj.submit();
  }
  
  
  

</script>
</head>
<body>
<div id='y-boardrap'>
        <div id='y-boardtop'>
            <h2 class='y-h2'>이용후기<br></h2><br>
            <p class='y-p'>이용후기는 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적 목적이나 성향, 동일인이라고 인정되는 자가 동일 <br>또는 유사 내용을 반복한 게시글 등은 관리자에 의해
                통보없이 삭제될 수 있습니다. <br>또한, 홈페이지를 통하여 불법유해 정보를 게시하거나 배포하면 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제74조에 의거<br> 1년이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.</p>
            <br>
            <a href='#'><i class="y-bi bi-house-door"></i>Home </a> > <a href='#'> 청년마음건강 </a> > <a href='${contextPath}/mentalreview/listArticles.do'>이용후기</a>
        </div>
        
        
        <div id='y-writetitle'>
                <h3>마음상담 이용후기</h3>
        </div><br>
        <form name="articleForm" method="post"  action="${contextPath}/mentalreview/addArticle.do"   enctype="multipart/form-data"  accept-charset="utf-8">
        <div id='y-write'>
				<div id='y-writetop'>
			
                    
                   
                <div class='y-writetop-title'>
                    <div class="y-writetop-title-ti">제목</div>
                    <div class='y-writetop-title-input'> <input name="title" type="text"></div>
                    <div class="y-writetop-title-btn">
                      
                    </div>
                </div>
            </div>
            
       
            
            <div id='y-writemiddle'>
                <textarea name="mr_context" id="ir1"></textarea>
            </div>



         
                
                <div id ='y-write-buttonrap'>
                    <div class="y-write-button">
                        <button type="submit"><i class="bi bi-check-lg"></i>작성완료</button>
                        <button type="submit" onclick="backToList(this.form)">취소</button>
                    </div>
                </div>
            </div>
            </form>
        </div>


</body>
</html>