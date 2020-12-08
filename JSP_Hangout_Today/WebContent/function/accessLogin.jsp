<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "org.Hangout.userInfoDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");

String uid = request.getParameter("id");
String pwd = request.getParameter("password");
String name;
String addr;
String category;

userInfoDAO dao = userInfoDAO.getInstance();

String[] result = dao.login(uid, pwd);
%>

<%
if(result[0]=="true"){
	name = result[1];
	addr = result[2];
	category = result[3];
	session.setAttribute("sessionID", uid);
	session.setAttribute("name", name);
	session.setAttribute("addr", addr);
	session.setAttribute("category", category);
	response.sendRedirect("../jsp/main.jsp");
}else{%>
<script>
	alert("입력하신 정보가 틀립니다.");
	</script>
<% }
%>

</body>
</html>