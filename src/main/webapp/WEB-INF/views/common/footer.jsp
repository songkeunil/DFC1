<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"
 %>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 부분</title>
  <style>
      * {margin: 0; padding: 0;}
    p {
     font-size:20px;
      text-align:center;
    }
    
    .wrap {
    	display : grid;
    	grid-template-columns : 10% 16% 10% 54% 10%;
    	grid-template-rows : 35px 35px 35px 35px 35px;
    	}
    
    .grid1 {
    	grid-column-start:	1;
    	grid-column-end:	2;
    	grid-row-start:		1;
    	grid-row-end:		6;
    	}
    .grid2 {
    	grid-column-start:	2;
    	grid-column-end:	5;
        grid-row-start:		1;
    	grid-row-end:		2;
        line-height: 35px;
        text-align: left;
/*        border-bottom: solid 2px #808080;*/
    	}
    .grid3 {
    	grid-column-start:	2;
    	grid-column-end:	3;
        grid-row-start:		2;
    	grid-row-end:		5;
/*        border-right: solid 2px #808080;*/
    	}
    .grid4 {
    	grid-column-start:	3;
    	grid-column-end:	4;
        grid-row-start:		2;
    	grid-row-end:		3;
        line-height: 35px;
        text-align: left;
    	}
    .grid5 {
    	grid-column-start:	3;
    	grid-column-end:	4;
        grid-row-start:		3;
    	grid-row-end:		4;
        line-height: 35px;
        text-align: left;
    	}
    .grid6 {
    	grid-column-start:	3;
    	grid-column-end:	4;
        grid-row-start:		4;
    	grid-row-end:		5;
        line-height: 35px;
        text-align: left;
    	}
    .grid7 {
    	grid-column-start:	4;
    	grid-column-end:	5;
        grid-row-start:		2;
    	grid-row-end:		3;
        line-height: 35px;
        text-align: left;
    	}
    .grid8 {
    	grid-column-start:	4;
    	grid-column-end:	5;
        grid-row-start:		3;
    	grid-row-end:		4;
        line-height: 35px;
        text-align: left;
    	}
    .grid9 {
    	grid-column-start:	4;
    	grid-column-end:	5;
        grid-row-start:		4;
    	grid-row-end:		5;
        line-height: 35px;
        text-align: left;
    	}
    .grid10 {
    	grid-column-start:	2;
    	grid-column-end:	5;
        grid-row-start:		5;
    	grid-row-end:		6;
        text-align: left;
    	}
    .grid11 {
    	grid-column-start:	5;
    	grid-column-end:	6;
    	grid-row-start:		1;
    	grid-row-end:		6;
    	}
      p11 {
          color: gray;
          opacity: 0.9;
      }
    .ggiri{
        padding: 2px;
        width: 155px;
      }
    .DaeJeon{
        padding: 2px;
        width: 155px;      
      }
    
      a {
          text-decoration-line: none;
          color: inherit;
      }
  </style>
</head>
<body>
 <div class = "wrap">
 	<div class="grid1">  </div>
     <div class="grid2">&nbsp;|&nbsp;개인정보취급관리&nbsp;|
     &nbsp;<a href="http://www.goso.co.kr/bbs/board.php?bo_table=testDB&gclid=EAIaIQobChMI5ZuF2M-z9wIVN8EWBR3wKwLLEAAYASAAEgJsTPD_BwE" target='_blank'>소비자고발센터</a>&nbsp;|
     &nbsp;<a href="https://www.swc.mil.kr:444/" target='_blank' text>특수전사령부</a></div>
 	<div class="grid3"> 
	<img class="ggiri" src="resources/image/elephant.png" alt="ggiri_logo">
    <img class="DaeJeon" src="resources/image/DaeJeon.png" alt="Daejeon_logo"> 
	<img class="ggiri" src="resources/image/elephant.png" alt="ggiri_logo">
    <img class="DaeJeon" src="resources/image/DaeJeon.png" alt="Daejeon_logo"> 
    </div>
     <div class="grid4"> &nbsp;<a href="https://www.president.go.kr/" target='_blank' text>청와대</a></div>
     <div class="grid5"> &nbsp;<a href="https://www.whitehouse.gov/" target='_blank' text>백악관</a></div>
     <div class="grid6"> &nbsp;<a href="https://eng.kopri.re.kr/kopri/html/infra/03010101.html" target='_blank' text>세종과학기지</a></div>
 	<div class="grid7"> &nbsp;서울특별시 종로구 청와대로 1(T.02-730-5800) </div>
 	<div class="grid8"> &nbsp;1600 Pennsylvania Avenue, NW Washington, D.C. 20500, U.S(T.(202)456-1111) </div>
 	<div class="grid9"> &nbsp;62.223 S, 58.787 W </div>
 	<div class="grid10"> <p11>&nbsp;&nbsp;&nbsp;COPYRIGHT ⓒ 청춘끼리.ALL RIGHTS RESERVED</p11> </div>
 	<div class="grid11"> 11 </div>
 	
 </div>



<!-- 
<p> e-mail:admin@test.com</p> 
<p> 회사주소:서울시 강동구</p>
<p>찾아오는 길:<a href="#">약도</a></p>
 -->
</body>
</html>