<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<link href="${path}/resources/css/board4.css" rel="stylesheet"/>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
  <div id='boardrap'>
        <div id='boardtop'>
            <h2>청춘지원소식<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘지원 </a> > <a href='#'>청춘지원소식</a>
        </div>
        <div id='board'>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton'>전체</button>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton'>청춘소식</button>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton a3'>자료실</button>
            <table>
                <thead>
                    <tr>
                        <th id=th-1>번호</th>
                        <th id=th-2>분류</th>
                        <th id=th-3>제목</th>
                        <th id=th-4>날짜</th>
                        <th id=th-5>조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td class = 'text-color'><a href = '#'>[자료실]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id='boardfooter'>

            <div id = 'boardbtnbox'>
            <button type='button' onclick="location.href='#'" class='boardbtn'><i class="bi bi-justify"></i>목록</button>
            <button type='button' onclick="location.href='#'" class='boardbtn searchbtn'><i class="bi bi-search"></i></button>
            </div>
            <div id='pagebtn'>
                <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-double-left"></i></button>

                <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-left"></i></button>

                <button type='button' onclick="location.href='#'">1</button>
                <button type='button' onclick="location.href='#'">2</button>
                <button type='button' onclick="location.href='#'">3</button>
                <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-right"></i></button>
                <button type='button' onclick="location.href='#'"><i class="bi bi-chevron-double-right"></i></button>
            </div>

        </div>


    </div>


</body>
</html>