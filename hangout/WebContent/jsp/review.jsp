<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="kr.ac.mju.hangout.DAO.bbsDAO"%>
<%@ page import="kr.ac.mju.hangout.DTO.bbsDTO"%>
<%@ include file='header.jsp'%>

<%

ResultSet rsReview = null; // 리뷰 db result set
ResultSet rsReply = null;

bbsDAO dao = bbsDAO.getInstance();
try {
	rsReview = dao.showReview();
} catch (SQLException e) {
	out.print("exception : " + e.toString());
}
%>

<section>
	<div id="main-wrapper">
		<div id="title">
			<h1>오늘머해?</h1>
			<h3>취향 및 위치 기반 실시간 소모임</h3>
		</div>

		<div class="today category">
			<div class="title">
				<div class="title-left">
					<h4>게시판 목록</h4>
					<h5>
						<a href="moim.jsp" class="off">모임 게시판</a> <a href="review.jsp"
							class="selected">리뷰 게시판</a>
					</h5>
				</div>
				<% if(session.getAttribute("sessionID")!=null){%>
				<div class="title-right">
				
					<button class="map" onclick="location.href='review-edit.jsp'">✍
						리뷰 작성하기</button>
				</div>
				<%} %>
			</div>
			<div class="moim-wrapper">
				<div class="list-item moim">
					<span class="icon">📕</span>
					<h3>독서</h3>
					<h4>마음의 양식을 쌓아보아요</h4>
					<p>40개 모임</p>
				</div>
			</div>
			<div class="category-list">
				<%
					if(rsReview!=null){
				
					while (rsReview.next()) {
				%>
				<div class="review">
					<div class="user-info">
						<div class="icon-area">
							<span class="icon">👱‍♂️</span>
						</div>
						<div class="user-area">
							<h3><%=rsReview.getString("name")%></h3>
							<p><%=rsReview.getString("uaddr")%><span>작성일 : <%=rsReview.getString("postdate")%></span>
							</p>
						</div>
					</div>
					<div class="moim-review">
						<h3>
							모임명 : <span>[<%=rsReview.getString("title")%>]
							</span>
						</h3>
						<hr>
						<p>
							<%=rsReview.getString("txt")%>
						</p>
					</div>
					<div class="user-response">
						<div class="icon-area">
							<span class="icon like"></span> <span>좋아요 <span
								class="like">3</span></span> <span>댓글 <span class="comment">2</span></span>
						</div>
					<% try {
						rsReply = dao.showReply(rsReview.getInt("reviewid"));
					}catch (SQLException e) {
						out.print("exception : " + e.toString());
					}
					if(rsReply!=null){
					while(rsReply.next()){
					%>
						<div class="comments">
							<div class="user">
								<div class="icon-area">
									<span class="icon">😍</span>
								</div>
								<div class="user-area">
									<span class="user-name"><%= rsReply.getString("name") %></span> <span class="time">
									<%= rsReply.getString("postdate") %></span>
									<p class="content"><%= rsReply.getString("txt") %></p>
								</div>
							</div>
						</div>
						<%} 
						rsReply.close();
					} if(session.getAttribute("sessionID")!=null){%>
						<div class="create-comment">
							<form action="../function/addReply.jsp">
								<div class="icon-area">
								<input type="hidden" id= "reviewID" name="reviewID" value="<%=rsReview.getInt("reviewid") %>" >
									<span class="icon">🤗</span> <input type="text" name="text"
										placeholder="댓글 추가하기" class="input-comment" required>
								</div>
								<div class="button-area">
									<button class="btn cancel" type="reset">취소</button>
									<button class="btn submit" type="submit">작성</button>
								</div>
							</form>
						</div>
						<%} %>
					</div>
				</div>
				<%
					}
					rsReview.close();
					}
				%>

			</div>
		</div>

	</div>
</section>


<%@ include file='footer.jsp'%>