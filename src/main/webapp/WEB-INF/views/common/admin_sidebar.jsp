<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ADMIN SIDEBAR</title>
<!--     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
 -->    <link rel="stylesheet" href="font.css">
    <link rel="stylesheet" href="header.css">
    
    <link href="${path}/resources/css/admin_sidebar.css" rel="stylesheet"/>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(function() {
            $('.S_bar_menu1').click(function() {
                $('.S_bar_menu2').slideUp();
                if ($(this).children('.S_bar_menu2').is(':hidden')) {
                    $(this).children('.S_bar_menu2').slideDown();
                } else {
                    $(this).children('.S_bar_menu2').slideUp();
                }
            });
        });
    </script>
</head>

<body>

    <div class="S_bar_wrap">
        <ul id="S_bar">
            <li class="S_bar_menu1">
                <a href="#">사용자관리</a>
                <ul class="S_bar_menu2">
                    <li><a href="#">일반사용자</a></li>
                    <li><a href="#">관리자</a></li>
                </ul>
            </li>
            <li class="S_bar_menu1">
                <a href="#">신청관리</a>
                <ul class="S_bar_menu2">
                    <li><a href="#">Sub-Menu1</a></li>
                    <li><a href="#">Sub-Menu2</a></li>
                    <li><a href="#">Sub-Menu3</a></li>
                </ul>
            </li>
            <li class="S_bar_menu1">
                <a href="#">Menu3</a>
                <ul class="S_bar_menu2">
                    <li><a href="#">Sub-Menu1</a></li>
                    <li><a href="#">Sub-Menu2</a></li>
                    <li><a href="#">Sub-Menu3</a></li>
                </ul>
            </li>
            <li class="S_bar_menu1">
                <a href="#">Menu4</a>
                <ul class="S_bar_menu2">
                    <li><a href="#">Sub-Menu1</a></li>
                    <li><a href="#">Sub-Menu2</a></li>
                    <li><a href="#">Sub-Menu3</a></li>
                </ul>
            </li>
        </ul>
    </div>




</body></html>
