<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file='header.jsp'%>
<html>
<body>
	<section>
		<div id="main-wrapper" class="pink-box">
			<div id="login-wrapper">
				<div id="title">
					<h1>회원가입</h1>
				</div>
				<form name="userInfo" action="../function/signup.jsp" method="POST"
					onsubmit="return checkValue()">
					<div class="login-box">
						<h3>아이디</h3>
						<input type="text" name="id" placeholder="ID">
						<button type="button" class="black-btn"
							onclick="confirmID()">중복확인</button>
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
						<input type="password" name="password_confirm"
							placeholder="PASSWORD 재입력">
					</div>
					<div class="login-box">
						<h3>성별</h3>
						<div class="select">
							<label class="radio"><input type="radio" class="radio"
								value="m" name="sex"> 🙋‍♂남</label> <label class="radio"><input
								type="radio" class="radio" value="f" name="sex">🙋여</label>
						</div>
					</div>
					<div class="login-box">
						<h3>생년월일</h3>
						<input type="date" name="bday">
					</div>
					<div class="login-box">
						<h3>Email</h3>
						<input type="email" name="email" placeholder="EMAIL">
					</div>
					<div class="login-box">
						<h3>지역</h3>
						<input type="text" name="addr" placeholder="구 단위까지 입력">
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
	
		function test(){
			alert("test")
		}
	
		// 필수 입력정보 입력되었는지 확인
		function checkValue() {
			if (!userInfo.id.value) {
				alert("아이디를 입력하세요.");
				return false;
			} else if (!userInfo.password.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			} else if (!userInfo.name.value) {
				alert("이름을 입력하세요.");
				return false;
			} else if
			// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
			else if (userInfo.password.value != userInfo.password_confirm.value) {
				alert("비밀번호를 동일하게 입력하세요.");
				return false;
			}
		}

		//ID 중복체크
		function confirmID() {
			if (!userInfo.id.value) {
				alert("id를 입력하세요.")
				return;
			} else {
				url = "../function/confirmUID.jsp?id=" + userInfo.id.value;
				window.open(url, "get", "height =200, width = 300")
			}

		}
	</script>
</body>


</html>
<%@ include file='footer.jsp'%>