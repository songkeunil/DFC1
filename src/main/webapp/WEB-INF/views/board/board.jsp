<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<link href="${path}/resources/css/board.css" rel="stylesheet"/>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
<div id='y-boardrap'>
        <div id='y-boardtop'>
            <h2 class='y-h2'>자유게시판<br></h2><br>
            <p class='y-p'>자유게신판은 자유롭게 의견을 게시 할 수 있는 열린공간입니다. 상업성 광고, 저속한 표현,특정인에 대한 비방, 정치적 목적이나 성향, 동일인이라고 인정되는 자가 동일 <br>또는 유사 내용을 반복한 게시글 등은 관리자에 의해
                통보없이 삭제될 수 있습니다. <br>또한, 홈페이지를 통하여 불법유해 정보를 게시하거나 배포하면 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제74조에 의거<br> 1년이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.</p>
            <br>
            <a href='#'><i class="y-bi bi-house-door"></i>Home </a> > <a href='#'> 청년의목소리 </a> > <a href='#'>자유게시판</a>
        </div>
        <div id='y-board'>
            <table class="y-table">
                <thead>
                    <tr class='y-tr'>
                        <th id=y-th-1>번호</th>
                        <th id=y-th-2>글제목</th>
                        <th id=y-th-3>날짜</th>
                        <th id=y-th-4>조회</th>
                        <th id=y-th-5>추천</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class='y-tr'>
                        <td>1</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>2</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>3</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>4</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>5</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>6</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>7</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>8</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>9</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                    <tr class='y-tr'>
                        <td>10</td>
                        <td class='y-text-left'><a href='#'>청춘끼리</a></td>
                        <td>2020.08.20</td>
                        <td>101</td>
                        <td>22</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id='y-boardfooter'>
           <div id = 'y-boardbtnbox'>
            <button type='button' onclick="location.href='#'" class='y-boardbtn'><i class="y-bi bi-pencil"></i>&nbsp글쓰기</button>
            <button type='button' onclick="location.href='#'" class='y-boardbtn searchbtn'><i class="y-bi bi-search"></i></button>
            </div>
            <div id='y-pagebtn'>
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-double-left"></i></button>
                
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-left"></i></button>
                
                <button type='button' onclick="location.href='#'">1</button>
                <button type='button' onclick="location.href='#'">2</button>
                <button type='button' onclick="location.href='#'">3</button>
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-right"></i></button>
                <button type='button' onclick="location.href='#'"><i class="y-bi bi-chevron-double-right"></i></button>
            </div>

        </div>


    </div>

</body>
</html>