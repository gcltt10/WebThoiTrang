<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link href="./css/admin.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="test-header.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid mt-dashbroad">
		<div class="row">
			<jsp:include page="test-dashboard.jsp"></jsp:include>
			<div class="col-sm-9">
				<h2>Chi tiết đơn hàng</h2>
				<hr>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Mã đơn hàng</label> <input type="text"
							class="form-control" value="${hoadon.billID}"
							readonly="readonly">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Tên khách hàng</label> <input
							type="text" class="form-control"
							value="${khachhang.customer_name}" readonly="readonly">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Số điện thoại</label> <input type="text"
							class="form-control" value="${khachhang.phone}"
							readonly="readonly">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Nơi giao hàng</label> <input
							type="text" class="form-control"
							value="${hoadon.delivery}" readonly="readonly">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Ngày đặt hàng</label> <input type="date"
							name="bday" class="form-control" readonly="readonly"
							value="${hoadon.dateOrders}">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Giá trị đơn hàng : </label>
						<fmt:formatNumber type="number" maxFractionDigits="3"
							value="${hoadon.totalMoney}" />
					</div>
				</div>


				<h5>Danh sách sản phẩm</h5>
				<hr>
				<table class="table table-striped">
					<thead class="thead-light">
						<tr>
							<th scope="col">STT</th>
							<th scope="col">Tên sản phẩm</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Giá tiền</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dsSanPham}" var="monhang" varStatus="status">
							<tr>
								<th scope="row">${status.index+1 }</th>
								<td>${monhang.tensp}</td>
								<td>${monhang.soluong}</td>
								<td><fmt:formatNumber type="number" maxFractionDigits="3"
							value="${monhang.giasp}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	</main>
</body>
</html>