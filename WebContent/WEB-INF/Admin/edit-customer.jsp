<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<jsp:include page="header.jsp"></jsp:include>
	<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="test-header.jsp"></jsp:include>
	<main role="main">
		<div class="container-fluid mt-dashbroad">
			<div class="row">
				<jsp:include page="test-dashboard.jsp"></jsp:include>
				<div class="col-sm-9">
					<h2>Sửa thông tin</h2>
					<hr>
					<form action="${pageContext.request.contextPath}/QuanLyKhachHang/EditKhachHang" method="post">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="txtCustomerID">Mã số khách hàng</label>
								<input type="text" class="form-control" name="txtCustomerID" readonly="readonly" value="${Khachhang.idcustomer}">
							</div>
							<div class="form-group col-md-6">
								<label for="inputEmail4">Họ tên</label>
								<input type="text" class="form-control" name="txtCustomerName" value="${Khachhang.customer_name}" required>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="txtEmail">Email</label>
								<input type="email" id="inputEmail" name="txtEmail" class="form-control" value="${Khachhang.email}" required
								 autofocus>
							</div>
							<div class="form-group col-md-6">
								<label for="txtPhone">Số điện thoại</label>
								<input type="text" class="form-control" name="txtPhone" value="${Khachhang.phone}" required>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="txtBirthDay">Năm sinh</label>
								<input type="date" name="txtBirthDay" max="3000-12-31" min="1000-01-01" class="form-control" value="${Khachhang.birthday}">
							</div>
							<div class="form-group col-md-6">
								<label for="txtAddress">Địa chỉ</label>
								<input type="text" class="form-control" name="txtAddress" value="${Khachhang.address}" required>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="txtGioiTinh">Giới tính</label>
								<select class="form-control" name="txtGioiTinh">
									<c:choose>
										<c:when test="${Khachhang.sex == false }">
											<option value="1" >Nam</option>
											<option value="0" selected="selected">Nữ</option>
										</c:when>
										<c:otherwise>
											<option value="1" selected="selected">Nam</option>
											<option value="0">Nữ</option>
										</c:otherwise>
									</c:choose>		
								</select>
							</div>
							<div class="form-group col-md-6">
								<label for="txtUserName">Tên tài khoản</label>
								<input type="text" class="form-control" name="txtUserName" value="${Khachhang.username}" readonly="readonly">
							</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-6">
										<label for="txtPassword">Mật khẩu</label>
										<input type="text" class="form-control" name="txtPassword" value="${Khachhang.password}" required>
									</div>
						</div>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Đồng ý</button>
						<a class="btn btn-secondary btn-block" href="${pageContext.request.contextPath}/QuanLyKhachHang" role="button">Thoát</a>
					</form>
				</div>
			</div>
		</div>
	</main>
</body>

</html>