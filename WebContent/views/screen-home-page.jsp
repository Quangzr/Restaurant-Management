<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>screen-home-page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="fontawesome-free-5.15.3-web/fontawesome-free-5.15.3-web/css/all.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf -8">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/css/csshomepage.css" />

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
					<button class="dropbtn1">
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

	<div class="imag">
		<div class="hienthi">
			<h1 id="home">Keep the tradition</h1>
			<h1 id="home">Modern connection</h1>
			<div class="search-container1">
				<form>
					<input type="text" placeholder="Search.." name="search">
					<button type="submit">
						<a href="/jvb-spring-web/clicksearch"><i class="fa fa-search"></i></a>
					</button>
				</form>
			</div>
		</div>
	</div>



	<div>
		<h1 id="menu" style="padding-left: 45px; padding-right: 45px;">Món
			lẻ: GIAO TẬN NƠI từ 30-60p (7h00:20h00) - SHIP ĐỒNG GIÁ 29K (TP.HCM)</h1>
	</div>

	<div class="row">
		<div class="w3-container">
			<c:forEach var="m" items="${addFoodMonle}">
				<div class="column" style="background-color: whitesmoke;" id="c1">
					<div class="w3-container">
						<a href="${pageContext.request.contextPath}/getMonan/${m.id}"
							style="text-decoration: none;"><img src="${m.linkimg}"
							style="width: 100%; height: 180px;">
							<p>
								${m.name}<br> <b>${m.price}</b>
							</p> </a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>



	<div>
		<h1 class="menu2" style="padding-left: 45px; padding-right: 45px;">Party
			: MÓN KHAI VỊ - SẮC MÀU - 60 phút</h1>
	</div>

	<div class="row">
		<div class="w3-container">
			<c:forEach var="n" items="${addFoodKhaivi}">
				<div class="column" style="background-color: whitesmoke;" id="c1">
					<div class="w3-container">
						<a href="${pageContext.request.contextPath}/getMonan/${n.id}"
							style="text-decoration: none;"><img src="${n.linkimg}"
							style="width: 100%; height: 180px;">
							<p>
								${n.name}<br> <b>${n.price}</b>
							</p> </a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


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