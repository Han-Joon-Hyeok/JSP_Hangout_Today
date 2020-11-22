<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="kr.ac.mju.teamproject.dao.userInfoDAO"%>

<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>

<!--  보류 -->
<script type="text/javaScript">
	function moveSingup() {
		document.location.href = "signup.jsp"
	}
	
	function checkValue(){
		if(!login.userID.value ){
			alert("id 를 입력하세요");
			return false;
		}
		if(!login.PWD.value){
			alert("pw를 입력하세요");
			return false;
		}
	}
	
</script>

<body>

<%if(session.getAttribute("sessionId")==null){%>
<form name = "login" method = "post" action = "loginaccess.jsp" onsubmit = "return checkValue()">
	<table align="center">
		<tr height="2" bgcolor="#4b89dc">
			<td colspan="2"></td>
		</tr>
		<tr height="40">
			<th bgcolor="#c3e1f8">ID :</th>
			<td><input size="15" type="text" name="userID"></td>
		</tr>
		<tr height="40">
			<th>패스워드 :</th>
			<td><input size="15" type="Password" name="PWD">
		</tr>
		<tr height="2" bgcolor="#4b89dc">
			<td colspan="2"></td>
		</tr>
		<tr height=40>
			<td colspan="2">
				<div align="center">
					<input type="submit" name="signin" value="sign in">
					<button type="button" name="signup"
						onclick="location.href = 'signup.jsp'" >sign up</button>
				</div>
	</table>
	</form>
	<%} else { %>
	<h2>wellcome back , <%= session.getAttribute("sessionId") %></h2>
	<input type="button" value = "logout" onclick="window.location ='logout.jsp'"/>
	<%} %>
	
</body>
</html>