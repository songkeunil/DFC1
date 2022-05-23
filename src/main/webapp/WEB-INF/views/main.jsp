<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->

</head>

<style>
#y-main-rap {
	width: 100%;
	height: auto;
	/*    background: red;*/
}

.y-main-top-rap {
	width: 100%;
	height: 500px;
}

.y-main-top-rap-image {
	width: 100%;
	height: 100%;
	background-image: url('${contextPath}/resources/image/background1.png');
	background-position: center;
	background-size: cover;
}

.y-main-top {
	width: 1300px;
	height: 450px;
	/*    background: green;*/
	margin: 0 auto;
	line-height: 50px;
	padding-top: 50px;
	padding-left: 50px;
	padding-right: 50px;
	position: relative;
}

.y-main-top-slide {
	width: 780px;
	height: 400px;
/* 	background: red; */
	/*    margin-left: 300px;*/
	float: left;
	border-radius: 10px;
	cursor: pointer;
}

.y-main-top-menu-rap {
	width: 500px;
	height: 400px;
	/*    background: blue;*/
	float: right;
}

.y-main-top-menu {
	width: 240px;
	height: 90px;
	background: white;
	float: left;
	margin: 5px;
	border-radius: 10px;
	text-align: center;
	line-height: 162px;
}

.y-main-middle-rap {
	width: 1300px;
	height: 400px;
	/*    background: red;*/
	margin: 0 auto;
	margin-top: 50px;
}

.y-main-middle-title {
	width: auto;
	height: 50px;
	/*    background: blue;*/
	margin: 0 auto;
	font-size: 20px;
	border-bottom: 5px solid #18A8F1;
	margin-bottom: 50px;
}

.y-main-middle {
	width: 950px;
	height: 295px;
	/*    background: pink;*/
	float: left;
	border-bottom: 1px solid #D8D8D8;
}

.y-main-middle table {
	width: 950px;
	height: 40px;
	border-collapse: collapse;
	/*    border: 1px solid #D8D8D8;*/
}

.y-main-middle table th {
	width: 128px;
	height: 40px;
	border: 1px solid #D8D8D8;
	font-size: 20px;
	line-height: 50px;
	color: black;
}

.y-main-middle table th:hover {
	background: #18A8F1;
	color: white;
}

.y-main-middle ul {
	width: 930px;
	height: 243px;
	line-height: 48px;
	padding-left: 20px;
}

.y-main-middle ul li {
	/*    background: blue;*/
	width: 950px;
	height: 48px;
}

.y-main-middle ul li a {
	color: #848484;
}

.y-main-middle-alarm-rap {
	width: 300px;
	height: 295px;
	/*    background: green;*/
	float: right;
}

.y-main-middle-alarm-title {
	width: 300px;
	height: 50px;
	/*    background: red;*/
	text-align: center;
	line-height: 50px;
	font-size: 25px;
	border-bottom: 3px solid #18A8F1;
	border-top: 3px solid #18A8F1;
	font-weight: bold;
}

.y-main-middle-alarm {
	width: 260px;
	height: 198px;
	/*    background: red;*/
	border-bottom: 1px solid #D8D8D8;
	padding: 20px;
	color: #848484;
}

.y-main-bottom-rap {
	width: 1300px;
	height: 400px;
	/*    background: red;*/
	margin: 0 auto;
	margin-top: 200px;
	margin-bottom: 200px;
}

.y-main-bottom {
	width: 1300px;
	height: 295px;
	/*    background: pink;*/
	float: left;
	border-bottom: 1px solid #D8D8D8;
}

.y-main-bottom-title {
	width: 1000px;
	height: 40px;
	/*
    background: red;
    padding-left: 10px;
*/
	line-height: 40px;
	font-weight: bold;
	font-size: 17px;
	float: left;
}

.y-main-bottom-btn {
	width: 135px;
	height: 40px;
	/*    background: blue;*/
	font-weight: bold;
	font-size: 17px;
	float: right;
	padding-right: 10px;
}

.y-main-bottom-btn button {
	width: 40px;
	height: 40px;
	background: white;
	font-size: 30px;
	border-radius: 5px;
	border: 2px solid #D8D8D8;
	color: #A4A4A4;
	line-height: 40px;
}

