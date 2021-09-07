<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<spring:url value="/douserconfig" var="userconfig_form" />
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/css/cssuserconfig.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="fontawesome-free-5.15.3-web/fontawesome-free-5.15.3-web/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Thiết lập cá nhân</title>
</head>
<body>
		<div class="topnav">
		<a href="/jvb-spring-web/homepage" class="topnavbutton">Trang chủ</a>

		<div class="dropdown">
			<button class="dropbtn">
				Lựa chọn <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/jvb-spring-web/monngon">Món ngon</a> <a href="#">Món
					lẻ</a> <a href="#">Món khai vị</a> <a href="#">Món hải sản</a> <a
					href="#">Món bò-heo</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Tin tức <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="#">Bảng tin</a> <a href="#">Hình ảnh</a> <a href="#">Video</a>
				<a href="#">Câu hỏi phổ biến</a>
			</div>
		</div>

		<a href="/jvb-spring-web/contact" class="topnavbutton">Liên hệ</a> <a
			href="#" class="topnavbutton">Về chúng tôi</a>

		<div>

			<div id="user button" style="float: right;">
				<div class="dropdown1">
					<button class="dropbtn1" style = "margin-right: 40px;">
						<i style='font-size: 25px' class='far'>&#xf2bb;</i> Chào ${nowname}
					</button>
					<div class="dropdown-content1">
						<a href="/jvb-spring-web/userconfig">Thiết lập cá nhân</a> <a
							href="/jvb-spring-web/clickcart">Đơn hàng</a> <a href="/jvb-spring-web/deliveryaddress">Địa chỉ giao hàng</a> <a
							href="#">Yêu thích</a> <a href="/jvb-spring-web/home">Đăng
							xuất</a>
					</div>
				</div>
			</div>

			<form class="example">
				<button type="submit">
					<a href="/jvb-spring-web/clicksearch"><i class="fa fa-search"></i></a>
				</button>
			</form>
		</div>

	</div>


	<div class="row">
		<div class="left" style="background-color: white;">
			<ul id="myMenu">
				<li><a href="#">THÔNG TIN CÁ NHÂN</a></li>
				<li><a href="#">QUẢN LÝ ĐƠN HÀNG</a></li>
				<li><a href="/jvb-spring-web/deliveryaddress">ĐỊA CHỈ GIAO HÀNG</a></li>
				<li><a href="#">DANH SÁCH YÊU THÍCH</a></li>
			</ul>
		</div>

		<div class="right" style="background-color: white;">
			<h2>Thông tin cá nhân</h2>

			<form name="userconfig_form" id='userconfig_form'
				modelAttribute="userconfig_form" class="form-inline"
				action="${userconfig_form}" method="post"
				onsubmit="return validateform()">
				<div>
					<div>
						<label>
							<p>Họ và tên (*)</p>
						</label> <input type="text" name="name" required
							placeholder="Điền họ và tên " value=${nownameform} >
					</div>

					<div>
						<label>
							<p>Email (*)</p>
						</label> <input type="text" name="email" value=${nowemailform}
							title="The domain portion of the email address is invalid (the portion after the @)."
							pattern="^([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22))*\x40([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d))*(\.\w{2,})+$"
							placeholder="Điền email " required>
					</div>

					<div>
						<label>
							<p>Số điện thoại (*)</p>
						</label> <input type="text" name="phone" required
							placeholder="Điền số điện thoại " value=${nowphoneform} >
					</div>

					<div>
						<label>
							<p>Địa chỉ (*)</p>
						</label> <input type="text" name="address" required
							placeholder="Điền địa chỉ " value=${nowaddressform} >
					</div>

					<button onclick="#" class="changepass">
						<b>Thay đổi mật khẩu</b>
					</button>

				</div>
			</form>

			<button onclick="doUserconfig()" class="capnhat">
				<b>Cập nhật</b>
			</button>

		</div>
	</div>


	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="js/js/jquery-3.1.1.min.js"></script>
	<script src="js/js/bootstrap.min.js"></script>
	<script src="js/js/jquery.appear.min.js"></script>
	<script src="js/js/jquery.incremental-counter.js"></script>
	<script src="js/js/script.js"></script>
	<script type="text/javascript">
		function doUserconfig() {

			if (document.userconfig_form.name.value === '') {
				alert("Vui lòng nhập tên");
				return;
			}

			if (document.userconfig_form.email.value === '') {
				alert("Vui lòng nhập email");
				return;
			}

			if (document.userconfig_form.phone.value === '') {
				alert("Vui lòng nhập số điện thoại");
				return;
			}

			if (document.userconfig_form.address.value === '') {
				alert("Vui lòng nhập địa chỉ");
				return;
			}


			alert("Thông tin của bạn đã được cập nhật");

			document.userconfig_form.target = "_self";
			document.userconfig_form.method = "post";
			document.userconfig_form.submit();

		}
	</script>

	<footer>

		<div class="footer" style="background-color: white;">
			<div class="columnf" style="background-color: black;" id="c1f">
				<div class="noi-dung links">
					<h2 class="footer">Thông tin</h2>
					<span><a href="#">Về chúng tôi</a></span><br /> <span><a
						href="#">Chính sách bảo mật</a></span><br /> <span><a href="#">Điều
							khoản sử dụng</a></span><br /> <span><a href="#">Chính sách đổi
							trả</a></span><br /> <span><a href="#">Hướng dẫn đặt hàng</a></span><br />
				</div>

			</div>
		</div>

		<div class="columnf" style="background-color: black;" id="c2f">
			<div class="noi dung cot 2 links">
				<h2 class="footer">Dịch vụ nổi bật</h2>
				<span><a href="#">Món lẻ</a></span><br /> <span><a href="#">SAS
						GIAO MÓN, DỤNG CỤ, PHỤC VỤ, THU DỌN, VỆ SINH</a></span><br /> <span><a
					href="#">TIỆC TRỌN GÓI LƯU ĐỘNG BẤT KÌ ĐÂU</a></span><br />
			</div>

		</div>

		<div class="columnf" style="background-color: black;" id="c3f">

			<div class="noi dung cot 3 links">
				<h2 class="footer">Hỗ trợ khách hàng</h2>
				<span><a href="#">Thông tin chuyển khoản</a></span><br /> <span><a
					href="#">Phí giao hàng</a></span><br /> <span><a href="#">Câu
						hỏi thường gặp</a></span><br /> <span><a href="#">Bảng tin công
						ty</a></span><br /> <span><a href="#">Video</a></span><br />
			</div>

		</div>

		<div class="columnf" style="background-color: black;" id="c4f">
			<h2 class="footer">Đăng kí nhận tin ưu đãi giảm giá</h2>
			<form class="form">
				<input type="email" class="form__field"
					placeholder="Đăng Ký Subscribe Email" />
				<button type="button" class="btn btn--primary  uppercase">Gửi</button>
			</form>
		</div>

	</footer>
</body>
</html>