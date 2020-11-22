<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<script type="text/javascript">
		// 필수 입력정보 입력되었는지 확인
		function checkValue() {
			if (!userInfo.userID.value) {
				alert("아이디를 입력하세요.");
				return false;
			}

			else if (!userInfo.userPWD.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			} else if (!userInfo.userNAME.value) {
				alert("이름을 입력하세요.");
				return false;
			} else if (!userInfo.age.value) {
				alert("나이를 입력하세요.");
				return false;
			}
			// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
			else if (userInfo.userPWD.value != userInfo.pwdCheck.value) {
				alert("비밀번호를 동일하게 입력하세요.");
				return false;
			}

		}
		// 취소 버튼 클릭 시 로그인 화면으로 이동
		function goLogin() {
			location.href = "login.jsp";
		}
		//ID 중복체크
		function confirmID() {
			if(!userInfo.userID.value){
				alert("id를 입력하세요.")
				return;
			}else{
			url = "confirmID.jsp?userID=" + userInfo.userID.value;
			window.open(url, "get", "height =200, width = 300")
			}
		}
	</script>

	<form name="userInfo" action="main.jsp" method="post"
		onsubmit="return checkValue()">
		<table  style="padding: 5px 0 5px 0;" border = "1">
			<tr>
				<th>아이디</th>
				<td><input size="15" type="text" name="userID"> <input
					type="button" id="chk_ID" onclick="confirmID(this.form)" value="중복확인">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input size=15 type="password" name="userPWD">
					영문/숫자포함 6자 이상</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input size=15 type="password" name="pwdCheck"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input size=10 type="text" name="userNAME"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input size=5 type="text" name="AGE"> 세</td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" name="SEX" value="m">남자 <input
					type="radio" name="SEX" value="f"> 여자</td>
			</tr>
			<tr>
				<th>관심항목</th>
				<td><input type="checkbox" name="CATEGORY" value="lol">
					롤 <input type="checkbox" name="CATEGORY" value="among us">
					어몽어스 <input type="checkbox" name="CATEGORY" value="fifa">
					피파 <input type="checkbox" name="CATEGORY" value="overwatch">
					오버워치 <input type="checkbox" name="CATEGORY" value="suddenAttack">
					서든어택
			</tr>
			<tr>
				<th>사는 지역</th>
				<td><input size=20 name=userAddr> (구 까지만 입력해주세요)</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><br> <input type="submit"
					value="회원가입"> <input type="button" value="취소"
					onclick="goLogin()"></td>
			</tr>
		</table>

	</form>
</body>
</html>