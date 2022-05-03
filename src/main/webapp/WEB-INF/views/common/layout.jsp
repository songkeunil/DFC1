<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

<link href="${path}/resources/css/header.css" rel="stylesheet"/>
<link href="${path}/resources/css/font.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="UTF-8">
<style>
	#container {
		width: 100%;
		margin: 0px auto;
		text-align: center;
		border: 0px solid #bcbcbc;
	}
	
/* 	#header1 {
		padding: 5px;
		margin-bottom: 5px;
		border: 0px solid #bcbcbc;
		background-color: lightgreen;
	} */
	
/* 	#sidebar-left {
		width: 15%;
		height: 700px;
		padding: 5px;
		margin-right: 5px;
		margin-bottom: 5px;
		float: left;
		background-color: yellow;
		border: 0px solid #bcbcbc;
		font-size: 10px;
	} */
	
/* 	#content {
		width: 75%;
		padding: 5px;
		margin-right: 5px;
		float: left;
		border: 0px solid #bcbcbc;
	}
	
	#footer {
		clear: both;
		padding: 5px;
		border: 0px solid #bcbcbc;
		background-color: lightblue;
	} */
	
</style>

<!-- tiles_member.xml의 name="title"의 value를 가져온다. -->
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<div id="container">
		<div id="header1">
			<tiles:insertAttribute name="header" /> <!-- name="header"의 jsp표시 -->
		</div>
		<div id="content">
			<tiles:insertAttribute name="body" /> <!-- main.jsp -->
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>