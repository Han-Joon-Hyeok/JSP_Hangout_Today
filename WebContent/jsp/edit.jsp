<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘머해 : 정보수정</title>
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
                <a href="#"><h2>로그인</h2></a>
            </div>
            <div id="line-wrapper">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <div id="menu">
                <a href="#"><span class="icon big">🏠</span>홈으로</a>
                <a href="#"><span class="icon big">📄</span>마이페이지</a>
                <a href="#"><span class="icon big">🔥</span>오늘의 모임</a>
            </div>
    </header>
    <section>
        <div id="main-wrapper" class="pink-box">
            <div id="login-wrapper">
                <div id="title">
                    <h1>정보수정</h1>
                </div>
                <form action="" method="POST">
                    <div class="login-box">
                        <h3>아이디</h3>
                        <input type="text" name="id" placeholder="ID" readonly>
                    </div>
                    <div class="login-box">
                        <h3>비밀번호</h3>
                        <input type="password" name="password" placeholder="PASSWORD">
                    </div>
                    <div class="login-box">
                        <h3>성별</h3>
                        <div class="select">
                            <label><input type="radio" class="radio edit" value="male" name="sex" onclick="return(false)"> 🙋‍♂남</label>
                            <label><input type="radio" class="radio edit" value="female" name="sex" onclick="return(false)">🙋여</label>
                        </div>
                    </div>
                    <div class="login-box">
                        <h3>생년월일</h3>
                        <input type="date" name="birthdate" readonly>
                    </div>
                    <div class="login-box">
                        <h3>Email</h3>
                        <input type="email" name="email" placeholder="EMAIL" readonly>
                    </div>
                    <div class="login-box">
                        <h3>지역</h3>
                        <input type="text" name="address" placeholder="구 단위까지 입력">
                    </div>
                    <div class="login-box">
                        <h3>관심사</h3>
                        <input type="text" name="address" placeholder="어떤 관심사든 OK">
                    </div>
                    <div class="create-box">
                        <input type="submit" class="black-btn" value="정보수정">
                    </div>
                </form>
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