.y-main-bottom-btn button:hover {
	background: #18A8F1;
	color: white;
	cursor: pointer;
}

.y-main-bottom-news {
	width: 305px;
	height: 200px;
	/*    background: red;*/
	float: left;
	margin: 10px;
	border-top: 1px solid #D8D8D8;
	border-bottom: 1px solid #D8D8D8;
}

.thumbnail-imgbox {
	/*    background: blue;*/
	text-align: center;
	width: 305px;
	height: 150px;
}

.thumbnail-img {
	width: 305px;
	height: 145px;
	object-fit: contain;
}

.thumbnail-namebox {
	/*    background: red;*/
	height: 50px;
	line-height: 25px;
	color: #848484;
}

.thumbnail-namebox a {
	color: gray;
	font-weight: bold;
}
/* 흐려지는 효과 */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* 버튼관련 CSS */
.prev, .next {
  cursor: pointer;
  position: absolute;
   top: 45%;	
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
/*   margin-top : 30px;
 */}

/*다음 버튼*/
.next {

/*   right: 0; */
  border-radius: 3px 0 0 3px;
  margin-left: 740px

}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}
</style>
<body>
	<div id="y-main-rap">
		<div class="y-main-top-rap">
			<div class="y-main-top-rap-image">
				<div class="y-main-top">
					<div class="y-main-top-slide">
						<div class="mySlideDiv fade active">
							<img src='${contextPath}/resources/image/banner1.png'>
						</div>

						<div class="mySlideDiv fade">
							<img src='${contextPath}/resources/image/banner2.png'>
						</div>

						<div class="mySlideDiv fade">
							<img src='${contextPath}/resources/image/banner3.png'>
						</div>
						<div class="mySlideDiv fade">
							<img src='${contextPath}/resources/image/banner4.png'>
						</div>
						<a class="prev" onclick="prevSlide()">&#10094;</a> 
						<a class="next" onclick="nextSlide()">&#10095;</a>
					</div>
					<div class="y-main-top-menu-rap">
						<div class="y-main-top-menu">
							<a href="#"> <img
								src='${contextPath}/resources/image/jeongjang.png'></a>
						</div>
						<div class="y-main-top-menu">
							<a href="https://www.youtube.com/watch?v=Ozclmt1yUBc"> <img
								src='${contextPath}/resources/image/jugeo.png'></a>
						</div>
						<div class="y-main-top-menu">
							<a href="#"> <img
								src='${contextPath}/resources/image/maeum.png'></a>
						</div>
						<div class="y-main-top-menu">
							<a href="#"> <img
								src='${contextPath}/resources/image/sangdam.png'></a>
						</div>
						<div class="y-main-top-menu">
							<a href="#"> <img
								src='${contextPath}/resources/image/neona.png'></a>
						</div>
						<div class="y-main-top-menu">
							<a href="#"> <img
								src='${contextPath}/resources/image/nadeul.png'></a>
						</div>
						<div class="y-main-top-menu">
							<a href="#"> <img
								src='${contextPath}/resources/image/dododo.png'></a>
						</div>
						<div class="y-main-top-menu">

							<a href="#"> <img
								src='${contextPath}/resources/image/teojeon.png'></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="y-main-middle-rap">
			<div class="y-main-middle-title">
				<h1>청춘 NOTICE</h1>
			</div>
			<div class="y-main-middle">
				<table>
					<a href="#">
						<th>내일센터 소식</th>
					</a>
					<a href="#">
						<th>청춘지원 소식</th>
					</a>
					<a href="#">
						<th>너나들이 소식</th>
					</a>
					<a href="#">
						<th>나들목 소식</th>
					</a>
					<a href="#">
						<th>두두두 소식</th>
					</a>
					<a href="#">
						<th>청춘터전 소식</th>
					</a>
					<a href="#">
						<th>커뮤니티</th>
					</a>
				</table>
				<ul>

					<li><a href="#">제목을 입력해주세요</a></li>

					<li><a href="#">제목을 입력해주세요</a></li>
					<li><a href="#">제목을 입력해주세요</a></li>
					<li><a href="#">제목을 입력해주세요</a></li>
					<li><a href="#">제목을 입력해주세요</a></li>
				</ul>
			</div>
			<div class="y-main-middle-alarm-rap">
				<div class="y-main-middle-alarm-title">청춘알림</div>
				<div class="y-main-middle-alarm">
					<li>제목을 입력해주세요</li>
				</div>
			</div>
		</div>




		<div class="y-main-bottom-rap">
			<div class="y-main-middle-title">
				<h1>청춘 NEWS</h1>
			</div>
			<div class="y-main-bottom">
				<div class="y-main-bottom-title">청춘지원소식</div>
				<div class="y-main-bottom-btn">
					<button type='button' onclick="location.href='#'">
						<i class="y-bi bi-chevron-left"></i>
					</button>
					<button type='button' onclick="location.href='#'">
						<i class="y-bi bi-chevron-right"></i>
					</button>
					<button type='button' onclick="location.href='#'">
						<i class="bi bi-plus-lg"></i>
					</button>
				</div>
				<div class="y-main-bottom-news">

					<div class='thumbnail-imgbox'>
						<a href='#'><img class="thumbnail-img" src="logo.png"></a>
					</div>
					<div class='thumbnail-namebox'>
						<div class='thumbnail-title'>
							<a href='#'>AI모의면접기 이용 안내</a>
						</div>
						<span class='thumbnail-date'>2022-05-13</span>

					</div>

				</div>
				<div class="y-main-bottom-news">

					<div class='thumbnail-imgbox'>
						<a href='#'><img class="thumbnail-img" src="logo.png"></a>
					</div>
					<div class='thumbnail-namebox'>
						<div class='thumbnail-title'>
							<a href='#'>AI모의면접기 이용 안내</a>
						</div>
						<span class='thumbnail-date'>2022-05-13</span>

					</div>

				</div>
				<div class="y-main-bottom-news">

					<div class='thumbnail-imgbox'>
						<a href='#'><img class="thumbnail-img" src="logo.png"></a>
					</div>
					<div class='thumbnail-namebox'>
						<div class='thumbnail-title'>
							<a href='#'>AI모의면접기 이용 안내</a>
						</div>
						<span class='thumbnail-date'>2022-05-13</span>

					</div>

				</div>
				<div class="y-main-bottom-news">

					<div class='thumbnail-imgbox'>
						<a href='#'><img class="thumbnail-img" src="logo.png"></a>
					</div>
					<div class='thumbnail-namebox'>
						<div class='thumbnail-title'>
							<a href='#'>AI모의면접기 이용 안내</a>
						</div>
						<span class='thumbnail-date'>2022-05-13</span>

					</div>

				</div>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">

