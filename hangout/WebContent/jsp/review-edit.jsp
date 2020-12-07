<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "java.util.Date"%>
	
<%@ page import="kr.ac.mju.hangout.DTO.userInfoDTO"%>
<%@ include file='header.jsp'%>

<%
	Date now = new Date();
	SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
	String today = fm.format(now);
	
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
			</div>
			<div class="moim-wrapper">


				<div class="category-list">
					<div class="review">
						<div class="user-info">
							<div class="icon-area">
								<span class="icon">👱‍♂️</span>
							</div>
							<div class="user-area">
								<h3><%= session.getAttribute("sessionNAME") %></h3>
								<p>
									<%= session.getAttribute("sessionAddr") %> <span>작성일 : <%= today %></span>
								</p>
							</div>
						</div>
						<div class="moim-review">
							<form action="" method="POST" class="review-form">
								<label for="review-title" class="block">모임명 : </label><input
									type="text" name="title" id="review-title" class="review-input"
									placeholder="모임명 입력" required> <label
									for="review-content" class="block">리뷰내용 : </label>
								<textarea name="content" id="review-content"
									placeholder="리뷰 내용을 입력해주세요!" required></textarea>
								<div class="create-comment">
									<div class="button-area">
										<button class="btn cancel" type="reset"
											onclick="location.href='review.jsp'">취소</button>
										<button class="btn submit" type="submit">작성</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>


<%@ include file='footer.jsp'%>