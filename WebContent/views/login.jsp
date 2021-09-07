<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<spring:url value="/doregister" var="registration_form" />
<spring:url value="/dologin" var="Login_form" />

<html>
<head>
<title>Login</title>
<meta charset="utf -8">
<link rel="stylesheet" href="css/css/csslogin.css" />
<style>
</style>
</head>
<body>
	<h2>Đăng nhập</h2>
	<form name="Login_form" id='Login_form' modelAttribute="Login_form"
		action="${Login_form}" method="post" onsubmit="return validateform()">
		<div class="container">

			<div>
				<label><b>Tên đăng nhập (*)</b></label> <input type="text"
					name="name" required placeholder="Nhập tên đăng nhập">
			</div>

			<div>
				<label><b>Mật khẩu (*)</b></label> <input type="password"
					name="password" required placeholder="Nhập mật khẩu">
			</div>
			<div class="loginbutton">
				<button onclick="doLogin()">Đăng nhập</button>
			</div>

			<div class="don">
				Nếu bạn chưa có tài khoản, bấm <a href="/jvb-spring-web/dangki">đăng
					ký<a />
			</div>
		</div>
	</form>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="js/js/jquery-3.1.1.min.js"></script>
	<script src="js/js/bootstrap.min.js"></script>
	<script src="js/js/jquery.appear.min.js"></script>
	<script src="js/js/jquery.incremental-counter.js"></script>
	<script src="js/js/script.js"></script>
	<script type="text/javascript">
		function doLogin() {

			if (document.Login_form.name.value === ''
					&& document.Login_form.password.value === '') {
				alert("Vui lòng nhập tên đăng nhập và mật khẩu");
				return;
			}

			if (document.Login_form.name.value === '') {
				alert("Vui lòng nhập tên đăng nhập");
				return;
			}

			if (document.Login_form.password.value === '') {
				alert("Vui lòng nhập mật khẩu");
				return;
			}

			document.Login_form.target = "_self";
			document.Login_form.method = "post";
			document.Login_form.submit();

		}
	</script>

</body>
</html>