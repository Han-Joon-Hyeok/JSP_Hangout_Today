<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "org.Hangout.hangoutDAO" %>
<%@ page import = "org.Hangout.hangoutDTO" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");

hangoutDTO dto = hangoutDTO.getInstance();
dto.setUid((String)session.getAttribute("sessionID"));
dto.setTitle(request.getParameter("title"));
dto.setCategory(request.getParameter("category"));
dto.setTxt(request.getParameter("content"));

if(request.getParameter("limit-check") == "yes"){
	dto.setPersonnel(Integer.parseInt(request.getParameter("personnel")));
}else{
	dto.setPersonnel(100);
}
dto.setHdate(request.getParameter("hdate"));
dto.setHtime(request.getParameter("htime"));
dto.setAddr(request.getParameter("addr"));


%>

<%
hangoutDAO dao = hangoutDAO.getInstance();
dao.addHangout(dto);


response.sendRedirect("../jsp/moim.jsp");
%>
</body>
</html>