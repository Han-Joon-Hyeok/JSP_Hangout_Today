<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='header.jsp' %>
	
	<%
   		if(session.getAttribute("sessionID") == null ){
   			response.sendRedirect("login.jsp");
   		}
   		else{
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
                            <a href="moim.jsp" class="off">모임 게시판</a>
                            <a href="review.jsp" class="selected">리뷰 게시판</a>
                        </h5>
                    </div>
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
                    <div class="review">
                        <div class="user-info">
                            <div class="icon-area">
                                <span class="icon">👱‍♂️</span>
                            </div>
                            <div class="user-area">
                                <h3>서대문구핵주먹</h3>
                                <p>서울 서대문구 <span>작성일 : (오늘날짜)</span></p>
                            </div>
                        </div>
                        <div class="moim-review">
                            <form action="" method="POST" class="review-form">
                                <label for="review-title" class="block">모임명 : </label><input type="text" name="title" id="review-title" class="review-input" placeholder="모임명 입력" required>
                                <label for="review-content" class="block">리뷰내용 : </label><textarea name="content" id="review-content" placeholder="리뷰 내용을 입력해주세요!" required></textarea>
                                <div class="create-comment">
                                    <div class="button-area">
                                        <button class="btn cancel" type="reset" onclick="location.href='review.jsp'">
                                            취소
                                        </button>
                                        <button class="btn submit" type="submit">
                                            작성
                                        </button>
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
    
    <%} %>


<%@ include file='footer.jsp' %>