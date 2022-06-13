<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
     <sec:authorize access="isAuthenticated()"></sec:authorize>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="articlesList"  value="${articlesMap.articlesList}"  />
<c:set var="section"  value="${articlesMap.section}"  />
<c:set var="pageNum"  value="${articlesMap.pageNum}"  />
<c:set var="totArticles"  value="${articlesMap.totArticles}"/>

<%
  request.setCharacterEncoding("UTF-8");
%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <style>
/*         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        } */

        .ypintro_wrap {
            margin: 0 auto;
            width: 1000px;
            height: auto;
      /*       background-image: url(logo/bonobono.jpg);
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover; */
        }


        /*        청년정책소개 페이지 상단영역*/
        .ypintro_container_top {
            width: 100%;
            height: auto;
        }

        .ypintro_container_top_wrap {}

        .ypintro_container_top_title {
            width: 100%;
            padding: 55px 0 19px;
            margin-bottom: 50px;
            border-bottom: 1px solid #999;
            overflow: hidden;


        }

        .ypintro_container_top_content {
            width: 100%;
            height: 160px;
            /*            background: red;*/
        }

        .ypintro_container_top .ypintro_container_top_content ul#ypintro_container_top_content_box {
            position: relative;
            width: 100%;
            font-size: 0;
            text-align: center;
            line-height: 0;
        }

        ul#ypintro_container_top_content_box li {
            display: inline-block;
            width: calc((100% - 30px) / 5);
            height: 50px;
            margin-right: 10px;
            border-radius: 4px;
            border: 1px solid #dedede;
            background: #f8f8f8;
            overflow: hidden;
            transition: all 0.5s;
        }

        ul#ypintro_container_top_content_box li:hover {
            background: #18A8F1;
            transition: all 0.5s;
            border-color: #18A8F1;
        }

        ul#ypintro_container_top_content_box li:hover a {
            color: white;
        }


        ul#ypintro_container_top_content_box>.on {
            border-color: #18A8F1;
            background: #18A8F1;
        }

        ul#ypintro_container_top_content_box>.on>a {
            color: white;
        }

        ul#ypintro_container_top_content_box a {
            width: 100%;
            height: 100%;
            text-align: center;
            line-height: 48px;
            font-size: 18px;
            color: #555;
            font-weight: 300;
            transition: all 0.3s;
        }


        /*        청년정책소개 페이지 하단영역*/
        .ypintro_container_bot {
            margin: 0 auto;
            width: 100%;
            height: auto;
            padding-top: 10px;
        }

        .ypintro_container_bot_title {
            width: 100%;
            height: 50px;

        }

        .ypintro_container_bot_content {
            padding-bottom: 90px;
            width: 100%
        }

        .work_list_wrap {
            width: 100%;
            height: auto;
            position: relative;
            margin-bottom: 20px;
            overflow: hidden;
            background: #fff;
        }

        .work_list_title {
            width: 100%;
            background: #18A8F1;
            padding: 10px 20px;
        }

        .sc_item-title {
            height: 20px;
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 20px;


            border-left: 5px solid;
            border-color: #5e4b8d;
        }

        .work_list_title>h2 {
            color: #fff;
            font-size: 16px;
            line-height: 16px;
            font-weight: 400;
        }

        .work_list_content {
            width: 100%;
            padding: 10px 20px;
            border: 1px solid #ddd;
        }

        .work_list_wrap .work_list_content>.list_txt {
            width: 100%;
            height: auto;
            position: relative;
            overflow: hidden;
        }

        .work_list_wrap .work_list_content>.list_txt>li {
            width: 100%;
            overflow: hidden;
            margin-bottom: 10px;
            border-bottom: 1px dashed #ddd;
            padding-bottom: 7px;
        }

        .work_list_link {
            width: 100%;
            padding: 10px 20px;
            border: 1px solid #ddd;
            border-top: 0;
        }

        .work_list_wrap .work_list_link>a {
            display: inline-block;
            background-color: #f8f8f8;
            border: 1px solid #dedede;
            border-radius: 5px;
            padding: 5px 10px;
            font-weight: 400;
            margin-right: 10px;
        }

        h2.sc-item-title {
            height: 20px;
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 20px;
        }

        h2.sp_title {
            float: left;
            width: auto;
            font-size: 30px;
            line-height: 30px;
            font-weight: 500;
        }

        /*        전역옵션*/
 /*        ul {
            list-style: none;
            width: 100%;
            overflow: hidden;
            margin: 0;
        }

        a {
            text-decoration: none;
        } */


        .work_list_wrap .work_list_content>.list_txt>li>h4:before {
            content: '';
            width: 5px;
            height: 5px;
            background-color: #18A8F1;
            border-radius: 5rem;
            display: inline-block;
            margin-bottom: 4px;
            margin-right: 5px;
        }

        .work_list_wrap .work_list_content>.list_txt>li>h4 {
            font-size: 16px;
            color: rgb(40, 40, 40);
            position: relative;
            display: inline-block;
            margin-bottom: 4px;
            vertical-align: top;
            margin-top: 3px;
        }

        .work_list_wrap .work_list_content>.list_txt>li>p {
            font-size: 15px;
            color: #555;
            font-weight: 300;
            padding-left: 10px;
            display: inline-block;
            line-height: 29px;
            text-align:left;
        }

        a:link,
        a:visited {
            color: #000;
            text-decoration: none;
        }

        a:active {
            color: #18A8F1;
        }

        ul.sp_location {
            float: right;
            width: auto;
            overflow: hidden;
        }

        ul.sp_location li {
            float: left;
            font-size: 0;
            line-height: 30px;
        }

        ul.sp_location li a {
            display: inline-block;
            vertical-align: middle;
            font-size: 13px;
            color: #777;
            line-height: 30px;
            letter-spacing: 0;
        }


        .inct_tab_mt_b {
            display: block !important;
        }

        ul.sp_location li:after {
            content: '>';
            display: inline-block;
            vertical-align: middle;
            width: 30px;
            height: 15px;
            text-align: center;
            font-size: 13px;
            color: #777;
            line-height: 15px;
        }

        ul.sp_location li:last-child:after {
            content: none;
        }

		#boardtop {
	/*        background:red;*/
	width: 1000px;
	height: 90px;
	margin: 0 auto;
	border-bottom: 1px solid #A4A4A4;
	margin-top: 100px;
	margin-bottom: 50px;
}

