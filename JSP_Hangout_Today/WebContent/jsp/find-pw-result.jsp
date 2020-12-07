<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp" %>



<section>
    <div id="main-wrapper" class="pink-box">
        <div id="login-wrapper">
            <div id="title">
                <h2>비밀번호 찾기</h2>
            </div>
            <div class="login-box">
                <h3>회원님의 비밀번호는</h3>
                <%

					if(session.getAttribute("pwd") != null){
						String pwd = (String)session.getAttribute("pwd");
						out.println("<h3><span class='find-id'>"+pwd+"</span> 입니다.</h3>");
					}
				
				%>
            </div>
			<div class="login-box">
                <button class="black-btn" onclick="location.href='login.jsp'">로그인</button>
            </div>
        </div>
    </div>
</section>

<%@include file="./footer.jsp" %>