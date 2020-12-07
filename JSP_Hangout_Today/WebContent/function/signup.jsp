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
	dto.setUid(request.getParameter("id"));
	dto.setPwd(request.getParameter("password"));
	dto.setName(request.getParameter("name"));
	dto.setSex(request.getParameter("sex"));
	dto.setBday(request.getParameter("bday"));
	dto.setEmail(request.getParameter("email"));
	dto.setCategory(request.getParameter("category"));
	dto.setAddr(request.getParameter("addr"));
%>

<%
	userInfoDAO dao = userInfoDAO.getInstance();
	dao.addUser(dto);
%>

<jsp:forward page="main.jsp"></jsp:forward>

</body>
</html>