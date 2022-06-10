<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel='stylesheet' href="${contextPath }/resources/css/font.css">


</head>
<style>
    #boardrap {
        width: 1000px;
        height: 6000px;
        margin: 0 auto;
        margin-top: 100px;
        /*                background: red;*/
    }


    #boardtop {
        /*        background:red;*/
        width: 1000px;
        height: 90px;
        margin: 0 auto;
        border-bottom: 1px solid #A4A4A4;
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
        height: 500px;
        margin-top: 100px;
        /*                background: blue;*/
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
        /*                        background: red;*/
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

    .longname {
        width: 1000px;
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
        line-height: 25px;

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
        height: 1100px;
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
    
    .seoryu{
        height: 900px;
    }
    .long{
        height: 1050px;
    }
</style>


<body>
   
<div id='boardrap'>
        <div id='boardtop'>
            <h2>정장대여 사업소개<br></h2><br>
            <br>
            <a href='#'><i class="bi bi-house-door"></i>Home </a> > <a href='#'> 청년정장대여 </a> > <a href='#'>정장대여 사업소개</a>
        </div>


        <div class="mentalhealth-gaeyo">
            <div class='mentalhealth-gaeyo-title'>
                <span>사업개요</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>
                사업명
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp 구직청년 면접용 정장 대여사업</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>
                대여기간
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp 2022. 2. 7.(월) ~ 2022. 12월 초 (예산 소진 시 조기마감)</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>
                지원대상
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp 신청일 현재 주민등록상 거주지가 대전인 미취업 청년</span>
            </div>
            <div class='mentalhealth-gaeyo-name'>

            </div>
            <div class='mentalhealth-gaeyo-detail'>
                &nbsp - 미취업자 : 고용보험 미가입자 또는 주 근무시간 30시간 미만인 자
            </div>
            <div class='mentalhealth-gaeyo-name'>

            </div>
            <div class='mentalhealth-gaeyo-detail'>
                &nbsp - 청년 : 신청일 기준 만 18세 ~ 39세 이하인 자
            </div>
            <div class='mentalhealth-gaeyo-name'>

            </div>
            <div class='mentalhealth-gaeyo-detail'>
                &nbsp ※ 취업면접에 한하며 면접일 이틀 전까지만 신청 가능
            </div>
            <div class='mentalhealth-gaeyo-name'>

            </div>
            <div class='mentalhealth-gaeyo-detail'>
                &nbsp ※ 실제 취업목적이 아닌 경우 제외(모의면접/ 진학면접/ 경조사 등)
            </div>
            <div class='mentalhealth-gaeyo-name'>
                면접기업
            </div>
            <div class='mentalhealth-gaeyo-detail'>
                <span>&nbsp 전국 모든 기업 및 공공기관 등</span>
            </div>


        </div>
        <div class="mentalhealth-jiwon">

            <div class='mentalhealth-jiwon-title'>
                <span> 지원내용</span>
            </div>
            <div class='longname'>면접정장 무료대여</div>
            <div class='mentalhealth-jiwon-name'>
                대여품목
            </div>

            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp - (여성) 재킷, 블라우스, 치마, 구두 등</span>
            </div>
            <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp - (남성) 재킷, 셔츠, 넥타이, 바지, 벨트 등(구두는 대여불가)
            </div>
            <div class='mentalhealth-jiwon-name'>
                대여기간
            </div>

            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp 2박 3일 / 1인당 연 3회까지 가능</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
                대여업체
            </div>

            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp - 가온유니폼 : 여성, 남성 정장 각 1세트(중구 보문로 89 / ☎ 253-5336 / 연중무휴)</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 슈트갤러리 : 여성, 남성 정장 각 1세트(중구 동서대로 1263 / ☎ 524-9007 / 화요일 휴무)
            </div>
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 아모르메이크업 : 여성 정장 1세트(서구 계룡로 339번길 19 / ☎ 301-3436 / 화요일 휴무)
            </div>




        </div>
        <div class="mentalhealth-sincheong">
            <div class='mentalhealth-sincheong-title'>
                <span>신청방법</span>
            </div>
            
            <div class='mentalhealth-jiwon-name'>
                이용방법
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp 온라인 신청 → 대여승인 → 접수증 출력 및 예약 → 방문대여 → 방문반납(2박 3일) → 온라인 만족도조사 참여(상·하반기 문자 발송)</span>
            </div>
            
            <div class='mentalhealth-jiwon-name'>
                온라인 신청
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp - 청춘끼리 홈페이지에서 신청</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp - 신청서 작성 및 증빙서류 업로드
            </div>
            
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp · 청춘광장 홈페이지 내 정장대여신청서 및 개인정보제공 동의서 작성
            </div>
            
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp · 주소지 증빙서류 : 주민등록등본 또는 초본(신청일 기준 1개월 이내 발행분)
            </div>
            
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp · 미취업 증빙서류 : 고용보험 피보험자격 이력내역서 또는 주 30시간 미만 근로계약서
            </div>
            
            <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp · 면접증빙서류 : 유선, 문자, 이메일 등 면접응시를 증빙할 수 있는 자료
            </div>
             <div class='mentalhealth-jiwon-name'>
                대여승인
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp - 기본정보사항 및 증빙서류 확인 후 담당자 승인처리</span>
            </div>
              <div class='longname'>
               
            </div>
            <div class='longname'>
                접수증 출력 및 예약
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp - 대여승인 이후 접수증 출력</span>
            </div>
             <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp - 대여업체 방문예정시간 및 사이즈 여부 유선으로 확인 필수
            </div>
              <div class='mentalhealth-jiwon-name'>
            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp&nbsp · 가온유니폼 ☎ 253-5336 / 슈트갤러리 ☎ 524-9007 / 아모르메이크업 ☎ 301-3436
            </div> <div class='longname'>
               
            </div>
             <div class='mentalhealth-jiwon-name'>
               방문대여
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp  접수증과 신분증을 지참 후 대여업체 방문</span>
            </div>
            
            <div class='mentalhealth-jiwon-name'>
               방문반납
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp  2박 3일 이내 반납</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
               만족도조사 
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp  상·하반기(6월, 11월 예정) 문자로 링크발송 시 참여</span>
            </div>
            <div class='mentalhealth-jiwon-name'>
              문의처
            </div>
            <div class='mentalhealth-jiwon-detail'>
                <span>&nbsp  대전일자리경제진흥원 일자리지원센터 ☎ 719-8337</span>
            </div>

        </div>
        
        
        <div class="mentalhealth-jiwon seoryu">
            <div class='mentalhealth-jiwon-title'>
                <span> 제출서류</span>
            </div>
            <div class='longname'>① 대전거주 증빙자료</div>
            

            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 주민등록 초본 또는 등본 (최근 1개월 이내 발급분만 인정)
            </div>
            <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                &nbsp ☞ 동 주민센터, 무인발급기, 정부24(www.gov.kr) 등
            </div>
            <div class='longname'></div>
            <div class='longname'>② 미취업 증빙자료 (고용보험 이력내역서 또는 근로계약서 제출)</div>
            

            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 고용보험 자격이력내역서 (최근 1개월 이내 발급분만 인정)
☞ 고용 산재보험 토탈 서비스(total.kcomwel.or.kr) 이용
            </div>
            <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                ① 개인/일반근로자 로그인(공인인증서 필요)
            </div>
               <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                ② 증명원 신청/발급
            </div>
               <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                ③ 고용⸱산재보험 자격 이력 내역서
            </div>
               <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
               ④ 선택[보험구분 : 고용 / 조회구분 : 상용] 후 조회
- 주 30시간 미만 증빙 근로계약서
            </div>
           <div class='longname'></div>
            <div class='longname'>③ 면접증빙자료</div>
            

            <div class='mentalhealth-jiwon-detail'>
                &nbsp - 면접 증빙자료
            </div>
            <div class='mentalhealth-jiwon-name'>

            </div>
            <div class='mentalhealth-jiwon-detail'>
                · 실제 면접 보는 회사의 면접확인 서류, 면접통보 문자, 이메일 등
※ 모의면접, 취업 외 목적의 경우 신청불가
            </div>
       
           
            


        </div>
        
        
        


        <div class="mentalhealth-jiwon">
            <div class='mentalhealth-jiwon-title'>
                <span> 신청절차</span>
            </div>
            
            
            <div class='mentalhealth-jiwon-detail jiwon-detail2'>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title">홈페이지 예약</div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail"></div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title">대여 승인</div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail"></div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title">대여업체 방문</div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail"></div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title">정장대여</div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail"></div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class='longname'></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title">반납 ( 2박3일 )</div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail"></div>
                </div>
                <div class="box"><i class="bi bi-chevron-right"></i></div>
                <div class="mentalhealth-jiwon-detail-jeolcha">
                    <div class="mentalhealth-jiwon-detail-jeolcha-title">만족도 조사</div>
                    <div class="mentalhealth-jiwon-detail-jeolcha-detail">유선상담</div>
                </div>

            </div>


        </div>
        <div class="mentalhealth-notice">
            <div class='mentalhealth-notice-title'>
                <span>청년의 의무</span>
            </div>

            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 대여업체(슈트갤러리/아모르메이크업/가온유니폼) 방문 전 전화 예약 필수 입니다. </span>

            </div>
            
          
            <div class='mentalhealth-notice-detail'>
                <span> &nbsp 기한 (2박3일)내 반납해야 합니다.</span>
            </div>

            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 일정이 확정된 취업면접에 한하여 신청 가능합니다. (진학 · 모의면접 및 경조사 제외)</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 온라인을 통해 정장대여를 신청하고 접수증을 받아 대여업체(슈트갤러리/아모르메이크업/가온유니폼)에 제출 바랍니다. </span>
            </div>
            
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 대여업체와 상의 없이 정장대여 기간 초과에 따른 비용은 본인 부담입니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 물품훼손 또는 분실 시 그에 따른 손해배상책임이 따릅니다.</span>
            </div>
             <div class='mentalhealth-notice-detail'>
                <span>&nbsp 반납 시 온라인 만족도조사 참여 필수 입니다. (상·하반기 문자 발송)</span>
            </div>
        </div>
        
        
        <div class="mentalhealth-notice long">
            <div class='mentalhealth-notice-title'>
                <span>유의사항</span>
            </div>

            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 1) 대여신청 및 취소는 방문예정일 2일 전까지만 가능합니다. </span>

            </div>
            <div class='mentalhealth-notice-detail'>
                &nbsp&nbsp EX) 3월 20일 방문예정일 경우, 3월 18일까지만 신청 및 취소 가능

            </div>
            
          
            <div class='mentalhealth-notice-detail'>
                <span> &nbsp 2) 예약신청 승인은 월요일 9시 ~ 금요일 18시까지만 진행 되오니 유의하시기 바랍니다. (주말, 공휴일, 대체휴무일 등은 승인불가)</span>
            </div>

            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 3) 신청서 및 개인정보제공동의서는 본인이 작성하여야 하며</span>
            </div>
            <div class='mentalhealth-notice-detail'>
               &nbsp&nbsp 대리신청은 불가하오니 대여업체 방문시 본인이 직접 방문하시기 바랍니다.
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 4) 신청서 및 면접관련 증빙서류에 기입한 정보가 부정확하거나, 확인이 어려운 경우 추가로 증빙자료를 요구할 수 있으며 </span>
            </div>
            <div class='mentalhealth-notice-detail'>
                &nbsp&nbsp 이에 따르지 않을 시 정장 대여가 불가능하오니 참고 바랍니다. 
            </div>
            
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 5) 대여연장은 불가능하며 반납 지연시 연체료가 발생할 수 있습니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 6) 물품 훼손 또는 분실 시 그에 따른 손해배상책임(금전배상 원칙)이 따르며</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                &nbsp&nbsp 특히 고의로 멸실 또는 반환하지 않을 경우 형사처벌 대상이 될 수 있습니다.
            </div>
             <div class='mentalhealth-notice-detail'>
                &nbsp&nbsp※ 물품 훼손 또는 분실로 사용이 불가능한 경우 대여물품 시중판매가격에 해당하는 금액을 청년에게 청구예정
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 7) 지원대상이 아닌 것으로 확인된 경우 지원이 중단되며 대여물품을 즉시 반환하여야 합니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 8) 지원대상이 아니거나 부정한 방법으로 정장을 대여한 것이 추후 드러난 경우 정장대여금을 청구할 수 있습니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 9) 물품을 반환하지 않거나, 부정한 방법으로 정장을 대여하는 경우 추후 정장대여사업에 참여할 수 없습니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 10) 대여신청 후 취소하지 않거나 방문하지 않은 경우 대여 횟수 1회 차감됩니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                <span>&nbsp 11) 잔여한도(1인 연 3회)가 남아있더라도 예산 소진시 정장대여가 불가하며,잔여한도는 이월되지 않습니다.</span>
            </div>
            <div class='mentalhealth-notice-detail'>
                 &nbsp&nbsp ※ 공고문, 유의사항 미확인에 따른 모든 문제나 불이익에 대해서는 책임지지 않으므로 반드시 확인하시기 바랍니다.
            </div>
        </div>
        
        <div class="mentalhealth-inquiry">
            <div class='mentalhealth-inquiry-title'>
                <span>문의처</span>
            </div>

            <div class='mentalhealth-inquiry-detail'>
                <span>&nbsp (재)대전일자리경제진흥원 대전일자리지원센터 ☎ 042)719-8337 </span>

            </div>

        </div>




    </div>



</body></html>
