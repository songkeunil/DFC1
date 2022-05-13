<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->
    <script>
        /*상단 펑션*/
        $(function() {
            $('#prepend').click(function() {

                $('#box').prepend($('#box').find('img:last'));

            });
            $('#append').click(function() {
                $('#box').append($('#box img:first'));
            })
        });
        /*중단 펑션*/
        $(function() {
            $('.tabBox .ctn1').addClass('ctnOn');
            $('.tabBox h3 a').click(function(e) {
                e.preventDefault();
                $('.ctn').removeClass('ctnOn');
                $(this).parent().parent().addClass('ctnOn');
            });
        });

    </script>
    <style>
    .cls1 {text-decoration:none;}
   .cls2{text-align:center; font-size:30px;}
    
    
    
    
        * {
            margin: 0;
            padding: 0;
        }



        .B_top {

            width: 100%;
            height: 450px;
/*            background: pink;*/

        }

        .b_top_container {
            margin: 0 auto;
            width: 100%;
            height: 400px;
            background-image: url(/djplat/resources/resources/image/3840x1080.jpg);
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;

            /*            overflow: hidden;*/
        }


        .banner_con {
/*            background: blue;*/
            width: 1400px;
            height: 250px;
            top: 75px;
            margin: 0 auto;
            overflow: cover;
        }

        /* 중단 스타일 */

        .B_mid {
/*            background: orange;*/
            width: 100%;
            height: 450px;            
        }

        .B_mid_container {
/*            background: green;*/
            margin: 0 auto;
            width: 1400px;
            height: 400px;
            border-bottom: 2px solid gray;

        }
        
        .b_mid_container_01{
            height: 100%;
            width: 1000px;
/*            background: yellow;*/
            float: left;
        }
        
        .b_mid_container_01_title{
            width: 100%;
            height: 70px;
/*            background: skyblue;*/
        }
        
        .b_mid_container_01_detail{
            width: 100%;
            height: 330px;
/*            background: coral;*/
        }
        .b_mid_container_02{
            height: 100%;
            width: 350px;
/*            background: purple;*/
            float: right;
        }
        
        .b_mid_container_02_title{
/*            background: #ff1744;*/
            width: 100%;
            height: 130px;
            float: left;
        }
        
        .alam{
            width: 170px;
            height: 40px;
/*            background: white;*/
            margin-top: 70px;
            padding-left: 20px;
        }
        .b_mid_container_02_detail{
            width: 100%;
            height: 270px;
/*            background: coral;*/
            float: left;
        }
        

        a[class*="nav"] {

        a[class*="b_nav"] {

            font-size: 25px;
/*            font-weight:500;*/
        }
        
        
        /*  하단 스타일 */

        .B_bot {

            width: 100%;
            height: 450px;
/*            background: aqua;*/
        }

        .B_bot_container {
            margin: 0 auto;
            width: 1400px;
            height: 100%;
/*            background: green;*/
        }

        .b_bot_container_01 {
            width: 100%;
            height: 70px;
/*            background: white;*/
            float: left;
        }
        
        .b_bot_container_01_title{
            width: 1000px;
            height: 100%;
            float: left;
/*            background: gray;*/
        }
        
        .b_bot_container_01_btn{
            width: 400px;
            height: 100%;
/*            background: pink;*/
            float: right;
            
        }
        .b_bot_container_02 {
            width: 100%;
            height: 330px;
/*            background: red;*/
            float: left;
            text-align: center;
        }


        #box {
            margin: 0 auto;
            height: 300px;
            float: left;
            overflow: hidden;
        }

        #box div {

            width: 800px;
            height: 200px;



        }

        img[class*="bot"] {
            width: 320px;
            height: 320px;
            margin: 5px;
        }


        #button {            
            font-size: 30px;
            float: right;
            padding: 10px;
            
            
            
            
            

        }


        span {

    span {

            font-size: 35px;
            font-weight: bold;
            color: blue;
            

        }

        } 

        .b_mid_container_01_title > h2::before{
            content: '';
            display: block;
            width: 250px;
            width: 20px;
            background-color: #ffd5a3;
            position: absolute;
            bottom: 0;
            z-index: -1;
        }
    </style>
</head>

