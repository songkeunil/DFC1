<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
    	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
    	crossorigin="anonymous">


    </script>



    <style>
        /*     로고 색   color: #18A8F1 */
        @font-face {
            font-family: 'Eoe_Zno_L';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/Eoe_Zno_L.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        /*         부트스트랩 네비 시작  */

        .nav {

            width: 100%;
            height: 50px;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            font-weight: bold;
            font-size: 17px;


        }

        .nav-item {
            margin: 0 auto;
        }

        .dropdown-menu {
            width: 500px;
            height: 200px;

        }

        /*         부트스트랩 네비 끝 */

        #wrap {
            width: 100%;
            height: 2000px;
            font-family: 'Eoe_Zno_L';

        }

        #logo {
            margin-left: 30px;
            width: 282;
            height: 63;



        }

        .nav-link:hover {
            color: #000;
            display: inline-block;
            margin: 0;
            text-transform: uppercase;
        }

        .nav-link:after {
            display: block;
            content: '';
            border-bottom: solid 3px #18A8F1;
            transform: scaleX(0);
            transition: transform 250ms ease-in-out;
        }

        .nav-link:hover:after {
            transform: scaleX(1);
        }

        .nav-link.fromRight:after {
            transform-origin: 100% 50%;
        }

        .nav-link.fromLeft:after {
            transform-origin: 0% 50%;
        }

    </style>
</head>

<body>
    <div id='wrap'>
        <div id='top'>
            <img id='logo' src='../logo/%EB%A1%9C%EA%B3%A0_%EB%B3%B5%EC%82%AC%EB%B3%B8-%ED%81%AC%EA%B8%B0%EC%A1%B0%EC%A0%95-002.png'>
            <div id='search'></div>
            <div id='login'></div>
        </div>



        <!--<!--  부트스트랩 네비 시작 -->



        <ul class="nav justify-content-center">

            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">청춘끼리</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">청년주간</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">청춘공간</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">청년마음건강</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">청년정장대여</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">대청넷</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">커뮤니티</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" style="color: black">청년의목소리</a>
            </li>


        </ul>

        <!--  부트스트랩 네비 끝-->


    </div>
</body>

</html>
