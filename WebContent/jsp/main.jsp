<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘머해 : 모임 게시판</title>
    <link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>
    <header>
        <div class="logo">
            <span class="icon big">🏃‍♂️</span>
            <span><a href="main.html">노는게 제일 좋아!</a></span>
        </div>
        <nav>
            <div class="login">
                <a href="login.html"><h2>로그인</h2></a>
            </div>
            <div id="line-wrapper">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <div id="menu">
                <a href="main.html"><span class="icon big">🏠</span>홈으로</a>
                <a href="mypage.html"><span class="icon big">📄</span>마이페이지</a>
                <a href="#"><span class="icon big">🔥</span>오늘의 모임</a>
            </div>
    </header>
    <section>
        <div id="main-wrapper">
            <div id="title">
                <h1>오늘머해?</h1>
                <h3>취향 및 위치 기반 실시간 소모임</h3>
            </div>

            <div class="today category">
                <div class="title">
                    <div class="title-left">
                        <h4>게시판 목록</h4>
                        <h5>
                            <a href="moim.html" class="selected">모임 게시판</a>
                            <a href="review.html" class="off">리뷰 게시판</a>
                        </h5>
                    </div>
                    <div class="title-right">
                        <button class="map"><a href="moim-edit.html">🗽 새로운 모임 만들기</a></button>
                    </div>
                </div>
                <div class="moim-wrapper">
                    <div class="list-item moim">
                        <span class="icon">📕</span>
                        <h3>독서</h3>
                        <h4>마음의 양식을 쌓아보아요</h4>
                        <p>40개 모임</p>
                    </div>
                </div>
                <div class="category-list">
                    <div class="list-item post">
                        <span class="icon">👩</span>
                        <h3>경기도 파주시 금촌2동</h3>
                        <h4>렘브란트와 고대 미술사에 관해서</h4>
                        <p>(2020.11.17 18:00~20:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👧</span>
                        <h3>서울특별시 서대문구 남가좌동</h3>
                        <h4>독서 토론 같이 하실래요?</h4>
                        <p>(2020.11.18 14:00~15:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👶</span>
                        <h3>서울특별시 마포구 서교동</h3>
                        <h4>비트코인과 주식, 투자의 왕도</h4>
                        <p>(2020.11.18 19:00~20:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👳‍♂️</span>
                        <h3>대구광역시 중구 성내1동</h3>
                        <h4>대구 역사의 시작, 그 흔적을 찾아서</h4>
                        <p>(2020.11.19 10:00~12:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👮‍♀️</span>
                        <h3>서울특별시 용산구 남영동</h3>
                        <h4>독립운동의 뿌리를 찾아서</h4>
                        <p>(2020.11.20 14:00~16:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">💂‍♂️</span>
                        <h3>강원도 강릉시 송정동</h3>
                        <h4>도깨비는 진짜 있을까?</h4>
                        <p>(2020.11.21 18:30~20:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">👷‍♀️</span>
                        <h3>제주특별자치도 서귀포시 정방동</h3>
                        <h4>이중섭, 파란만장했던 발자취</h4>
                        <p>(2020.11.22 14:00~15:00)</p>
                    </div>
                    <div class="list-item post">
                        <span class="icon">🦸‍♂️</span>
                        <h3>전라남도 목포시 용당2동</h3>
                        <h4>같이 책 읽어요 :)</h4>
                        <p>(2020.11.22 18:00~20:00)</p>
                    </div>
                </div>
            </div>

            <button class="map-button" onclick="location.href='#'">
                <h2>🗺지도에서 모임 전체 보기</h2>
            </button>
        </div>
    </section>
    
    
    <footer>
        <p class="copyright">
            Copyright ⓒ 오래다녔조 <br><br>
            2020-2학기 [객체지향언어] 팀프로젝트 <br><br>
            김영웅 송원준 한준혁
        </p>
    </footer>

    <a id="TOP_BTN" href="#">👆</a>
    
    <script src="js/base.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="js/category.js"></script>

    <script>
        $(function(){
            $(window).scroll(function(){
                if ($(this).scrollTop() > 100){
                    $("#TOP_BTN").fadeIn();
                }
                else{
                    $("#TOP_BTN").fadeOut();
                }
            });

            $("#TOP_BTN").on('click', function(){
                $('html, body').stop().animate({scrollTop:0}, 1000);
                return false;
            });
        });
    </script>
</body>
</html>