$(document).ready(function () {
	$(".mySlideDiv").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
	
	setInterval(nextSlide, 6000); //4초(4000)마다 다음 슬라이드로 넘어감
});

//이전 슬라이드
function prevSlide() {
	$(".mySlideDiv").hide(); //모든 div 숨김
	var allSlide = $(".mySlideDiv"); //모든 div 객체를 변수에 저장
	var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
	
	//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
	$(".mySlideDiv").each(function(index,item){ 
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	//새롭게 나타낼 div의 index
	var newIndex = 0;
    
	if(currentIndex <= 0) {
		//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
		newIndex = allSlide.length-1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
		newIndex = currentIndex-1;
	}

	//모든 div에서 active 클래스 제거
	$(".mySlideDiv").removeClass("active");
    
	//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
	$(".mySlideDiv").eq(newIndex).addClass("active");
	$(".mySlideDiv").eq(newIndex).show();

}

//다음 슬라이드
function nextSlide() {
	$(".mySlideDiv").hide();
	var allSlide = $(".mySlideDiv");
	var currentIndex = 0;
	
	$(".mySlideDiv").each(function(index,item){
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	var newIndex = 0;
	
	if(currentIndex >= allSlide.length-1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex+1;
	}

	$(".mySlideDiv").removeClass("active");
	$(".mySlideDiv").eq(newIndex).addClass("active");
	$(".mySlideDiv").eq(newIndex).show();
	
}

</script>
</html>
