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
