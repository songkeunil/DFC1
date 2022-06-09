<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾아오시는길</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="${contextPath}/resources/css/common/font.css" rel="stylesheet"/>
</head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://map.vworld.kr/js/vworldMapInit.js.do?version=2.0&apiKey=CEB52025-E065-364C-9DBA-44880E3B02B8&domain=localhost:8080"></script>
<style>
#boardWrap{
	margin: 0 auto;
	width: 1500px;
	margin-top: 60px;
	margin-left: 325px;
}

#bus_tag{
	width: 80px;
	height: 80px;
}

#boardTop{
	width: 800px;
	height: 50px;
	border-bottom: 1px solid #A4A4A4;
}
#boardArticle{
	width: 800px;
	margin-top: 20px;
}

#locationWay{
	width: 800px;
	text-align: center;
/* 	background-color: green; */
}

.way{
	width: 450px;
	height: 120px;
	margin-left: 200px;
	margin-top: 20px;
}

.transeport_icon{
	width: 25%;
	height: 100%;
/* 	background-color: gray; */
	float: left;
	font-size: 20px;
	font-weight: bold;
}

.locIndex{
	width: 75%;
	height: 100%;
	float: left;
	text-align: center;
/* 	background-color: red; */
}

.locIndex li{
	float: left;
	text-align: center;
}

</style>
<body>
 <div id='boardWrap'>
        <div id='boardTop'>
            <h2 style="font-size: 26px; text-align: left; ">
           		 찾아오시는길
            </h2>
            <div id='page_location' style="font-size: 13px; text-align: right;">
            <a> Home </a> > <a> 대전청년내일센터 </a> > <a>찾아오시는길</a>
            </div>
        </div>
        
        <div id='boardArticle'>
            <table>
               <div id="board_index" style="text-align: center;">
                  <p style="font-size: 18px">청춘인포</p><br>
                  <p>주소: 대전 서구 둔산서로 17 양호빌딩 6층</p>
                  <p>전화번호: 0507-1423-2462</p>
               </div>
               <br>
			   <div id="vmap"style="width:800px;height:400px;left:0px;top:0px"/>
            </table>
        </div>

        <div id="locationWay">
        	<div class="way bus">
         		<div class="transeport_icon bus">
         			<p>버스</p>
         		</div>
         		<ul class="locIndex">
         			<li>
         				<p style="font-weight: bold;  ">간선</p>
         				<p>618</p>
         				<p>둔산초등학교 정류장 하차</p>
         			</li>
         		</ul>
         	</div>
         	
         	<div class="way subway">
         		<div class="transeport_icon subway">
         			<p>지하철</p>
         		</div>
         		<ul class="locIndex">
         			<li>
         				<p>시청역 또는 탄방역 하차 도보 7분거리</p>
         			</li>
         		</ul>
         	</div>
         	
         	<div class="way personal_car">
         		<div class="transeport_icon car">
         			<p>자가용</p>
         		</div>
         		<ul class="locIndex">
         			<li>
         				<p>시청사거리 양호빌딩 (주차 건물 뒤 주차타워)</p>
         			</li>
         		</ul>
         	</div>
      	</div>
    </div>
</body>
<script type="text/javascript">
vw.ol3.CameraPosition.center = [14180172.101252075, 4348645.743841676];
vw.ol3.CameraPosition.zoom = 20;

vw.ol3.MapOptions = {
	    basemapType: vw.ol3.BasemapType.GRAPHIC
	  , controlDensity: vw.ol3.DensityType.EMPTY
	  , interactionDensity: vw.ol3.DensityType.BASIC
	  , controlsAutoArrange: true
	  , homePosition: vw.ol3.CameraPosition
	  , initPosition: vw.ol3.CameraPosition
	}; 

	vmap = new vw.ol3.Map("vmap",  vw.ol3.MapOptions); 
	
	var markerLayer = new vw.ol3.layer.Marker(vmap); 
	vw.ol3.markerOption = {
			x : 14180172.101252075,
			y : 4348645.743841676,
			epsg : "EPSG:900913",
			title : '중앙능력개발원',
			contents : '연락처 : <0507-1423-2462> 주소 : <대전 서구 둔산서로 17 양호빌딩 6층>',
			iconUrl : 'http://map.vworld.kr/images/ol3/marker_blue.png'
		}; //마커 옵션 설정

		markerLayer.addMarker(vw.ol3.markerOption);// 마커를 레이어에 등록
		vmap.addLayer(markerLayer); //마커를 vmap에 등록
		
</script>
</html>