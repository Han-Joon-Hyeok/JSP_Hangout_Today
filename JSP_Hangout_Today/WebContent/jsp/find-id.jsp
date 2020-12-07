<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp" %>

<section>
    <div id="main-wrapper" class="pink-box">
        <div id="login-wrapper">
            <div id="title">
                <h2>아이디 찾기</h2>
            </div>
            <form action="find-id-process.jsp" method="POST">
                <div class="login-box">
                    <h3>이메일</h3>
                    <input type="email" name="email" placeholder="가입했던 이메일을 입력하세요.">
                </div>
                <div class="login-box">
                    <input type="submit" value="아이디 찾기" class="submit">
                </div>
            </form>
            <div class="create-box">
                <p>아직 회원이 아니라면?</p>
                <button class="black-btn" onclick="location.href='register.jsp'">회원가입</button>
            </div>
        </div>
    </div>
</section>

<%@include file="./footer.jsp" %>