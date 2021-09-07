<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="fontawesome-free-5.15.3-web/fontawesome-free-5.15.3-web/css/all.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf -8">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/css/csschicken.css">
<title>${addMonan.name}</title>

<style>
/* các ảnh nhỏ xem trước ở dưới */
.preview-thumbnail.nav-tabs li {
	width: 25%;
	margin-right: 2%;
	display: inline-block;
	height: 60px;
	float: left;
	margin-top: 10px;
}

.preview-thumbnail.nav-tabs li img {
	max-width: 100%;
	height: 100px;
	display: inline-block;
	/* display: inline-block; */
}

/* css chữ in hoa và in đậm ở một số chỗ */
.product-title, .price, .sizes, .colors {
	text-transform: UPPERCASE;
	font-weight: bold;
}

/* css nút đặt món */
.add-to-cart {
	background: #ff9f1a;
	padding: 1.2em 1.5em;
	border: none;
	text-transform: UPPERCASE;
	font-weight: bold;
	color: #fff;
	text-decoration: none;
	margin-bottom: 75px;
}

.add-to-cart:hover {
	background: #b36800;
	text-decoration: none;
}

/* css nút chọn size */
.pick-size {
	background: #ff9f1a;
	padding: 10px 10px;
	border: none;
	color: #fff;
}

.pick-size:hover {
	background: #b36800;
	color: #fff;
	text-decoration: none;
}

/* css cho các ảnh ở dưới và thông tin bổ sung */
.img-bonus {
	width: 50%;
	height: 300px;
	margin-bottom: 20px;
	margin-left: 250px;
}

/* css cho top nav */
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: white;
	padding-left: 45px;
}

.topnavbutton {
	padding: 14px 16px;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	/* padding: 14px 16px; */
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	color: orange;
}

/* css cho nút tìm kiếm và icon bên góc phải */
form.example button {
	float: right;
	margin-top: 15px;
	color: black;
	border: none;
	background-color: white;
}

form.example button:hover {
	color: orange;
}

/* .far {
			margin-right: 10px;
			margin-top: 17px;
			margin-left: 10px;
			float: right;
			font-size: 24px;
		} */
.far:hover {
	color: orange;
}

.far {
	margin-right: 5px;
}

/* .dropdown1 {
			float: left;
			overflow: hidden;
		} */
.dropdown1 .dropbtn1 {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
	margin-right: 40px;
}

/* .navbar a:hover,
		.dropdown1:hover .dropbtn {
			color: orange;
		} */
.dropdown-content1 {
	display: none;
	position: absolute;
	background-color: white;
	/* min-width: 160px; */
	/* box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); */
	/* z-index: 1; */
	color: black;
}

.dropdown-content1 a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
	font-size: 15px;
	/* margin-right: 10px; */
}

/* .dropdown-content1 a:hover {
			color: orange;
		} */
.dropdown1:hover .dropdown-content1 {
	display: block;
}

/* css footer */
.columnf {
	float: left;
	width: 25%;
	padding: 0px;
	padding-left: 45px;
	height: 250px;
	/* Should be removed. Only for demonstration */
	transition: transform .2s;
	margin-bottom: 25px;
}

.footer {
	color: white;
}

.links span a {
	text-decoration: none;
	color: white;
	display: inline-block;
}

.links span a:hover {
	color: orange;
}

/* css drop down */
.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	color: orange;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	color: black;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	color: orange;
}

.dropdown:hover .dropdown-content {
	display: block;
}

/* css cho viền ghi bao quanh */
.card {
	width: 87%;
	margin: 0 auto;
	background-color: whitesmoke;
	padding-top: 30px;
}

/* css cho ảnh chính bên trái*/
.tab-pane {
	display: inline;
	width: 100%;
	height: 400px;
	float: left;
	padding-top: 15px;
}

/* css cho 2 cột: bên trái là ảnh, bên phải là thông tin */
.column {
	float: left;
	margin-bottom: 55px;
}

#cot1 {
	width: 40%;
	margin-right: 40px;
}

#cot2 {
	width: 55%;
}
</style>



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
						<i style='font-size: 25px' class='far'>&#xf2bb;</i> Chào
						${nowname}
					</button>
					<div class="dropdown-content1">
						<a href="/jvb-spring-web/userconfig">Thiết lập cá nhân</a> <a
							href="/jvb-spring-web/clickcart">Đơn hàng</a> <a
							href="/jvb-spring-web/deliveryaddress">Địa chỉ giao hàng</a> <a
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


	<div class="card">
		<div class="row">
			<div class="column" id="cot1">
				<img src="${addMonan.linkimg}" alt="" class="tab-pane">

				<ul class="preview-thumbnail nav nav-tabs">
					<li class="active"><img src="${addMonan.imgbonus1}"></li>
					<li><img src="${addMonan.imgbonus2}" alt=""></li>
					<li><img src="${addMonan.imgbonus3}" alt=""></li>
				</ul>

			</div>


			<div class="column" id="cot2">
				<h3 class="product-title">${addMonan.name}</h3>
				<p class="product-description">${addMonan.thanhphan}</p>
				<p class="product-description">${addMonan.description}</p>

				<h4 class="price">Giá bán: ${addMonan.price}</h4>

				<!-- nút chọn số lượng -->
				<div class="buttons_added">
					<input class="minus is-form" type="button" value="-"> <input
						aria-label="quantity" class="input-qty" type="number"> <input
						class="plus is-form" type="button" value="+">
				</div>


				<h5 class="sizes">
					Kích cỡ: <span class="size" data-toggle="tooltip" title="small">
						<button class="pick-size" type="button">S</button>
						<button class="pick-size" type="button">M</button>
						<button class="pick-size" type="button">L</button>
					</span>
				</h5>


				<div class="action1">
					<a>
						<button onclick="doAddCart(${addMonan.id})"
							class="add-to-cart btn btn-default" type="button">ĐẶT
							MÓN</button>
					</a>
				</div>
			</div>
		</div>

		<div class="phan bonus">
			<h1 class="thong-tin-bonus">Thông tin sản phẩm</h1>
			<p>${addMonan.description}</p>
			<img class="img-bonus" src="${addMonan.imgbonus1}" alt=""> <img
				class="img-bonus" src="${addMonan.imgbonus2}" alt=""> <img
				class="img-bonus" src="${addMonan.imgbonus3}" alt=""> <img
				class="img-bonus" src="${addMonan.imgbonus4}" alt="">
		</div>

	</div>

	</div>

	<script>
	function  doAddCart(id) {
		alert("Món ăn đã được thêm vào giỏ hàng");
	}
	
	</script>


	<footer>
		<div class="row4" style="background-color: white;">
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