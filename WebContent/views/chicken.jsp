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
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/css/csschicken.css">
<title>Chicken</title>

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


	<div class="card">
		<div class="row">
			<div class="column" id="cot1">
				<img
					src="https://media.ohay.tv/v1/content/2015/08/2-ohay-tv-76948.jpg"
					alt="" class="tab-pane">

				<ul class="preview-thumbnail nav nav-tabs">
					<li class="active"><img
						src="https://th.bing.com/th?id=OIF.%2fZAKcC%2fuGgLbTZyQ1PLrUQ&pid=ImgDet&rs=1">
					</li>
					<li><img
						src="http://streaming1.danviet.vn/upload/4-2017/images/2017-12-22/Cach-lam-ga-nuong-mat-ong-vang-ong-thom-nuc-cho-dem-tiec-Giang-sinh-_mg_8586-1513947107-width660height440.jpg"
						alt=""></li>
					<li><img
						src="https://img-global.cpcdn.com/recipes/d08bdd7824453fe4/751x532cq70/ga-lu%E1%BB%99c-recipe-main-photo.jpg"
						alt=""></li>
				</ul>

			</div>


			<div class="column" id="cot2">
				<h3 class="product-title">GÀ BÓ XÔI THANH LONG</h3>
				<p class="product-description">Thành phẩm kể cả xôi khoảng 1kg7-
					1kg9, khoảng 4-5 người dùng. Sản phẩm kèm : Dưa leo, cà chua, rau
					răm, muối tiêu tắc, nước chấm xôi, bao tay xé gà.</p>
				<p class="product-description">GÀ BÓ XÔI THANH LONG "PHIÊN BẢN
					MỚI" - Món Gà Bó Xôi FLYFOOD 9 năm nhưng chưa bao giờ cũ. Sáng tạo
					để Quý khách luôn có trải nghiệm sự mới lạ, độc đáo và giá trị. GÀ
					BÓ XÔI THANH LONG - Xôi dày đúng 1cm, ôm lấy Gà Quay Ngũ Vị, bên
					trong bụng gà có trứg non hạt sen - Sự kết hợp đậm nét phong thủy
					từ màu sắc tương sinh đến yếu tố sinh sôi nẩy nở từ những chùm
					trứng non vàng óng trong bụng gà.</p>

				<p class="product-description">${description}</p>

				<h4 class="price">Giá bán: 200.000 đ</h4>

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
						<button class="add-to-cart btn btn-default" type="button">ĐẶT
							MÓN</button>
					</a>
				</div>
			</div>
		</div>

		<div class="phan bonus">
			<h1 class="thong-tin-bonus">Thông tin sản phẩm</h1>
			<p>GÀ BÓ XÔI THANH LONG "PHIÊN BẢN MỚI" - Món Gà Bó Xôi FLYFOOD 9
				năm nhưng chưa bao giờ cũ. Sáng tạo để Quý khách luôn có trải nghiệm
				sự mới lạ, độc đáo và giá trị. GÀ BÓ XÔI THANH LONG - Xôi dày đúng
				1cm, ôm lấy Gà Quay Ngũ Vị, bên trong bụng gà có trứg non hạt sen -
				Sự kết hợp đậm nét phong thủy từ màu sắc tương sinh đến yếu tố sinh
				sôi nẩy nở từ những chùm trứng non vàng óng trong bụng gà.</p>
			<img class="img-bonus"
				src="https://media.tinmoi.vn/2011/06/18/3_13_1308369888_41_1308196491-110609afamily-AN-ga-nuong-7.jpg"
				alt=""> <img class="img-bonus"
				src="http://toinayangi.vn/wp-content/uploads/2014/11/cach-tam-uop-ga-nuong-1.jpg"
				alt=""> <img class="img-bonus"
				src="https://emvaobep.com/wp-content/uploads/2018/03/cach-uop-thit-ga-nuong-muoi-ot-5.jpg"
				alt=""> <img class="img-bonus"
				src="https://meta.vn/Data/image/2015/12/11/ga-nuong-mat-ong.jpg"
				alt="">
		</div>

	</div>

	</div>



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