<body>
    <div class="body_wrap">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

        <div class="B_top">
            <div class="b_top_container">
                <div class="banner_con carousel-inner">
                    <!--                    <div class="col">-->
                    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                        <div class="slideImg carousel-inner">
                            <div class="carousel-item active">
                                <img src="/djplat/resources/image/01.jpg" class="main_slide_01 w-100" alt="...">
                            </div>
                            <div class="carousel-item ">
                                <img src="/djplat/resources/image/02.jpg" class="main_slide_02 w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="/djplat/resources/image/04.jpg" class="main_slide_03 w-100" alt="...">
                                
                            </div>
                            
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>

                </div>
            </div>
        </div>
        <!-- 메인 중단-->
        <div class="B_mid">
            <div class="B_mid_container">
               <div class="b_mid_container_01">
               <div class="b_mid_container_01_title">
                  <h2><span>청춘끼리</span>
                        NOTICE</h2>
                   </div>
                   <div class="b_mid_container_01_detail">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                <ul class="b_nav nav-tabs" id="myTab" role="tablist">
                    <li class="b_nav-item" role="presentation">
                        <a class="b_nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
                    </li>
                    <li class="b_nav-item" role="presentation">
                        <a class="b_nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                    </li>
                    <li class="b_nav-item" role="presentation">
                        <a class="b_nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->
                    <script>
	function fn_articleForm(isLogOn,articleForm,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=articleForm;
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/articleForm.do';
	  }
	}
</script>
                    <table align="center" border="1"  width="80%"  >
  <tr height="10" align="center"  bgcolor="lightgreen">
     <td >글번호</td>
     <td >작성자</td>              
     <td >제목</td>
     <td >작성일</td>
  </tr>
<c:choose>
  <c:when test="${articlesList ==null }" >
    <tr  height="10">
      <td colspan="4">
         <p align="center">
            <b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        </p>
      </td>  
    </tr>
  </c:when>
  <c:when test="${articlesList !=null }" >
    <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
     <tr align="center">
	<td width="5%">${articleNum.count}</td>
	<td width="10%">${article.id }</td>
	<td align='left'  width="35%">
	  <span style="padding-right:30px"></span>
	   <c:choose>
	      <c:when test='${article.level > 1 }'>  
	         <c:forEach begin="1" end="${article.level }" step="1">
	              <span style="padding-left:20px"></span>    
	         </c:forEach>
	         <span style="font-size:12px;">[답변]</span>
                   <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
	          </c:when>
	          <c:otherwise>
	            <a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
	          </c:otherwise>
	        </c:choose>
	  </td>
	  <td  width="10%">${article.writeDate}</td> 
	</tr>
    </c:forEach>
     </c:when>
    </c:choose>
</table>
<!-- <a  class="cls1"  href="#"><p class="cls2">글쓰기</p></a> -->
<a  class="cls1"  href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
                                                    '${contextPath}/member/loginForm.do')"><p class="cls2">글쓰기</p></a>
<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx -->
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
                </div>
                <script>
                    $('#myTab a').on('click', function(e) {
                        e.preventDefault()
                        $(this).tab('show')
                    })

                </script>
                </div>
                </div>
                <div class="b_mid_container_02">
                   <div class="b_mid_container_02_title">
                       <h4 class="alam" font-weight="bold">청춘끼리알림</h4>
                    </div>
                    <div class="b_mid_container_02_detail">
                    </div>                    
                </div>
            </div>
        </div>
        <!-- 메인 하단 슬라이드 -->
        <div class="B_bot">
            <div class="B_bot_container">
                <div class="b_bot_container_01">
                   <div class="b_bot_container_01_title">
                    <h2><span>청춘끼리</span>
                        NEWS</h2>
                    </div>
                    <div class="b_bot_container_01_btn">
                    <div id="button">
                        <button id="prepend">
                            <</button>&nbsp;
                            <button id="append">></button>
                    </div>
                        </div>
                </div>
                <div class="b_bot_container_02">
                    <div id="box">
                      
                       
                       
                        <img class="bot_img01" src="/djplat/resources/resources/image/01.jpg"></a>
                        <a href="https://namu.wiki/w/%EC%9C%A0%EB%AF%B8(%EB%A6%AC%EA%B7%B8%20%EC%98%A4%EB%B8%8C%20%EB%A0%88%EC%A0%84%EB%93%9C)"><img class="bot_img02" src="/djplat/resources/resources/image/02.jpg"></a>
                        <a href="https://namu.wiki/w/%EB%B9%84%EC%97%90%EA%B3%A0"><img class="bot_img03" src="/djplat/resources/resources/image/03.jpg"></a>
                    
                        <img class="bot_img04" src="/djplat/resources/resources/image/nuclear.jpg">
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
</body>

</html>
