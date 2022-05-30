<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<style>
#boardrap {
    width: 1400px;
    height: 1200px;
    margin: 0 auto;
    margin-top: 100px;
    /*            background: red;*/
}

#boardtop {
    /*    background:red;*/
    width: 1000px;
    height: 90px;
    margin: 0 auto;
    border-bottom: 1px solid #A4A4A4;
}

#boardtop a {
    text-decoration: none;
    color: #848484;

}


#board {

    width: 1000px;
    height: 550px;
    /*    background: green;*/
    margin: 0 auto;
    /*    border-top: 1px solid gray;*/
    margin-top: 60px;
}

.boardtopbutton {
    width: 100px;
    height: 35px;
    background: white;
    border: 1px solid #A4A4A4;
    border-radius: 5px;
    font-weight: bold;
    font-size: 15px;
    cursor: pointer;
    margin-right: 15px;
    margin-bottom: 20px;
}
.boardtopbutton:hover{
    background:#F2F2F2; 
    
}
.a1{
    background: #F2F2F2;
}

#board table {
    width: 1000px;
    /*    background: blue;*/
    margin: 0 auto;
    font-weight: bold;
}

h2 {
    width: 136px;
    height: 30px;
    border-bottom: 3px solid #32caca;
}


#board td {
    border-bottom: 1px solid #A4A4A4;
    height: 40px;
}

tr:hover {
    background: #F2F2F2;
}

#board th {
    border-bottom: 1px solid #A4A4A4;
    border-top: 1px solid #A4A4A4;
    height: 50px;
    background: #F2F2F2;
    font-size: 17px;
}

.text-left {
    text-align: left;
    padding-left: 30px;
}

.text-left a {
    text-decoration: none;
    color: black;
    width: 500px;

    display: inline-block;
}

.text-left a:hover {
    color: black;
}
.text-color{
/*    text-decoration: none;*/
    font-weight: 500;
}
.text-color a{
    text-decoration: none;
    color: #6E6E6E;
    font-weight: 500;
}

#th-1 {
    width: 90px;
}

#th-2 {
    width: 100px;
}

#th-3 {
    width: 600px;
}

#th-4 {
    width: 130px;
}

#th-5 {
    width: 90px;
}

table {
    text-align: center;
}

#boardfooter {
    width: 1000px;
    height: 100px;
    /*    background: yellow;*/
    margin: 0 auto;
    margin-top: 50px;
}
#boardbtnbox {
    width: 1000px;
    height: 35px;
    float: right;
    margin-top: -45px;
}

.boardbtn {
    width: 120px;
    height: 35px;
    background: white;
    border: 1px solid #A4A4A4;
    border-radius: 5px;
    font-weight: bold;
    padding-bottom: 3px;
    padding-right: 8px;
    float: right;
    font-size: 15px;
    cursor: pointer;
}
.boardbtn:hover{
    background:#F2F2F2; 
    
}
.searchbtn{
    float: left;
    font-size: 20px;
    margin-left: 
}
.searchbtn i{
    margin-left: 10px;
    line-height: 33px; 
}


#pagebtn {
    /*    background: red;*/
    width: 300px;
    text-align: center;
    text-decoration: none;
    font-size: 20px;
    margin: 0 auto;

}

#pagebtn a {
    text-decoration: none;
    color: black;
}

#pagebtn button {
    width: 30px;
    height: 35px;
    background: white;
    border: 1px solid #A4A4A4;
    border-radius: 5px;
    font-weight: bold;
    cursor: pointer;
}
#pagebtn button:hover{
    background:#F2F2F2; 
    
}

</style>
<body>
 <div id='boardrap'>
        <div id='boardtop'>
            <h2>나들목소식<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청춘지원 </a> > <a href='#'>청춘지원소식</a>
        </div>
        <div id='board'>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton a1'>전체</button>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton'>공지</button>
            <button type='button' onclick="location.href='#'" class = 'boardtopbutton'>소식</button>
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
                        <td class = 'text-color'><a href = '#'>[소식]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td class = 'text-color'><a href = '#'>[공지]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class = 'text-color'><a href = '#'>[소식]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td class = 'text-color'><a href = '#'>[공지]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td class = 'text-color'><a href = '#'>[소식]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td class = 'text-color'><a href = '#'>[공지]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td class = 'text-color'><a href = '#'>[소식]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td class = 'text-color'><a href = '#'>[공지]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td class = 'text-color'><a href = '#'>[소식]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td class = 'text-color'><a href = '#'>[공지]</a></td>
                        <td class='text-left'><a href='#'>청춘끼리</a></td>
                        <td>2022.05.01</td>
                        <td>22</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id='boardfooter'>

            <div id = 'boardbtnbox'>
            
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