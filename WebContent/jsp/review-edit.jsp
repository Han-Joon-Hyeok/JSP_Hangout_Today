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
                <a href="login.html">
                    <h2>로그인</h2>
                </a>
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
                            <a href="moim.html" class="off">모임 게시판</a>
                            <a href="review.html" class="selected">리뷰 게시판</a>
                        </h5>
                    </div>
                    <div class="title-right">
                        <button class="map"><a href="#">✍ 리뷰 작성하기</a></button>
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
                    <div class="review">
                        <div class="user-info">
                            <div class="icon-area">
                                <span class="icon">👱‍♂️</span>
                            </div>
                            <div class="user-area">
                                <h3>서대문구핵주먹</h3>
                                <p>서울 서대문구 <span>작성일 : (오늘날짜)</span></p>
                            </div>
                        </div>
                        <div class="moim-review">
                            <form action="" method="POST" class="review-form">
                                <label for="review-title" class="block">모임명 : </label><input type="text" name="title" id="review-title" class="review-input" placeholder="모임명 입력" required>
                                <label for="review-content" class="block">리뷰내용 : </label><textarea name="content" id="review-content" placeholder="리뷰 내용을 입력해주세요!" required></textarea>
                                <div class="create-comment">
                                    <div class="button-area">
                                        <button class="btn cancel" type="reset">
                                            취소
                                        </button>
                                        <button class="btn submit" type="submit">
                                            작성
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
        $(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $("#TOP_BTN").fadeIn();
                } else {
                    $("#TOP_BTN").fadeOut();
                }
            });

            $("#TOP_BTN").on('click', function () {
                $('html, body').stop().animate({
                    scrollTop: 0
                }, 1000);
                return false;
            });
        });
    </script>
</body>

</html>