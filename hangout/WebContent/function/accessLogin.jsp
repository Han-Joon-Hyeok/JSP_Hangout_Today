<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "kr.ac.mju.hangout.DAO.userInfoDAO" %>    
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

userInfoDAO dao = userInfoDAO.getInstance();

String[] result = dao.login(uid, pwd);
%>

<%
if(result[0]=="true"){
	name = result[1];
	session.setAttribute("sessionID", uid);
	session.setAttribute("sessionNAME", name);
	response.sendRedirect("../jsp/main.jsp");
}else{%>
<script>
	alert("입력하신 정보가 틀립니다.");
	</script>
<% 

}
%>

</body>
</html>