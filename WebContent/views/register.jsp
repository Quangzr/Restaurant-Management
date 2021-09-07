<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<spring:url value="/doregister" var="registration_form" />
<spring:url value="/dologin" var="Login_form" />
<html>
<head>
<title>Register</title>
<meta charset="utf -8">
<link rel="stylesheet" href="css/css/cssregister.css" />
</head>
<body>
	<h2>Đăng ký</h2>
	<form name="registration_form" id='registration_form'
		modelAttribute="registration_form" class="form-inline"
		action="${registration_form}" method="post"
		onsubmit="return validateform()">
		<div class="container">
			<div>
				<label><b>Tên đăng nhập (*)</b></label> <input type="text"
					name="name" required placeholder="Nhập tên đăng nhập">
			</div>

			<div>
				<label> <b>Email (*)</b>
				</label> <input type="text" name="email"
					title="The domain portion of the email address is invalid (the portion after the @)."
					pattern="^([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22))*\x40([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d))*(\.\w{2,})+$"
					placeholder="Nhập email " required>
			</div>


			<div>
				<label><b>Số điện thoại (*)</b></label> <input type="text"
					name="phone" required placeholder="Nhập số điện thoại">
			</div>

			<div>
				<label><b>Mật khẩu (*)</b></label> <input type="password"
					name="password" required placeholder="Nhập mật khẩu">
			</div>

			<div>
				<label><b>Nhập lại mật khẩu (*)</b></label> <input type="password"
					required name="repassword" placeholder="Nhập lại mật khẩu ">
			</div>


			<button onclick="doRegister()">Đăng ký</button>
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
		function doRegister() {

			if (document.registration_form.name.value === '') {
				alert("Vui lòng nhập tên đăng nhập");
				return;
			}

			if (document.registration_form.password.value === '') {
				alert("Vui lòng nhập mật khẩu");
				return;
			}

			if (document.registration_form.email.value === '') {
				alert("Vui lòng nhập email");
				return;
			}

			if (document.registration_form.phone.value === '') {
				alert("Vui lòng nhập số điện thoại");
				return;
			}

			if (document.registration_form.repassword.value === '') {
				alert("Vui lòng nhập lại mật khẩu");
				return;
			}

			document.registration_form.target = "_self";
			document.registration_form.method = "post";
			document.registration_form.submit();

		}
	</script>
</body>
</html>





