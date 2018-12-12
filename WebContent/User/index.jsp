<%@page import="dao.Product_DAO"%>
<%@page import="model.product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<title>Shop Dương - Minh  - Thủy, khởi nguồn của sáng tạo</title>

<!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>
<body id="home">
	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>

		<div class="hom-slider">
			<div class="container">
				<div id="sequence">
					<div class="sequence-prev">
						<i class="fa fa-angle-left"></i>
					</div>
					<div class="sequence-next">
						<i class="fa fa-angle-right"></i>
					</div>
					<ul class="sequence-canvas">
						<li class="animate-in">
							<div class="flat-caption caption1 formLeft delay300 text-center">
								<span class="suphead">Paris show 2014</span>
							</div>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>Collection For Winter</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>
									Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.<br>Lorem Ipsum is simply dummy text
									of the printing and typesetting
								</p>
							</div>

							<div class="flat-image formBottom delay200" data-duration="5"
								data-bottom="true">
								<img src="images/slider-image-01.png" alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400">
								<h1>Collection For Winter</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500">
								<h2>
									Etiam velit purus, luctus vitae velit sedauctor<br>egestas
									diam, Etiam velit purus.
								</h2>
							</div>

							<div class="flat-image formBottom delay200" data-bottom="true">
								<img src="images/slider-image-02.png" alt="">
							</div>
						</li>
						<li>
							<div class="flat-caption caption2 formLeft delay400 text-center">
								<h1>New Fashion of 2013</h1>
							</div>
							<div class="flat-caption caption3 formLeft delay500 text-center">
								<p>
									Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. <br>Lorem Ipsum is simply dummy text
									of the printing and typesetting
								</p>
							</div>
							<div class="flat-image formBottom delay200" data-bottom="true">
								<img src="images/slider-image-03.png" alt="">
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container_fullwidth">
			<div class="container">
				<div class="hot-products">
					<h3 class="title">
						Sản phẩm <strong>Khuyến mãi</strong>
					</h3>
					<div class="control">
						<a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot"
							class="next" href="#">&gt;</a>
					</div>
					<ul id="hot">
						<li>
							<div class="row">
								<%
									ArrayList<product> ls1 = Product_DAO.LoadDanhSachSanPhamGiaGia(1, 4);
									for(product sp : ls1){
								%>
								<div class="col-md-3 col-sm-6">
									<div class="products">
										<div class="offer">-<%=sp.getDiscount()%>%</div>
										<div class="thumbnail">
											<a href="details.html"><img
												src="images/products/small/<%=sp.getImg() %>"
												alt="Product Name"></a>
										</div>
										<div class="productname"><%=sp.getProduct_name() %></div>
										<h4 class="price"> <fmt:formatNumber type="number" maxIntegerDigits="10" value="<%=sp.getPrice()%>" /> VNĐ</h4>
										<div class="button_group">
											<button class="button add-cart" type="button">Add To
												Cart</button>
										</div>
									</div>
								</div>
							<%
									}
							%>
							</div>
						</li>
						<li>
							<div class="row">
									<%
									ArrayList<product> ls2 = Product_DAO.LoadDanhSachSanPhamGiaGia(2, 4);
									for(product sp : ls2){
								%>
								<div class="col-md-3 col-sm-6">
									<div class="products">
										<div class="offer">-<%=sp.getDiscount()%>%</div>
										<div class="thumbnail">
											<a href="details.html"><img
												src="images/products/small/<%=sp.getImg() %>"
												alt="Product Name"></a>
										</div>
										<div class="productname"><%=sp.getProduct_name() %></div>
										<h4 class="price"> <fmt:formatNumber type="number" maxIntegerDigits="10" value="<%=sp.getPrice()%>" /> VNĐ</h4>
										<div class="button_group">
											<button class="button add-cart" type="button">Add To
												Cart</button>
										</div>
									</div>
								</div>
							<%
									}
							%>
							</div>
						</li>
					</ul>
				</div>
				
				<div class="clearfix"></div>
				<div class="our-brand">
					<h3 class="title">
						<strong>Our </strong> Brands
					</h3>
					<div class="control">
						<a id="prev_brand" class="prev" href="#">&lt;</a><a
							id="next_brand" class="next" href="#">&gt;</a>
					</div>
					<ul id="braldLogo">
						<li>
							<ul class="brand_item">
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/themeforest.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/photodune.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/activeden.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
							</ul>
						</li>
						<li>
							<ul class="brand_item">
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/themeforest.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/photodune.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/activeden.png" alt="">
										</div>
								</a></li>
								<li><a href="#">
										<div class="brand-logo">
											<img src="images/envato.png" alt="">
										</div>
								</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
	<!-- Bootstrap core JavaScript==================================================-->
	<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.sequence-min.js"></script>
	<script type="text/javascript"
		src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/script.min.js"></script>
</body>
</html>