<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userID");
	String pwd = request.getParameter("userPWD");
	String name = request.getParameter("userNAME");
	int age = Integer.parseInt(request.getParameter("AGE"));
	String sex = request.getParameter("SEX");
	String[] get_category = request.getParameterValues("CATEGORY");
	String category = "";
	for (String val : get_category) {
		category += val + ",";
	}
	String addr = request.getParameter("userAddr");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/teamproject?useSSL=false";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		Statement stat = con.createStatement();

		String query = "insert into user_info values('" + id + "','" + pwd + "','" + name + "','" + sex + "'," + age + ",'"
		+ category + "','" + addr + "')";

		stat.executeUpdate(query);
		stat.close();
		con.close();
	} catch (Exception e) {
		out.println("Exception : " + e);
	}
	%>
</body>
</html>