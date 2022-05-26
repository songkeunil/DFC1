<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="article" value="${articleMap.article}"></c:set>
<c:set var="articleFile" value="${articleMap.articleFileList}"></c:set>
<!DOCTYPE html>
<html>
<head>
<%-- <link href="${contextPath}/resources/mrWrite1.css" rel="stylesheet" /> --%>
<link href="${contextPath}/resources/css/font.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<style>
  #boardrap {
        width: 1000px;
        height: 5000px;
        margin: 0 auto;
        
        /*                background: red;*/
    }


    #boardtop {
        /*        background:red;*/
        width: 1000px;
        height: 90px;
        margin: 0 auto;
        border-bottom: 1px solid #A4A4A4;
        margin-top:100px;
    }

    #boardtop a {
        text-decoration: none;
        color: #848484;

    }

    h2 {
        width: 288px;
        height: 30px;
        border-bottom: 3px solid #18A8F1;
    }

    .mentalhealth-title {
        width: 1000px;
        height: 150px;
        /*        background: red;*/
        font-size: 35px;
        text-align: center;
        line-height: 100px;
    }

    .mentalhealth-introduction-rap {
        width: 1000px;
        height: 300px;
    }

    .mentalhealth-introduction-img {
        width: 500px;
        height: 300px;
        background: blue;
        float: left;
        border-radius: 10px;
        overflow: hidden
    }

    .mentalhealth-introduction {
        width: 500px;
        height: 300px;
        /*        background: green;*/
        float: left;
        text-align: center;
        font-size: 18px;
        line-height: 37px;
        color: gray;

    }

    .mentalhealth-introduction span {
        font-size: 25px;
        font-weight: bold;
        color: black;

    }

    .line {
        width: 1000px;
        height: 100px;
        /*        background: red;*/

        border-bottom: 3px solid #18A8F1;
        margin-bottom: 100px;
    }

    .mini-line {
        width: 1000px;
        height: 100px;
        /*        background: red;*/

        border-bottom: 2px solid #18A8F1;
        margin-bottom: 100px;
    }

    .mentalhealth-gaeyo {
        width: 1000px;
        height: 300px;
        ;
        /*        background: red;*/
    }

    .mentalhealth-gaeyo-title {
        width: 1000px;
        height: 50px;
        /*        background: red;*/
        line-height: 50px;
        font-size: 25px;
        font-weight: bold;
    }

    .mentalhealth-gaeyo-title span {
        border-bottom: 3px solid #18A8F1;
    }

    .map-title span {
        font-size: 25px;
        font-weight: bold;
        color: black;
        border-bottom: 3px solid #18A8F1;
    }

    .mentalhealth-gaeyo-name {
        width: 100px;
        height: 50px;
        /*        background: blue;*/
        line-height: 50px;
        float: left;
        font-size: 18px;
    }

    .mentalhealth-gaeyo-detail {
        width: 900px;
        height: 50px;
        /*        background: green;*/
        float: left;
        line-height: 50px;
        color: gray;
    }

    .mentalhealth-gaeyo-detail span {
        border-left: 3px solid #18A8F1;
    }


    .mentalhealth-jiwon {
        width: 1000px;
        height: 500px;
        /*                background: red;*/
        margin-top: 50px;
    }

    .mentalhealth-jiwon-title {
        width: 1000px;
        height: 50px;
        /*        background: red;*/
        line-height: 50px;
        font-size: 25px;
        font-weight: bold;
    }

    .mentalhealth-jiwon-title span {
        border-bottom: 3px solid #18A8F1;
    }

    .mentalhealth-jiwon-name {
        width: 100px;
        height: 50px;
        /*        background: blue;*/
        line-height: 50px;
        float: left;
        font-size: 18px;
    }

    .mentalhealth-jiwon-detail {
        width: 900px;
        height: 50px;
        /*                background: green;*/
        float: left;
        line-height: 50px;
        color: gray;
    }

    .mentalhealth-jiwon-detail>span {
        border-left: 3px solid #18A8F1;
    }

    .jiwon-detail2 {
        /*        background: red;*/
        height: 130px;
    }

    .mentalhealth-jiwon-detail-jeolcha {
        width: 150px;
        height: 130px;
        background: #F2F2F2;
        float: left;

        text-align: center;
    }

    .mentalhealth-jiwon-detail-jeolcha-title {
        width: 150px;
        height: 50px;
        /*        background: red;*/
        font-size: 17px;
        font-weight: bold;
        color: black;
    }

    .mentalhealth-jiwon-detail-jeolcha-title>span {
        border-bottom: 3px solid #18A8F1;
    }

    .mentalhealth-jiwon-detail-jeolcha-detail {
        width: 150px;
        height: 80px;
        /*        background: green;*/
        line-height: 40px;

    }

    .box {
        width: 50px;
        height: 130px;
        /*        background: red;*/
        float: left;
        font-size: 40px;
        text-align: center;
        line-height: 130px;
        color: #18A8F1;
    }


    .mentalhealth-sincheong {
        width: 1000px;
        height: 300px;
        ;
        /*        background: red;*/
        margin-top: 50px;
    }

    .mentalhealth-sincheong-title {
        width: 1000px;
        height: 50px;
        /*        background: red;*/
        line-height: 50px;
        font-size: 25px;
        font-weight: bold;
    }

    .mentalhealth-sincheong-title span {
        border-bottom: 3px solid #18A8F1;
    }



    .mentalhealth-sincheong-detail {
        width: 900px;
        height: 50px;
        /*        background: green;*/
        float: left;
        line-height: 50px;
        color: gray;
    }

    .mentalhealth-sincheong-detail span {
        border-left: 3px solid #18A8F1;
    }


    .mentalhealth-notice {
        width: 1000px;
        height: 600px;
        /*        background: red;*/

    }

    .mentalhealth-notice-title {
        width: 1000px;
        height: 50px;
        /*        background: red;*/
        line-height: 50px;
        font-size: 25px;
        font-weight: bold;
    }

    .mentalhealth-notice-title span {
        border-bottom: 3px solid #18A8F1;
    }

    .mentalhealth-notice-detail {
        width: 900px;
        height: 50px;
        /*        background: green;*/
        float: left;
        line-height: 50px;
        color: gray;
    }

    .mentalhealth-notice-detail span {
        border-left: 3px solid #18A8F1;
    }




    .mentalhealth-inquiry {
        width: 1000px;
        height: 100px;
        /*      background: red;*/
    }

    .mentalhealth-inquiry-title {
        width: 1000px;
        height: 50px;
        /*        background: red;*/
        line-height: 50px;
        font-size: 25px;
        font-weight: bold;
    }

    .mentalhealth-inquiry-title span {
        border-bottom: 3px solid #18A8F1;
    }

    .mentalhealth-inquiry-detail {
        width: 900px;
        height: 50px;
        /*        background: green;*/
        float: left;
        line-height: 50px;
        color: gray;
    }

    .mentalhealth-inquiry-detail span {
        border-left: 3px solid #18A8F1;
    }


    .mentalhealth-sangdamso {
        width: 1000px;
        height: 1000px;
        /*        background: red;*/
        margin-top: 70px;

    }

    .mentalhealth-sangdamso-simricenter {
        width: 1000px;
        height: 380px;
        /*        background: blue;*/
    }

    .mentalhealth-sangdamso-img {
        width: 630px;
        height: 380px;
        /*        background: red;*/
        float: left;
        border-radius: 10px;
        overflow: hidden;
        margin-right: 10px;
    }

    .mentalhealth-sangdamso-detail {
        width: 360px;
        height: 380px;
        /*                background: blue;*/
        float: left;
    }


    .sangdamso-detail-name {
        width: 360px;
        height: 50px;
        /*                background: red;*/
        line-height: 50px;
        text-align: center;
        font-size: 25px;
        font-weight: bold;
    }

    .sangdamso-detail-name>span {
        border-bottom: 3px solid #18A8F1;
    }

    .sangdamso-detail-counselor {
        width: 68px;
        height: 40px;
        background: #E6E6E6;
        float: left;
        line-height: 40px;
        text-align: center;
        font-weight: bold;
        border-top: 1px solid #BDBDBD;
        border-left: 1px solid #BDBDBD;
    }

    .sangdamso-detail-personnel {
        width: 88px;
        height: 40px;
        float: left;
        background: #F2F2F2;
        line-height: 40px;
        text-align: center;
        border-top: 1px solid #BDBDBD;
    }

    .sangdamso-detail-insadamdang {
        width: 107px;
        height: 40px;
        background: #E6E6E6;
        float: left;
        line-height: 40px;
        text-align: center;
        border-left: 2px solid white;
        font-weight: bold;
        border-top: 1px solid #BDBDBD;

    }

    .sangdamso-detail-insadamdang-personnel {
        width: 88px;
        height: 40px;
        float: left;
        background: #F2F2F2;
        line-height: 40px;
        text-align: center;
        border-right: 1px solid #BDBDBD;
        border-top: 1px solid #BDBDBD;
    }

    .sangdamso-detail-career {
        width: 177px;
        height: 40px;
        background: #E6E6E6;
        float: left;
        line-height: 40px;
        text-align: center;
        border-top: 2px solid white;
        font-weight: bold;
        border-left: 1px solid #BDBDBD;

    }

    .sangdamso-detail-career-detail {
        width: 176px;
        height: 40px;
        float: left;
        background: #F2F2F2;
        line-height: 40px;
        text-align: center;
        border-top: 2px solid white;
        border-right: 1px solid #BDBDBD;

    }

    .sangdamso-detail-certificate {
        width: 94px;
        height: 60px;
        background: #E6E6E6;
        float: left;
        line-height: 60px;
        text-align: center;
        border-top: 2px solid white;
        font-weight: bold;
        border-left: 1px solid #BDBDBD;

    }

    .sangdamso-detail-certificate-detail {
        width: 259px;
        height: 60px;
        float: left;
        background: #F2F2F2;
        line-height: 20px;
        text-align: center;
        border-top: 2px solid white;
        border-right: 1px solid #BDBDBD;

    }

    .hope {
        line-height: 30px;
    }

    .sangdamso-detail-time {
        width: 79px;
        height: 80px;
        background: #E6E6E6;
        float: left;
        line-height: 80px;
        text-align: center;
        border-top: 2px solid white;
        font-weight: bold;
        border-left: 1px solid #BDBDBD;

    }

    .sangdamso-detail-weekday {}

    .sangdamso-detail-weekday,
    .sangdamso-detail-weekend {
        width: 100px;
        height: 39px;
        float: left;
        background: #F2F2F2;
        line-height: 39px;
        text-align: center;
        border-top: 2px solid white;

    }

    .sangdamso-detail-weekday-time,
    .sangdamso-detail-weekend-time {
        width: 174px;
        height: 39px;
        float: left;
        background: #FAFAFA;
        line-height: 39px;
        text-align: center;
        border-top: 2px solid white;
        border-right: 1px solid #BDBDBD;

    }


    .sangdamso-detail-tel,
    .sangdamso-detail-adress {
        width: 79px;
        height: 40px;
        background: #E6E6E6;
        float: left;
        line-height: 40px;
        text-align: center;
        border-top: 2px solid white;
        font-weight: bold;
        border-left: 1px solid #BDBDBD;

    }

    .sangdamso-detail-tel-detail,
    .sangdamso-detail-adress-detail {
        width: 274px;
        height: 40px;
        float: left;
        background: #F2F2F2;
        line-height: 40px;
        text-align: center;
        border-top: 2px solid white;
        border-right: 1px solid #BDBDBD;

    }

    .sangdamso-detail-adress {
        height: 50px;
        line-height: 50px;
        border-bottom: 1px solid #BDBDBD;
    }

    .sangdamso-detail-adress-detail {
        line-height: 25px;
        height: 50px;
        border-bottom: 1px solid #BDBDBD;

    }
