<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Date" import ="java.text.SimpleDateFormat"%>
    
<%@ page import = "kr.ac.mju.hangout.DAO.bbsDAO" %>
<%@ page import = "kr.ac.mju.hangout.DTO.bbsDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Date now = new Date();
	SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
	String today = fm.format(now);
	
%>

<%
request.setCharacterEncoding("utf-8");

bbsDTO dto = bbsDTO.getInstance();
dto.setUid((String) session.getAttribute("sessionID"));
dto.setTitle(request.getParameter("title"));
dto.setAddr((String) session.getAttribute("sessionAddr"));
dto.setPostdate(today);
dto.setTxt(request.getParameter("content"));

%>

<%
bbsDAO dao = bbsDAO.getInstance();
dao.addReview(dto);

response.sendRedirect("../jsp/review.jsp");
%>
</body>
</html>