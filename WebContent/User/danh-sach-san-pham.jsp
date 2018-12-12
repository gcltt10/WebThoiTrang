<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="price-filter leftbar">
							<h3 class="title">Price</h3>
							<form class="pricing">
								<input type="number"> <br /> <span class="separate">
									- </span> <br /> <br /> <input type="number"> <input
									type="submit" value="Go">
							</form>
						</div>
						<div class="clearfix"></div>

					</div>
					<div class="col-md-9">
						<div class="banner">
							<div class="bannerslide" id="bannerslide">
								<ul class="slides">
									<li><a href="#"> <img src="images/banner-01.jpg"
											alt="" />
									</a></li>
									<li><a href="#"> <img src="images/banner-02.jpg"
											alt="" />
									</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="products-grid">
							<div class="toolbar">
								<div class="sorter">
									<div class="view-mode">
										<a href="productlitst.html" class="list"> List </a> <a
											href="#" class="grid active"> Grid </a>
									</div>
									<div class="sort-by">
										Sort by : <select name="">
											<option value="Default" selected>Default</option>
											<option value="Name">Name</option>
											<option value="Price">Price</option>
										</select>
									</div>
									<div class="limiter">
										Show : <select name="">
											<option value="3" selected>3</option>
											<option value="6">6</option>
											<option value="9">9</option>
										</select>
									</div>
								</div>
								<div class="pager">
									<a href="#" class="prev-page"> <i class="fa fa-angle-left">
									</i>
									</a> <a
										href="${pageContext.request.contextPath}/DanhMucSanPham?${key}=${id}&page=1"
										class="active"> 1 </a> <a
										href="${pageContext.request.contextPath}/DanhMucSanPham?${key}=${id}&page=2">
										2 </a> <a
										href="${pageContext.request.contextPath}/DanhMucSanPham?${key}=${id}&page=3">
										3 </a> <a href="#" class="next-page"> <i
										class="fa fa-angle-right"> </i></a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="row">
								<c:forEach items="${dsSanPham}" var="sp">
									<form action="${pageContext.request.contextPath}/GioHang"
										method="post">
										<div class="col-md-4 col-sm-6">
											<div class="products">
												<c:if test="${sp.discount !=0 }">
													<div class="offer">-${sp.discount}%</div>
												</c:if>
												<div class="thumbnail">
													<a href="${pageContext.request.contextPath}/ChiTietSanPham?id=${sp.idproduct}"> <img
														src="images/products/small/${sp.img}" alt="Product Name">
													</a>
												</div>
												<div class="productname">${sp.product_name}</div>
												<h4 class="price">
													<fmt:formatNumber type="number" maxIntegerDigits="10"
														value="${sp.price }" />
													VNĐ
												</h4>
												<div class="button_group">
													<input type="submit" class="button add-cart"
													value="Thêm vào giỏ">
												</div>
											</div>
										</div>
										<input type="hidden" value="${sp.idproduct}"
											name="txtProductID"> <input type="hidden" value="1"
											name="soluong">
									</form>
								</c:forEach>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="our-brand">
					<h3 class="title">
						<strong> Our </strong> Brands
					</h3>
					<div class="control">
						<a id="prev_brand" class="prev" href="#"> &lt; </a> <a
							id="next_brand" class="next" href="#"> &gt; </a>
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
</body>
</html>