<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
   
   <%@ page import= "org.Hangout.hangoutDAO" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] datetime = new String[2];

ResultSet rs = null;
hangoutDAO dao = hangoutDAO.getInstance();
try{
	rs = dao.showHangout();

	while(rs.next()){
		datetime = rs.getString("htime").split(" ");
		out.println("date = " + datetime[0] + "\n");
		out.println("time = " + datetime[1] + "\n");
		%>
		<%=rs.getString("uid") %>
		<%=rs.getString("title") %>
		
		<%=rs.getString("htime")%>
<% 	}

} catch(SQLException e) {
out.print("exception : " + e.toString());
}
%>
</body>
</html>