<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src='js/jquery.elevatezoom.js'> </script>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="container_fullwidth">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="products-details">
							<div class="preview_image">
								<div class="preview-small">
									<img id="zoom_03" src="images/products/medium/${InforProduct.img}"
										data-zoom-image="images/products/Large/${InforProduct.img}" alt="">
								</div>
							</div>
							<div class="products-description">
								<h5 class="name">${InforProduct.product_name}</h5>
								<p>
									Còn hàng: <span class=" light-red"> Vẫn còn </span>
								</p>
								<p>Proin lectus ipsum, gravida et mattis vulputate,
									tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum
									primis in faucibus orci luctus et ultrie ces posuere cubilia
									curae. Proin lectus ipsum, gravida etds mattis vulps utate,
									tristique ut lectus. Sed et lorem nunc...</p>
								<hr class="border">
								<div class="price">
									Price : <span class="new_price"><fmt:formatNumber type="number" maxIntegerDigits="10"
													value="${InforProduct.price * (100-InforProduct.discount)/100}" />
												<sup> VNĐ</sup>
									</span> <span class="old_price"><fmt:formatNumber type="number" maxIntegerDigits="10"
													value="${InforProduct.price}" />
												<sup> VNĐ</sup>
									</span>
								</div>
								<hr class="border">
								<div class="wided">
									<div class="qty">
										Số lượng &nbsp;&nbsp;: <select>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
									<div class="button_group">
										<button class="button">Add To Cart</button>

									</div>
								</div>
								<div class="clearfix"></div>

							</div>
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