<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import = "kr.ac.mju.teamproject.dao.userInfoDAO" %>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>

<%


String userID = request.getParameter("userID");
String userPWD = request.getParameter("PWD");

userInfoDAO dao = userInfoDAO.getInstance();

boolean result = dao.login(userID, userPWD);
%>

<%
if(result){
	session.setAttribute("sessionId", userID);
	session.setAttribute("sessionPwd", userPWD);
	response.sendRedirect("mainpage.jsp");
}else{
	out.print("check your id & pwd");
}
%>

</body>
</html>