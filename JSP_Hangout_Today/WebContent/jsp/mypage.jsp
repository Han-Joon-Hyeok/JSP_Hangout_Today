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
        <div id="main-wrapper" class="pink-box">
            <div id="login-wrapper">
                <div id="title">
                    <h1>마이페이지</h1>
                </div>
                <div class="login-box">
                    <h3>지역</h3>
                    <input type="text" name="address" placeholder="사는 지역" readonly>
                </div>
                <div class="login-box">
                    <h3>관심사</h3>
                    <input type="text" name="address" placeholder="어떤 관심사든 OK">
                </div>
                <div class="login-box">
                    <h3>최근 참여 모임</h3>
                    <table class="white-table">
                        <tr>
                            <th>일시</th>
                            <th>모임명</th>
                            <th>인원</th>
                        </tr>
                        <tr>
                            <td>20.10.19</td>
                            <td>집에서 즐기는 할로윈</td>
                            <td>6명</td>
                        </tr>
                        <tr>
                            <td>20.10.30</td>
                            <td>님만 오면 시작 : 롤 5인큐</td>
                            <td>5명</td>
                        </tr>
                        <tr>
                            <td>20.11.04</td>
                            <td>다같이 모여 어몽어스</td>
                            <td>8명</td>
                        </tr>
                    </table>
                </div>
                <div class="login-box">
                    <h3>관심 모임</h3>
                    <table class="white-table">
                        <tr>
                            <th>일시</th>
                            <th>모임명</th>
                            <th>인원</th>
                        </tr>
                        <tr>
                            <td>20.12.08</td>
                            <td>팀플발표 헤쳐모여</td>
                            <td>3명</td>
                        </tr>
                        <tr>
                            <td>20.12.12</td>
                            <td>협곡 데이트 ㄱㄱ</td>
                            <td>2명</td>
                        </tr>
                        <tr>
                            <td>20.12.18</td>
                            <td>종강기념 파티(온라인)</td>
                            <td>8명</td>
                        </tr>
                    </table>
                </div>
                <div class="create-box">
                    <button type="submit" class="black-btn"><a href="edit.jsp">정보수정</a></button>
                </div>
            </div>
        </div>
    </section>
    
    <%} %>
    
<%@ include file='footer.jsp' %>