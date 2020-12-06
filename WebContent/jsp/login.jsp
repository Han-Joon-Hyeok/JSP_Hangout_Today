<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘머해 : 로그인</title>
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
                <a href="#"><span class="icon big">📄</span>마이페이지</a>
                <a href="#"><span class="icon big">🔥</span>오늘의 모임</a>
            </div>
    </header>
    <section>
        <div id="main-wrapper" class="pink-box">
            <div id="login-wrapper">
                <div id="title">
                    <h1>로그인</h1>
                </div>
                <form action="" method="POST">
                    <div class="login-box">
                        <h3>아이디</h3>
                        <input type="text" name="id" placeholder="ID">
                    </div>
                    <div class="login-box">
                        <h3>비밀번호</h3>
                        <input type="password" name="password" placeholder="PASSWORD">
                    </div>
                    <div class="login-box">
                        <input type="submit" value="로그인" class="submit">
                    </div>
                    <div class="login-box">
                        <input type="submit" value="NAVER 소셜 로그인" class="social naver">
                    </div>
                </form>
                <div class="find">
                    <a href="#">아이디가 기억나지 않으시나요?</a>
                    <a href="#">비밀번호 찾기</a>
                </div>
                <div class="create-box">
                    <p>아직 회원이 아니라면?</p>
                    <button class="black-btn" onclick="location.href='register.html'">회원가입</button>
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
    <script src="js/base.js"></script>
</body>
</html>