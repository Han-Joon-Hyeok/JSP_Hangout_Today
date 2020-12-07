<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='header.jsp' %>

 <section>
        <div id="main-wrapper" class="pink-box">
            <div id="login-wrapper">
                <div id="title">
                    <h1>회원가입</h1>
                </div>
                <form name="userInfo" action="../function/signup.jsp" method="POST">
                    <div class="login-box">
                        <h3>아이디</h3>
                        <input type="text" name="id" id="id" placeholder="ID">
                        <input type="button" class="black-btn" onclick="confirmID();" value="중복체크">
                    </div>
                    <div class="login-box">
                        <h3>닉네임</h3>
                        <input type="text" name="name" placeholder="ID">
                    </div>
                    <div class="login-box">
                        <h3>비밀번호</h3>
                        <input type="password" name="password" placeholder="PASSWORD">
                    </div>
                    <div class="login-box">
                        <h3>비밀번호 확인</h3>
                        <input type="password" name="password_confirm" placeholder="PASSWORD 재입력">
                    </div>
                    <div class="login-box">
                        <h3>성별</h3>
                        <div class="select">
                            <label class="radio"><input type="radio" class="radio" value="male" name="sex"> 🙋‍♂남</label>
                            <label class="radio"><input type="radio" class="radio" value="female" name="sex">🙋여</label>
                        </div>
                    </div>
                    <div class="login-box">
                        <h3>생년월일</h3>
                        <input type="date" name="bday">
                    </div>
                    <div class="login-box">
                        <h3>Email</h3>
                        <input type="email" name="email" id="email" placeholder="EMAIL">
                        <input type="button" class="black-btn" onclick="confirmEmail();" value="중복체크">
                    </div>
                    <div class="login-box">
                        <h3>지역</h3>
                        <input type="text" name="addr" id="addr" placeholder="구 단위까지 입력">
                        <input type="button" class="black-btn" value="주소찾기" onclick="addrFind()">
                    </div>
                    <div class="login-box">
                        <h3>관심사</h3>
                        <input type="text" name="category" placeholder="어떤 관심사든 OK">
                    </div>
                    <div class="create-box">
                        <input type="submit" class="black-btn" value="가입하기">
                    </div>
                </form>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">
    
    	function confirmID(){
    		
    		var id = document.getElementById("id").value;
    		
    		if(id == ""){
    			alert("ID를 입력하세요.");
    			return;
    		}
    		
    		else{
    			url = "../function/confirmId.jsp?id=" + id;
        		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
    		}
    		
    	}
    	
		function confirmEmail(){
    		
    		var email = document.getElementById("email").value;
    		
    		if(email == ""){
    			alert("email을 입력하세요.");
    			return;
    		}
    		
    		else{
    			url = "../function/confirmEmail.jsp?email=" + email;
        		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
    		}
    		
    	}
    	
    	
    
    </script>
    
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../js/addrFind.js"></script>
    
<%@ include file='footer.jsp' %>