<%@page import="dao.category_child_DAO"%>
<%@page import="model.category_child"%>
<%@page import="dao.category_DAO"%>
<%@page import="model.category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="images/favicon.png">
<title>Shop Dương - Minh  - Thủy, khởi nguồn của sáng tạo</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="css/sequence-looptheme.css" rel="stylesheet" media="all" />
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div class="header">

		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt="FlatShop"></a>
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
									<span class="cart_no">02</span>
							</a>
								<ul class="option-cart-item">
									<li>
										<div class="cart-item">
											<div class="image">
												<img src="images/products/thum/products-01.png" alt="">
											</div>
											<div class="item-description">
												<p class="name">Lincoln chair</p>
												<p>
													Size: <span class="light-red">One size</span><br>Quantity:
													<span class="light-red">01</span>
												</p>
											</div>
											<div class="right">
												<p class="price">$30.00</p>
												<a href="#" class="remove"><img src="images/remove.png"
													alt="remove"></a>
											</div>
										</div>
									</li>
									<li>
										<div class="cart-item">
											<div class="image">
												<img src="images/products/thum/products-02.png" alt="">
											</div>
											<div class="item-description">
												<p class="name">Lincoln chair</p>
												<p>
													Size: <span class="light-red">One size</span><br>Quantity:
													<span class="light-red">01</span>
												</p>
											</div>
											<div class="right">
												<p class="price">$30.00</p>
												<a href="#" class="remove"><img src="images/remove.png"
													alt="remove"></a>
											</div>
										</div>
									</li>
									<li><span class="total">Total <strong>$60.00</strong></span>
										<button class="checkout"
											onClick="location.href='checkout.html'">CheckOut</button></li>
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
								<li class="dropdown">
								<a href="${pageContext.request.contextPath}/DanhMucSanPham?categoryID=<%=parent.getCategoryID()%>&page=1"
									class="dropdown-toggle" data-toggle="dropdown"><%=parent.getCategoryName()%></a>
									<%
										ArrayList<category_child> lscap2 = category_child_DAO.LoadDanhMucSanPhamCap2(parent.getCategoryID());
										if(lscap2.size()!=0){
									%>
									<div class="dropdown-menu" style="width:200px;">
										<ul class="mega-menu-links">
											<%
												for(category_child child:lscap2){
											%>
											<li><a href="${pageContext.request.contextPath}/DanhMucSanPham?category-child-id=<%=child.getIdcategory_id()%>&page=1"><%=child.getCategory_child_name() %></a></li>
											<%
												}
											%>
										</ul>
									</div>
									<%
										}
									%>
								</li>
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