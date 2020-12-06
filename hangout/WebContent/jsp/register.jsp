<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='header.jsp' %>

 <section>
        <div id="main-wrapper" class="pink-box">
            <div id="login-wrapper">
                <div id="title">
                    <h1>회원가입</h1>
                </div>
                <form action="" method="POST">
                    <div class="login-box">
                        <h3>아이디</h3>
                        <input type="text" name="id" placeholder="ID">
                        <button class="black-btn">중복체크</button>
                    </div>
                    <div class="login-box">
                        <h3>닉네임</h3>
                        <input type="text" name="id" placeholder="ID">
                    </div>
                    <div class="login-box">
                        <h3>비밀번호</h3>
                        <input type="password" name="password" placeholder="PASSWORD">
                    </div>
                    <div class="login-box">
                        <h3>비밀번호 확인</h3>
                        <input type="password" name="password_confirm" placeholder="PASSWORD 재입력">
                    </div>
                    <div class="login-box">
                        <h3>성별</h3>
                        <div class="select">
                            <label class="radio"><input type="radio" class="radio" value="male" name="sex"> 🙋‍♂남</label>
                            <label class="radio"><input type="radio" class="radio" value="female" name="sex">🙋여</label>
                        </div>
                    </div>
                    <div class="login-box">
                        <h3>생년월일</h3>
                        <input type="date" name="birthdate">
                    </div>
                    <div class="login-box">
                        <h3>Email</h3>
                        <input type="email" name="email" placeholder="EMAIL">
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
                        <input type="submit" class="black-btn" value="가입하기">
                    </div>
                </form>
            </div>
        </div>
    </section>
    
    
<%@ include file='footer.jsp' %>