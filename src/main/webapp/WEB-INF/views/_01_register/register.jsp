<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<html lang="zh-TW">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/movie.css" />

<title>movie</title>
<style>
body {
	background-color: white;
}

.sign {
	vertical-align: top;
	width: 300px;
	height: 230px;
	display: inline-block;
}

.registrTotalDiv {
	height: 570px;
}

.sign {
	text-align: left;
}

#sign-in {
	hight: 230px;
	margin: 0px 30px;
	border-radius: 5px;
	margin: 0px 50px;
}

#sign-up {
	margin: 5px;
	hight: 230px;
	border-radius: 5px;
}

.loginOrOut {
	display: none;
}

.nobooder {
	font-size: 24px;
	margin-bottom: 30px;
}

b {
	font-size: 46px;
	margin-bottom: 30px;
}

.but {
	font-size: 16px;
	background-color: black;
	color: white;
	border-block-end: none;
	border-color: white;
	border: 0;
	padding: 10px 30px;
	border-radius: 5px;
}

input:not (.nobooder ){
	border-radius: 5px;
	margin: 0px 10px;
}
</style>
</head>
<body style="background-color: white;">
	<jsp:include page="../fragment/menu.jsp" />

	<div class="registrTotalDiv">
		<div>

			<div class="sign" id="sign-in">
				<b>登入</b>
				<p class="login-box-msg">${errorMessage}</p>
				<form action='${pageContext.request.contextPath}/Checklogin'
					method='post'>
					<input id="email" name="email" class="nobooder" type='email'
						placeholder='輸入電子信箱' required /><br> <input id="password"
						name="password" class="nobooder" type='password'
						placeholder='輸入密碼' required /><br> <br> <label
						for="remember"> <br>
					<input type="checkbox" id="rememberBox" name="rememberBox" />記得我
					</label> <br> <input class="but" type='reset' value='清除' /> <input
						class="but" type='submit' value='確認加入' onclick='return check()' />

				</form>

				<!-- 			<p style="font-size: 10px">忘記密碼?</p> -->
			</div>

			<div class="sign" id="sign-up">
				<b>新使用者</b> <br>
				<br>
				<p class="smalltext">若您還未註冊TaiwanFilm.com會員</p>
				<br>
				<p class="smalltext">我們將會請您提供必需資訊以便使用</p>
				<br>
				<button class="but">
					<a class="but" href="members/add">登入 / 註冊</a>
				</button>

			</div>
		</div>
	</div>

	<input type="button" onclick="oneEntry()" value="DEMO用管理員"/>
	<input type="button" onclick="oneEntry1()" value="DEMO用一般會員"/>
	<jsp:include page="../fragment/bottom.jsp" />

	<script
		src="${pageContext.request.contextPath}/_01_register/JQUERY/jquery.cookie.js"></script>

	<!-- <script src="/JQUERY/jquery.cookie.js"></script>	 -->

	<script>

	function oneEntry() {
	 var email = "eeit@gmail.com"
	 var pass = "Sa123456"
	 $("#email").val(email);
	 $("#password").val(pass); 
	}
	
	function oneEntry1() {
		 var email = "jeter@gmail.com"
		 var pass = "Sa123456"
		 var name = "基特"
		 $("#email").val(email);
		 $("#password").val(pass);


		}

	<%-- 如果有儲存帳號cookie, 將帳號載入 +打勾remember--%>
		if ($.cookie("remEmail")) {
			$("#rememberBox").prop("checked", true);
			$("#email").val($.cookie("remEmail"));
		}
	<%-- 如果有儲存密碼cookie, 將密碼載入 --%>
		if ($.cookie("remPassword")) {
			$("#password").val($.cookie("remPassword"));
		}
	</script>
</body>
</html>