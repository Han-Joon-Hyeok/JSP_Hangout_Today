<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="kr.ac.mju.teamproject.dao.userInfoDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validate id</title>
</head>
<body>

<% 
String userID = request.getParameter("userID"); 
userInfoDAO dao = userInfoDAO.getInstance();
boolean result  = dao.confrimID(userID);
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
<h2> <%= userID %> 사용 가능</h2>
</center>	
<%}
%>

</body>
</html>