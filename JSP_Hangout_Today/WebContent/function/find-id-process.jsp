<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import= "org.Hangout.userInfoDAO" %>   

<%
	request.setCharacterEncoding("utf-8");
	
	String email = request.getParameter("email");
	String UId;
	
	userInfoDAO dao = userInfoDAO.getInstance();
	
	String[] result = dao.findUId(email);
%>

<%
	if(result[0] == "true"){
		UId = result[1]; 
		session.setAttribute("UId", UId);
		response.sendRedirect("../jsp/find-id-result.jsp");
	}else{%>
	<script>
		alert("입력하신 정보가 틀립니다. 이메일을 다시 입력해주세요.");
		location.href="../jsp/find-id.jsp";
	</script>
<% }

%>