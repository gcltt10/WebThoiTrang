<%@page import="model.MonHang"%>
<%@page import="dao.GIOHANG_MODEL"%>
<%@page import="dao.category_child_DAO"%>
<%@page import="model.category_child"%>
<%@page import="dao.category_DAO"%>
<%@page import="model.category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/User/images/favicon.png">
<title>Shop Dương - Minh - Thủy, khởi nguồn của sáng tạo</title>
<link href="${pageContext.request.contextPath}/User/css/bootstrap.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link
	href="${pageContext.request.contextPath}/User/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/User/css/flexslider.css"
	type="text/css" media="screen" />
<link
	href="${pageContext.request.contextPath}/User/css/sequence-looptheme.css"
	rel="stylesheet" media="all" />
<link href="${pageContext.request.contextPath}/User/css/style.css"
	rel="stylesheet">

<!-- Bootstrap core JavaScript==================================================-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/User/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/User/js/jquery.easing.1.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/User/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/User/js/jquery.sequence-min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/User/js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script defer
	src="${pageContext.request.contextPath}/User/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/User/js/script.min.js"></script>
</head>
<body>
	<div class="header">

		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<div class="logo">
						<a href="${pageContext.request.contextPath}/TrangChu"><img
							src="${pageContext.request.contextPath}/User/images/logo.png"
							alt="FlatShop"></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-10">
					<div class="header_top">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6"></div>
							<div class="col-md-3">
								<ul class="usermenu">
									<li><a href="checkout.html" class="log">Login</a></li>
									<li><a href="checkout2.html" class="reg">Register</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="header_bottom">
						<ul class="option">
							<li id="search" class="search">
								<form>
									<input class="search-submit" type="submit" value=""><input
										class="search-input" placeholder="Enter your search term..."
										type="text" value="" name="search">
								</form>
							</li>
							<li class="option-cart"><a href="#" class="cart-icon">cart
									<span class="cart_no"></span>
							</a>
								<ul class="option-cart-item">
									<%
										GIOHANG_MODEL giohang = (GIOHANG_MODEL) request.getSession().getAttribute("giohang");
										if (giohang != null) {
											ArrayList<MonHang> ls = giohang.getGiohang();
											for (MonHang monhang : ls) {
									%>
									<li>
										<div class="cart-item">
											<div class="image">
												<img
													src="${pageContext.request.contextPath}/User/images/products/thum/<%=monhang.getImg()%>"
													alt="">
											</div>
											<div class="item-description">
												<p class="name"><%=monhang.getTensp()%></p>
												<p>
													Size: <span class="light-red">One size</span><br>Số
													lượng: <span class="light-red"><%=monhang.getSoluong()%></span>
												</p>
											</div>
											<div class="right">
												<p class="price">
													<fmt:formatNumber type="number" maxIntegerDigits="10"
														value="<%=monhang.getGiasp()%>" />
													VNĐ
												</p>
												<a href="#" class="remove"><img
													src="${pageContext.request.contextPath}/User/images/remove.png"
													alt="remove"></a>
											</div>
										</div>
									</li>
									<%
										}
									%>
									<li><span class="total">Total<strong><fmt:formatNumber type="number" maxIntegerDigits="10"
														value="<%=giohang.Tongtien()%>" />
													VNĐ</strong></span>
										<button class="checkout"
											onClick="location.href='checkout.html'">Thanh toán</button></li>
									<%
										}
									%>
								</ul></li>
						</ul>
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span><span
									class="icon-bar"></span><span class="icon-bar"></span><span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active dropdown"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown">Home</a></li>
								<%
									ArrayList<category> lscap1 = category_DAO.LoadDanhMucSanPhamCap1();
									for (category parent : lscap1) {
								%>
								<li class="dropdown"><a
									href="${pageContext.request.contextPath}/DanhMucSanPham?categoryID=<%=parent.getCategoryID()%>&page=1"
									class="dropdown-toggle" data-toggle="dropdown"><%=parent.getCategoryName()%></a>
									<%
										ArrayList<category_child> lscap2 = category_child_DAO.LoadDanhMucSanPhamCap2(parent.getCategoryID());
											if (lscap2.size() != 0) {
									%>
									<div class="dropdown-menu" style="width: 200px;">
										<ul class="mega-menu-links">
											<%
												for (category_child child : lscap2) {
											%>
											<li><a
												href="${pageContext.request.contextPath}/DanhMucSanPham?category-child-id=<%=child.getIdcategory_id()%>&page=1"><%=child.getCategory_child_name()%></a></li>
											<%
												}
											%>
										</ul>
									</div> <%
 	}
 %></li>
								<%
									}
								%>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</body>
</html>