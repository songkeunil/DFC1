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
  /*       * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        } */

        .ypintro_wrap {
            margin: 0 auto;
            width: 1000px;
            height: auto;
  /*           background-position: center;
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


        ul#ypintro_container_top_content_box > .on {
            border-color: #18A8F1;
            background: #18A8F1;
        }

        ul#ypintro_container_top_content_box > .on > a {
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
       /*  ul {
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
                    <li class="on"><a href="${contextPath}/yp/ypintro_Ustudent.do" target="_self">대학생</a></li>
                    <li><a href="${contextPath}/yp/ypintro_BeStartup.do" target="_self">취창업준비생</a></li>
                    <li><a href="${contextPath}/yp/ypintro_Worker.do" target="_self">취창업자</a></li>
                    
                </ul>
            </div>
        </div>
        <div class="ypintro_container_bot">
            <div class="ypintro_container_bot_title">
                <h4 class="sc_item-title">대학생</h4>
            </div>
            <div class="ypintro_container_bot_content">
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>대전형 코업(co-op)청년 뉴리더</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>대학생 직무체험으로 조기 취업 활성화</p>
                            </li>
                            <li>
                                <h4>지원대상</h4>
                                <p>지역 내 대학교 재학생으로 18세 이상 ~ 39세 이하(졸업유예자, 휴학생 포함)</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전광역시 경제통상진흥원/719 8337</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="https://www.djba.or.kr/board?menuId=MENU00354&amp;siteId=null" target="_blank">바로가기</a></li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>대학 일자리센터 운영</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>학년별, 전공별 진로지도, 취업지원 강화 및 취업지원서비스 제공</p>
                            </li>
                            <li>
                                <h4>지정대학</h4>
                                <p>4개 대학 / 한남대, 배재대, 한밭대, 충남대</p>
                            </li>

                        </ul>
                    </li>
                    <li class="work_list_link"><a href="http://job.hannam.ac.kr/main/" target="_blank">한남대 바로가기</a><a href="https://www.pcu.ac.kr/www/05_comm/comm_0101.html" target="_blank">배재대 바로가기</a>
                        <a href="http://hanbat.jobbook.co.kr/bbs/login.php" target="_blank">한밭대 바로가기</a>
                        <a href="https://job.cnu.ac.kr/job/index.do" target="_blank">충남대 바로가기</a>
                    </li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>대학 취업역량강화지원</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>지역 우수 인재의 취업 지원을 통해 취업 경쟁력 확보와 다양한 취업 정보 제공</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전광역시 경제통상진흥원 / 719-8323</p>
                            </li>
                        </ul>
                    </li>
                    <li class="work_list_link"><a href="https://www.djba.or.kr/board?menuId=MENU00401&amp;siteId=null" target="_blank">바로가기</a></li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>대학혁신스타트업타운 조성 및 운영</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>청년 일자리 조성 및 기술 창업 중심지 구축</p>
                            </li>
                            <li>
                                <h4>위치</h4>
                                <p>충남대, 카이스트 일원 / 유성구, 궁동</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>기업창업지원과 / 270-3710</p>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="work_list_wrap">
                    <li class="work_list_title">
                        <h2>사회적경제 활성화를 위한 대학청년창업지원</h2>
                    </li>
                    <li class="work_list_content">
                        <ul class="list_txt">
                            <li>
                                <h4>목적</h4>
                                <p>지역대학과 연계한 사회적경제 창업패키지 및 서비스를 제공하여 사회적경제기업 육성 도모</p>
                            </li>
                            <li>
                                <h4>공모대상</h4>
                                <p>지역 대학별 링크사업단 및 사회적경제지원단, 대학생 창업관련 지원당 등</p>
                            </li>
                            <li>
                                <h4>문의</h4>
                                <p>대전광역시 경제통상진흥원 / 380-3032</p>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body></html>