</style>
<body>
	
    <div id='boardrap'>
        <div id='boardtop'>
            <h2>청년 마음건강 지원사업 소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청년 마음건강 </a> > <a href='#'>청년 마음건강 지원사업 소개</a>
        </div>
        <div class="mentalhealth-title">
            청년 마음건강이란?
        </div>
        <div class="mentalhealth-introduction-rap">
            <div class="mentalhealth-introduction-img">
                <img src='${contextPath}/resources/image/beach.png'>
            </div>
            <div class="mentalhealth-introduction">
                <span>'나' </span> 와 <span> '우리'</span> 를 위한 치유공간<br>
                <span> "청년 마음건강"</span> <br><br>
                "청년마음건강"에서 심리적문제, 인간관계, 조직 내 갈등으로<br>
                상처 받은 분들의 회복을 지원하며 <br>새로운 적응과 성장을
                지원하고 있습니다.<br>

                분야별 전문가의 심리적 지원으로 당면한 문제의 해결은 물론<br>
                내면의 힘을 발견하도록 도울 것입니다.

            </div>
        </div>
        <div class='line'></div>
        <div class="mentalhealth-gaeyo">
            <div class='mentalhealth-gaeyo-title'>
                <span>사업개요</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>
                사업명
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp 2022년 청년 마음건강 지원사업</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>
                사업기간
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp 2022. 4. ~ 2022. 11.</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>
                사업목적
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp - 청년층의 다양한 마음건강 문제를 해결하고 예방적 차원에서 청년의 우울 등을 조기에 발견·개입할 수 있는 전문적인 상담체계 구축</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>

            </div>
            <div class='mentalhealth-gaeyo-detail'>
                &nbsp - 청년 마음건강(1:1) 지원 확대 및 온라인 자가진단 서비스 제공을 통한 청년의 심리안정과 사회진입 촉진
            </div>


        </div>
        <div class="mentalhealth-jiwon">
            <div class='mentalhealth-jiwon-title'>
                <span> 지원내용</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
                지원대상
            </div>

            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp 대전광역시에 거주하는 마음건강 지원이 필요한 청년(만 18~39세)</span>
            </div>
            <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 1인당 최대 7회까지 상담 가능
            </div>
            <div class='mentalhealth-jiwon-name'>
                상담분야
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp 진로, 정서, 대인관계, 가족문제, 취업, 직무스트레스, 성격, 자녀양육, 연애, 기타</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
                상담방식
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp - 오프라인 상담(내방)</span>
            </div>
            <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 상담일시 : 월 ~ 금 / 09:00 ~ 18:00 ※야간 및 주말상담은 상담소별 상이함
            </div>
            <div class='mentalhealth-jiwon-name'>
                상담절차
            </div>
            <div class='mentalhealth-jiwon-detail jiwon-detail2'>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title"><span>상담신청</span></div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail">청춘광장<br>
                        청년 마음건강</div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title"><span>신청내역 확인</span></div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail">신청내용 및<br>
                        시간/ 장소 확인</div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title"><span>상담 진행</span></div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail">상담 실시<br>
                        신분증 지참</div>
                </div>

            </div>


        </div>
        <div class="mentalhealth-sincheong">
            <div class='mentalhealth-sincheong-title'>
                <span>신청방법</span>
            </div>

            <div class='mentalhealth-sincheong-detail'>
                <span>&nbsp 온라인 신청'청춘광장' 홈페이지에서 신청</span>
            </div>

            <div class='mentalhealth-sincheong-detail'>
                <span>&nbsp 신청 후 예약상태 '승인' 확인 필수</span>
            </div>

            <div class='mentalhealth-sincheong-detail'>
                <span>&nbsp 신분증 지참 후 해당 상담소 방문</span>
            </div>
        </div>

        <div class="mentalhealth-notice">
            <div class='mentalhealth-notice-title'>
                <span>유의사항</span>
            </div>

            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 상담 신청 및 취소는 방문일 기준 1일 전까지만 가능합니다. </span>

            </div>
            <div class='mentalhealth-notice-detail'>
                &nbsp ex) 4월 3일 방문 예정일인 경우, 4월 2일까지만 신청 및 취소 가능
            </div>
            <div class='mentalhealth-notice-detail'>
                &nbsp ※ 당일 신청 및 취소는 불가능
            </div>

            <div class='mentalhealth-notice-detail'>
                <span> &nbsp 예약 승인은 월요일 9시 ~ 금요일 18시까지만 진행되오니 유의하여 주시기 바랍니다.(주말, 공휴일 승인불가)</span>
            </div>

            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 신청서 및 개인 정보제공 동의서는 상담소 방문 시 본인이 직접 작성해주시기 바랍니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 신청일 기준 주소지가 대전시가 아니더라도, 학교 또는 직장이 대전시인 경우 증빙서류(재학증명서 또는 재직증명서 등) </span>
            </div>
            <div class='mentalhealth-notice-detail'>
                &nbsp &nbsp지참 후 상담소에 방문해주시기 바랍니다.
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 지원대상이 아닌 것으로 확인된 경우 상담이 중단됩니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 본 상담은 사업비 소진 시 종료됩니다.</span>
            </div>
        </div>
        <div class="mentalhealth-inquiry">
            <div class='mentalhealth-inquiry-title'>
                <span>문의처</span>
            </div>

            <div class='mentalhealth-inquiry-detail'>
                <span>&nbsp 청춘끼리 정책기획팀 ☎ 010-9962-3554 </span>

            </div>

        </div>
        <div class='line'></div>
        <div class='mentalhealth-jiwon-title'>
            <span> 상담소 소개</span>
        </div>
        <div class="mentalhealth-sangdamso">
            <div class="mentalhealth-sangdamso-simricenter">
                <div class="mentalhealth-sangdamso-img">
                    <img src="${contextPath}/resources/image/simricenter.jpg">
                
                    
                </div>
                <div class="mentalhealth-sangdamso-detail">
                    <div class="sangdamso-detail-name">
                        <span> 헤아려봄심리상담센터</span>
                    </div>
                    <div class="sangdamso-detail-counselor">
                        상담사
                    </div>
                    <div class="sangdamso-detail-personnel">
                        15명
                    </div>
                    <div class="sangdamso-detail-insadamdang">
                        청년인사담당
                    </div>
                    <div class="sangdamso-detail-insadamdang-personnel">
                        2명
                    </div>
                    <div class="sangdamso-detail-career">
                        상담사 평균 경력
                    </div>
                    <div class="sangdamso-detail-career-detail">
                        10년 이상
                    </div>

                    <div class="sangdamso-detail-certificate">
                        자격증 현황
                    </div>
                    <div class="sangdamso-detail-certificate-detail">
                        상담심리사, 전문상담사, 청소년상담사, 임상심리사, 중독심리사, 범죄심리사, 발달심리사, 정신건강증진상담사
                    </div>

                    <div class="sangdamso-detail-time">
                        상담시간
                    </div>
                    <div class="sangdamso-detail-weekday">
                        평일
                    </div>
                    <div class="sangdamso-detail-weekday-time">
                        10:00 ~ 21:00
                    </div>
                    <div class="sangdamso-detail-weekend">
                        주말(토)
                    </div>
                    <div class="sangdamso-detail-weekend-time">
                        09:00 ~ 14:00
                    </div>

                    <div class="sangdamso-detail-tel">
                        전화번호
                    </div>
                    <div class="sangdamso-detail-tel-detail">
                        042 - 716 - 0038
                    </div>
                    <div class="sangdamso-detail-adress">
                        주소
                    </div>
                    <div class="sangdamso-detail-adress-detail">
                        대전광역시 유성구 노은로 166<br> 계룡프라자 505호
                    </div>
                </div>

            </div>
            <div class='mini-line'></div>

            <div class="mentalhealth-sangdamso-simricenter">
                <div class="mentalhealth-sangdamso-img">
                    <img src="${contextPath}/resources/image/hope.png">
                </div>
                <div class="mentalhealth-sangdamso-detail">
                    <div class="sangdamso-detail-name">
                        <span> 희망찾기 사회적협동조합</span>
                    </div>
                    <div class="sangdamso-detail-counselor">
                        상담사
                    </div>
                    <div class="sangdamso-detail-personnel">
                        8명
                    </div>
                    <div class="sangdamso-detail-insadamdang">
                        청년인사담당
                    </div>
                    <div class="sangdamso-detail-insadamdang-personnel">
                        2명
                    </div>
                    <div class="sangdamso-detail-career">
                        상담사 평균 경력
                    </div>
                    <div class="sangdamso-detail-career-detail">
                        10년 이상
                    </div>

                    <div class="sangdamso-detail-certificate">
                        자격증 현황
                    </div>
                    <div class="sangdamso-detail-certificate-detail hope">
                        전문상담사, 청소년상담사, 임상심리사, 인터넷중독상담사, 미술심리상담사
                    </div>

                    <div class="sangdamso-detail-time">
                        상담시간
                    </div>
                    <div class="sangdamso-detail-weekday">
                        평일
                    </div>
                    <div class="sangdamso-detail-weekday-time">
                        10:00 ~ 21:00
                    </div>
                    <div class="sangdamso-detail-weekend">
                        주말(토)
                    </div>
                    <div class="sangdamso-detail-weekend-time">
                        10:00 ~ 18:00
                    </div>

                    <div class="sangdamso-detail-tel">
                        전화번호
                    </div>
                    <div class="sangdamso-detail-tel-detail">
                        042 - 487 - 0714
                    </div>
                    <div class="sangdamso-detail-adress">
                        주소
                    </div>
                    <div class="sangdamso-detail-adress-detail">
                        대전광역시 중구 계백로 1719<br> 센트리아오피스텔 1503호
                    </div>
                </div>

            </div>
            <div class='mini-line'></div>
            <div class="mentalhealth-sangdamso-simricenter">
                <div class="mentalhealth-sangdamso-img">
                    <img src="${contextPath}/resources/image/now.png">
                </div>
                <div class="mentalhealth-sangdamso-detail">
                    <div class="sangdamso-detail-name">
                        <span> 나우 인사이드</span>
                    </div>
                    <div class="sangdamso-detail-counselor">
                        상담사
                    </div>
                    <div class="sangdamso-detail-personnel">
                        8명
                    </div>
                    <div class="sangdamso-detail-insadamdang">
                        청년인사담당
                    </div>
                    <div class="sangdamso-detail-insadamdang-personnel">
                        2명
                    </div>
                    <div class="sangdamso-detail-career">
                        상담사 평균 경력
                    </div>
                    <div class="sangdamso-detail-career-detail">
                        10년 이상
                    </div>

                    <div class="sangdamso-detail-certificate">
                        자격증 현황
                    </div>
                    <div class="sangdamso-detail-certificate-detail">
                        전문상담사, 상담심리사, 청소년상담사, 임상심리사, 가족치료사, 정신건강증진상담사, 영상영화심리상담사
                    </div>

                    <div class="sangdamso-detail-time">
                        상담시간
                    </div>
                    <div class="sangdamso-detail-weekday">
                        평일
                    </div>
                    <div class="sangdamso-detail-weekday-time">
                        09:00 ~ 20:00
                    </div>
                    <div class="sangdamso-detail-weekend">
                        주말(토)
                    </div>
                    <div class="sangdamso-detail-weekend-time">
                        10:00 ~ 16:00
                    </div>

                    <div class="sangdamso-detail-tel">
                        전화번호
                    </div>
                    <div class="sangdamso-detail-tel-detail">
                        042 - 471 - 3341
                    </div>
                    <div class="sangdamso-detail-adress">
                        주소
                    </div>
                    <div class="sangdamso-detail-adress-detail">
                        대전광역시 서구 둔산로 123번길 15 <br>웅진빌딩 602호 나우 인사이드
                    </div>
                </div>

            </div>
            <div class='mini-line'></div>
            <div class="map">
                <div class="map-title">
                <span>찾아오시는 길</span>

                </div>
            </div>
        </div>

    </div>

	

</body>
</html>