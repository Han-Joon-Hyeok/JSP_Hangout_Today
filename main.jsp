<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="kr.ac.mju.teamproject.dao.userInfoDAO"%>
<%@ page import="kr.ac.mju.teamproject.dto.userInfoDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success</title>
</head>

<body>
<%
request.setCharacterEncoding("utf-8");
userInfoDTO dto = userInfoDTO.getInstance();
dto.setUserID(request.getParameter("userID"));
dto.setUserPWD(request.getParameter("userPWD"));
dto.setUserNAME(request.getParameter("userNAME"));
dto.setSEX(request.getParameter("SEX"));
dto.setAGE(Integer.parseInt(request.getParameter("AGE")));
String category = "";
String[] get_category = request.getParameterValues("CATEGORY");
for(String val : get_category){
	category += val +',';
}
dto.setCATEGORY(category);
dto.setUserAddr(request.getParameter("userAddr"));
%>
<%


%>

<%
userInfoDAO dao = userInfoDAO.getInstance();
dao.add(dto);
%>
<h1>111</h1>
success!
</body>
</html>