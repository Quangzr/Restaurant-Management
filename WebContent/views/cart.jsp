<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<spring:url value="/updatedeliveryaddress"
	var="updatedeliveryaddress_form" />
<spring:url value="/deletedeliveryaddress"
	var="deletedeliveryaddress_form" />

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="fontawesome-free-5.15.3-web/fontawesome-free-5.15.3-web/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/css/cssdeliveryaddress.css" />
<title>Cart</title>

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
					<button class="dropbtn1" style="margin-right: 40px;">
						<i style='font-size: 25px' class='far'>&#xf2bb;</i> Chào
						${nowname}
					</button>
					<div class="dropdown-content1">
						<a href="/jvb-spring-web/userconfig">Thiết lập cá nhân</a> <a
							href="#">Đơn hàng</a> <a href="/jvb-spring-web/deliveryaddress">Địa
							chỉ giao hàng</a> <a href="#">Yêu thích</a> <a
							href="/jvb-spring-web/home">Đăng xuất</a>
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
				<li><a href="/jvb-spring-web/userconfig">THÔNG TIN CÁ NHÂN</a></li>
				<li><a href="/jvb-spring-web/clickcart">QUẢN LÝ ĐƠN HÀNG</a></li>
				<li><a href="/jvb-spring-web/deliveryaddress">ĐỊA CHỈ GIAO
						HÀNG</a></li>
				<li><a href="#">DANH SÁCH YÊU THÍCH</a></li>
			</ul>
		</div>

		<div class="right" style="background-color: white;">

			<h2>Đơn hàng</h2>

			<div>
				<c:forEach var="m" items="${listChoice}">
					<div class="column">
						<div class="diachicanhan">
							<div>Tên món ăn:</div>
							<div>${m.name}</div>
							<div>Đơn giá:</div>
							<div>${m.price}</div>
							<div>Số lượng:</div>
							<div>${m.price}</div>
							<div>Tổng tiền:</div>
							<div>${m.price}</div>

							<!-- Trigger/Open The Modal -->
							<button onclick="popup(${m.id})" id="myBtn1" class="configaddress">Thay
								đổi</button>

							<!-- The Modal -->
							<div id="myModal1" class="modal">

								<!-- Modal content -->
								<div class="modal-content">
									<div class="modal-header">
										<span class="close1"><button onclick="turnoffpopup()"
												class="nutclose1"
												style="background-color: orange; color: white; border: none;"
												onMouseOver="this.style.color='black'"
												onMouseOut="this.style.color='white'">&times;</button></span>
										<h2>Đơn hàng</h2>
									</div>
									<div class="modal-body">

										<form name="updatelistchoice_form"
											id='updatelistchoice_form'
											modelAttribute="updatelistchoice_form"
											class="form-inline" action="${updatelistchoice_form}"
											method="post" onsubmit="return validateform()"
											>
											<div class="nhieuinput">
												<div>
													<label>
														<p>Tên món ăn</p>
													</label> <input type="text" name="name" required id="nameupdate"
														placeholder="Điền họ và tên " value=${m.name} >
												</div>

												<div>
													<label>
														<p>Đơn giá</p>
													</label> <input type="text" name="city" id="cityupdate"
														placeholder="Điền thành phố" required value=${m.city} >
												</div>

												<div>
													<label>
														<p>Số lượng: </p>
													</label> <input type="text" name="district" required
														id="districtupdate" placeholder="Điền phường xã "
														value=${m.district} >
												</div>

												<div>
													<label>
														<p>Địa chỉ cụ thể (*)</p>
													</label> <input type="text" name="detailaddress" required
														id="detailaddressupdate"
														placeholder="Điền địa chỉ cụ thể " value=${m.detailaddress} >
												</div>

												<div>
													<label>
														<p>Số điện thoại (*)</p>
													</label> <input type="text" name="phone" required id="phoneupdate"
														placeholder="Điền số điện thoại " value=${m.phone} >
												</div>

												<div>
													<label>
														<p>Ghi chú: </p>
													</label> <input type="text" name="note" id="noteupdate"
														value=${m.note} >
												</div>

											</div>
										</form>

										<button onclick="updateDeliveryAddress(${m.id})" class="luuthongtin">
											<b>Lưu thông tin</b>
										</button>
									</div>

								</div>

							</div>

							<button onclick="deleteDeliveryAddress(${m.id})"
								class="configaddress">Xóa</button>

							<form name="deletedlistchoice_form" id='${m.id}'
								type="hidden" value="${m.id}"
								modelAttribute="deletedlistchoice_form" class="form-inline"
								action="${deletedlistchoice_form}" method="post"
								onsubmit="return validateform()"></form>

						</div>
					</div>
				</c:forEach>
			</div>

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
		// Get the modal
		// lấy modal nhé 
		var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// mở modal khi bấm nút
		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// đóng modal khi bấm dấu X
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		 function updateDeliveryAddress(id) {
			if (document.getElementById("nameupdate").value === '') {
				alert("Vui lòng nhập tên");
				return;
			}

			if (document.getElementById("cityupdate").value === '') {
				alert("Vui lòng nhập thành phố");
				return;
			}

			if (document.getElementById("districtupdate").value === '') {
				alert("Vui lòng nhập phường xã");
				return;
			}

			if (document.getElementById("detailaddressupdate").value === '') {
				alert("Vui lòng nhập địa chỉ");
				return;
			}

			if (document.getElementById("phoneupdate").value === '') {
				alert("Vui lòng nhập số điện thoại");
				return;
			}
			
			alert("Thông tin của bạn đã được cập nhật");

			$.ajax ({
 				type: "POST",
 				url: "${pageContext.request.contextPath}/updateliveryaddress/" + id, 
 				dataType: "json",
 				crossDomain: true,
 				success: function(datal) {
 					console.log('Done');
 					console.log(datal);
 				},
 				
 			});
			
/*  			document.updatedeliveryaddress_form.target = "_self"; 		
			document.updatedeliveryaddress_form.method = "post";
 		 	document.getElementById("updatedeliveryaddress_form").submit();   */
			
		} 

 		function deleteDeliveryAddress(id) {

			$.ajax ({
 				type: "GET",
 				url: "${pageContext.request.contextPath}/deletedeliveryaddress/" + id, 
 				dataType: "json",
 				crossDomain: true,
 				success: function(datal) {
 					console.log('Done');
 					console.log(datal);
 				},
 				
 			});
			
			alert("Thông tin của bạn đã được cập nhật"); 
		} 

		function popup(id) {	
		 	var btn = document.querySelector('#updatedeliveryaddress_form');
			var modal1 = document.getElementById("myModal1");
			modal1.style.display = 'block'
			btn.style.display = 'block'
			//hiện để check
			console.log(turnonpopup) 

			$.ajax ({
 				type: "GET",
 				url: "${pageContext.request.contextPath}/updatedeliveryaddress/" + id, 
 				dataType: "json",
 				crossDomain: true,
 				success: function(datal) {
 					console.log('Done');
 					console.log(datal);
 				},
 				
 			});
		}

		function turnoffpopup() {
			var btn = document.querySelector('#updatedeliveryaddress_form');
			var modal1 = document.getElementById("myModal1");
			modal1.style.display = 'none'
			btn.style.display = 'none'
			//hiện để check 
			console.log(turnoffpopup)
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