#boardtop a {
	text-decoration: none;
	color: #848484;
}

#boardtop h2 {
	width: 288px;
	height: 30px;
	border-bottom: 3px solid #18A8F1;
}
    </style>



</head>

<body>
    <div class="ypintro_wrap">
        <div class="ypintro_container_top">
           <div id='boardtop'>
				<h2>
					청년정책소개<br>
				</h2>
				<br> <br> <a href='#'><i class="bi bi-house-door"></i>Home
				</a> > <a href='#'> 청년정책 </a> > <a href='#'>청년정책소개</a>
			</div>
            <div class="ypintro_container_top_content">
                <ul id="ypintro_container_top_content_box">
                    <li><a href="${contextPath}/yp/ypintro_Ustudent.do" target="_self">대학생</a></li>
                    <li><a href="${contextPath}/yp/ypintro_BeStartup.do" target="_self">취창업준비생</a></li>
                    <li class="on"><a href="${contextPath}/yp/ypintro_Worker.do" target="_self">취창업자</a></li>
                    
                </ul>
            </div>
        </div>
        <div class="ypintro_container_bot">
            <div class="ypintro_container_bot_title">
                <h4 class="sc_item-title">취창업자</h4>
            </div>
            <div class="ypintro_container_bot_content">
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>청년창업카드 지원</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>창업 성공 숙성기간 동안 생존할 수 있도록 최소한의 지원</p>
                            </li>
                            <li>
                                <h4>기간</h4>
                                <p>20. 4~5월 신청자 모집 및 선정</p>
                            </li>
                            <li>
                                <h4>지원대상</h4>
                                <p>대전시 거주 및 창업 후 3년 이내, 연매출액 2억원 이하의 업체를 운영 중인 만 18~39세까지의 청년창업자 300명</p>
                            </li>
                            <li>
                                <h4>내용</h4>
                                <p>1인당 300만원(50만원X6개월)</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전광역시 경제통상진흥원 / 719-8335, 8341</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="https://www.djba.or.kr/board?menuId=MENU00354&amp;siteId=null" target="_blank">바로가기</a></li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>대전 이노스타트업 육성</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>기술기반의 혁신적 아이템을 보유한 청년창업자를 대상으로 사업고도화를 통한 성공창업 지원</p>
                            </li>
                            <li>
                                <h4>지원대상</h4>
                                <p>창업 3년 이내 초기기업/대표자가 만 39세 이하 청년</p>
                            </li>
                            <li>
                                <h4>내용</h4>
                                <p>BM개발, IR역량강화, 사업화 지원, 투자지원</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전창조경제혁신센터 / 385-0771</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="http://dci.or.kr/" target="_blank">바로가기</a>
                    </li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>청년농업인 영농정착지원</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>농업 분야 진출을 촉진하는 선순화 체계 구축</p>
                            </li>
                            <li>
                                <h4>지원대상</h4>
                                <p>만 18세 ~ 40세 미만(영농경력 3년 이하(독립경영 예정자 포함)의 영농의지가 큰 청년농업인)</p>
                            </li>
                            <li>
                                <h4>내용</h4>
                                <p>○ 영농경력에 따라 차등 지원<br>○ 자금용도: 농가 경영비 및 일반 가계자금<br>○ 지원방식: 청년농업 희망카드 발급</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>농림사업정보시스템/1670-0255</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="https://uni.agrix.go.kr/" target="_blank">바로가기</a></li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>청년농업인 특성화육성 시범사업</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>청년농업 CEO 양성을 위한 경쟁력강화 기반조성 지원체계 구축</p>
                            </li>
                            <li>
                                <h4>접수기간</h4>
                                <p>사업공고 및 신청접수(2월)</p>
                            </li>
                            <li>
                                <h4>지원대상</h4>
                                <p>만 39세 이하 대전지역 농업인</p>
                            </li>
                            <li>
                                <h4>내용</h4>
                                <p>○ 신제품 개발, 신기술 적용 가공 ․ 생산 상품화 시설 및영농 현장장비 등 기반조성</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전농업기술센터 / 270-6923</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="https://www.daejeon.go.kr/far/index.do" target="_blank">바로가기</a></li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>선도농가청년농업인 현장실습</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>청년농업인 영농기술, 품질관리, 경영, 마케팅 등에 필요한 단계별 현장실습(체험 등) 지원을 통한 농업·농촌 지역 연착륙 기여</p>
                            </li>
                            <li>
                                <h4>접수기간</h4>
                                <p>사업공고 및 신청접수(5월)</p>
                            </li>
                            <li>
                                <h4>지원대상</h4>
                                <p>농촌지역 5년 이내 귀농인 또는 만 40미만 청장년층</p>
                            </li>
                            <li>
                                <h4>내용</h4>
                                <p>○ 신규농업인 대상 품목중심 기초영농교육·코칭·멘토링</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전농업기술센터 / 270-6923</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="https://www.daejeon.go.kr/far/index.do" target="_blank">바로가기</a></li>
                </ul>
            </div>
        </div>
    </div>
</body>

</html>

