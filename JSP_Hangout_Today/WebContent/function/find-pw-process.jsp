<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import= "org.Hangout.userInfoDAO" %>   

<%
	request.setCharacterEncoding("utf-8");
	
	String UId = request.getParameter("id");
	String email = request.getParameter("email");
	String pwd;
	
	userInfoDAO dao = userInfoDAO.getInstance();
	
	String[] result = dao.findPwd(UId, email);
%>

<%
	if(result[0] == "true"){
		pwd = result[1]; 
		session.setAttribute("pwd", pwd);
		response.sendRedirect("../jsp/find-pw-result.jsp");
	}else{%>
	<script>
		alert("입력하신 정보가 틀립니다. 이메일을 다시 입력해주세요.");
		location.href="../jsp/find-pw.jsp";
	</script>
<% }

%>