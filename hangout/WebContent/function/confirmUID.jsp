<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "kr.ac.mju.hangout.DAO.userInfoDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String uid = request.getParameter("id"); 
userInfoDAO dao = userInfoDAO.getInstance();
boolean result  = dao.confrimID(uid);
if(result == true){
	%>
<center>
<br><br>
<h2> already use</h2>
</center>	
	
	<% 
} else{
	%>
	<center>
<br><br>
<h2> <%= uid %> 사용 가능</h2>
</center>	
<%}
%>

</body>
</html>