<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="org.Hangout.userInfoDTO"%>
<%@ page import="org.Hangout.userInfoDAO"%>
<%@ include file='header.jsp'%>

<section >
<%
String uid = (String) session.getAttribute("sessionID");
ResultSet rs = null;
userInfoDAO dao = userInfoDAO.getInstance();
String name = "";
String bday = "";
String email = "";
String sex = "";
String addr = "";
String category = "";
try {

	rs = dao.viewInfo(uid);
	if (rs.next()) {
		name = rs.getString("name");
		bday = rs.getString("bday");
		email = rs.getString("email");
		addr = rs.getString("addr");
		sex = rs.getString("sex");
		category = rs.getString("category");
	}
} catch (SQLException e) {

	out.print("exception : " + e);
}
rs.close();
%>

	<div id="main-wrapper" class="pink-box">
		<div id="login-wrapper">
			<div id="title">
				<h1>정보수정</h1>
			</div>
			<form name="editInfo" action="../function/editInfo.jsp" method="POST">
				<div class="login-box">
					<h3>아이디</h3>
					<input type="text" name="id" placeholder="ID" value="<%=uid%>"
						readonly>
				</div>
				<div class="login-box">
					<h3>비밀번호</h3>
					<input type="password" name="password" placeholder="PASSWORD">
				</div>
				<div class="login-box">
					<h3>이름</h3>
					<input type="text" name="name" placeholder="<%=name%>" >
				</div>
				<div class="login-box">
					<h3>성별</h3>
					<div ><%if(sex.equals("m")){%>
						<label>🙋‍♂ 남</label> <%}else{ %>
						<label>🙋 여</label><%}%>
					</div>
				</div>
				<div class="login-box">
					<h3>생년월일</h3>
					<input type="text" name="birthdate" value="<%=bday%>" readonly>
				</div>
				<div class="login-box">
					<h3>Email</h3>
					<input type="text" name="email" placeholder="<%=email%>"
						value="<%=email%>" readonly>
				</div>
				<div class="login-box">
					<h3>지역</h3>
					<input type="text" name="address" placeholder="<%= addr%>">
				</div>
				<div class="login-box">
					<h3>관심사</h3>
					<input type="text" name="category" placeholder="<%= category %>">
				</div>
				<div class="create-box">
					<input type="submit" class="black-btn" value="정보수정">
				</div>
			</form>
		</div>
	</div>
</section>


<%@ include file='footer.jsp'%>