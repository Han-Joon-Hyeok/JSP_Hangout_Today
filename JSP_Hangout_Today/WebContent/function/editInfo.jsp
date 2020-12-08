<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.Hangout.userInfoDAO" %>
<%@ page import="org.Hangout.userInfoDTO" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

userInfoDTO dto = userInfoDTO.getInstance();
dto.setName(request.getParameter("name"));
dto.setPwd(request.getParameter("password"));
dto.setAddr(request.getParameter("address"));
dto.setCategory(request.getParameter("category"));
dto.setUid((String)session.getAttribute("sessionID"));


%>

<%
userInfoDAO dao = userInfoDAO.getInstance();
dao.editInfo(dto);

response.sendRedirect("../jsp/mypage.jsp");
%></body>
</html>