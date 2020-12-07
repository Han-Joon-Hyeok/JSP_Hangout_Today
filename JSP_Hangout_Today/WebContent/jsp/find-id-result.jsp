<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./header.jsp" %>



<section>
    <div id="main-wrapper" class="pink-box">
        <div id="login-wrapper">
            <div id="title">
                <h2>아이디 찾기</h2>
            </div>
            <div class="login-box">
                <h3>회원님의 아이디는</h3>
                <%

					if(session.getAttribute("UId") != null){
						String UId = (String)session.getAttribute("UId");
						out.println("<h3><span class='find-id'>"+UId+"</span> 입니다.</h3>");
					}
				
				%>
            </div>
            <div class="find">
                    <a href="find-pw.jsp">비밀번호 찾기</a>
                </div>
            <div class="create-box">
                <button class="black-btn" onclick="location.href='login.jsp'">로그인</button>
            </div>
        </div>
    </div>
</section>

<%@include file="./footer.jsp" %>