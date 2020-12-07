<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import= "org.Hangout.userInfoDAO" %> 

<%
	String id = request.getParameter("id");
	
	userInfoDAO dao = userInfoDAO.getInstance();
	
	boolean result = dao.confirmID(id);


%>

<%
	if(result){ %>
		<center>
			<h3>이미 사용 중인 ID입니다.</h3>
		</center>
	
	<% } else { %>
		<center>
			<h3><%=id %>는 사용하실 수 있습니다.</h3>
		</center>
<% } %>
		<center>
			<input type="button" value="창 닫기" onClick='self.close()'>
		</center>
		
		