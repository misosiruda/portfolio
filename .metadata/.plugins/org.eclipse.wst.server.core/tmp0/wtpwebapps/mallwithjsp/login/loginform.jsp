<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>로그인 창</title>
<style>
* {
	padding: 0;
	margin: 0;
	border: none;
}

body {
	font-size: 14px;
	font-family: 'Roboto', sans-serif;
}

.login-wrapper {
	margin: 100px auto;
	width: 400px;
	height: 350px;
	padding: 40px;
	box-sizing: border-box;
}

.login-wrapper>h2 {
	font-size: 24px;
	color: #76bd42;
	margin-bottom: 20px;
}

#login-form>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#login-form>input::placeholder {
	color: #D2D2D2;
}

#login-form>input[type="submit"] {
	color: #fff;
	font-size: 16px;
	background-color: #76bd42;
	margin-top: 20px;
}

#login-form>input[type="checkbox"] {
	display: none;
}

#login-form>label {
	color: #999999;
}

#login-form input[type="checkbox"]+label {
	cursor: pointer;
	padding-left: 26px;
	background-image: url("checkbox.png");
	background-repeat: no-repeat;
	background-size: contain;
}

#login-form input[type="checkbox"]:checked+label {
	background-image: url("checkbox-active.png");
	background-repeat: no-repeat;
	background-size: contain;
}

a {
	text-decoration: none;
}

</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
</head>

<body>
	<div class="login-wrapper">
		<h2>login</h2>
		<form method="post"
			action="http://localhost:8080/mallwithjsp/manager.do?command=login_check"
			id="login-form" name="frm">
			<input type="hidden" name="check" value="${check}">
			<input type="text" name="userid" placeholder="id">
			<input type="password" name="userpass" placeholder="Password">
			<label for="remember-check">
			<input type="checkbox" id="remember-check">아이디 저장하기
			<a href="./signaccountform.jsp">회원가입 하기</a>
			</label>
			<input type="submit" value="Login" onclick="return loginNullCheck()">
		</form>
	</div>
	<!-- 쿠키 이용한 아이디 저장 기능 스크립트 -->
	<script>
		$(document).ready(function() {
			var key = getCookie("idChk"); //user1
			if (key != "") {
				$("#userid").val(key);
			}

			if ($("#userid").val() != "") {
				$("#remember-check").attr("checked", true);
			}

			$("#remember-check").change(function() {
				if ($("#remember-check").is(":checked")) {
					setCookie("idChk", $("#userid").val(), 7);
				} else {
					deleteCookie("idChk");
				}
			});

			$("#userid").keyup(function() {
				if ($("#remember-check").is(":checked")) {
					setCookie("idChk", $("#userid").val(), 7);
				}
			});
		});
		function setCookie(cookieName, value, exdays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			var cookieValue = escape(value)
					+ ((exdays == null) ? "" : "; expires="
							+ exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue;
		}

		function deleteCookie(cookieName) {
			var expireDate = new Date();
			expireDate.setDate(expireDate.getDate() - 1);
			document.cookie = cookieName + "= " + "; expires="
					+ expireDate.toGMTString();
		}

		function getCookie(cookieName) {
			cookieName = cookieName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cookieName);
			var cookieValue = '';
			if (start != -1) {
				start += cookieName.length;
				var end = cookieData.indexOf(';', start);
				if (end == -1)
					end = cookieData.length;
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);
		}
	</script>
	<!-- 아이디 비번 체크 스크립트 -->
    <script src="../js/idpasscheck.js"></script>
	<script>
		//로드 될때 실행하는 코드
		if (document.frm.check.value == "wrong_userid") {
			alert("해당하는 아이디가 없습니다.");
		} else if (document.frm.check.value == "wrong_userpass") {
			alert("비밀번호가 틀렸습니다.");
		}
	</script>
</body>

</html>