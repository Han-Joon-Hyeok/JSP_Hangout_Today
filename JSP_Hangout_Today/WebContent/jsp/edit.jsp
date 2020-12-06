<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file='header.jsp' %>

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
    
<%@ include file='footer.jsp' %>