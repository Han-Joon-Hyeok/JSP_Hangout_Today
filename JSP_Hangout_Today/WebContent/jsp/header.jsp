<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘머해 : 실시간 취미 및 위치 기반 소모임 플랫폼</title>
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/slick.css">
    <link rel="stylesheet" type="text/css" href="../css/slick-theme.css">
</head>
<body>
    <header>
        <div class="logo">
            <span class="icon big">🏃‍♂️</span>
            <span><a href="main.jsp">노는게 제일 좋아!</a></span>
        </div>
        <nav>
        	<div class="login">
        	<%
        		if(session.getAttribute("sessionID") == null ){
        			out.print("<a href='login.jsp'><h2>로그인</h2></a>");
        		}
        		else{
        			String name = (String)session.getAttribute("name");
        			out.print("<h2>"+name+"님 반갑습니다.</h2>");
        		}
        	%>
            </div>
                
            
            <div id="line-wrapper">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <div id="menu">
                <a href="main.jsp"><span class="icon big">🏠</span>홈으로</a>
                <a href="mypage.jsp"><span class="icon big">📄</span>마이페이지</a>
                <a href="#"><span class="icon big">🔥</span>오늘의 모임</a>
                <%
        		if(session.getAttribute("sessionID") != null ){
        			out.println("<a href='logout.jsp''><span class='icon big'>👋</span>로그아웃</a>");
        		}
        		%>
            </div>
        </nav>
    </header>