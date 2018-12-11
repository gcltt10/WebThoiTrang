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
	<div class="col-md-3 mh-dashbroad">
		<div class="list-group">
			<a href="#" class="list-group-item list-group-item-action active">Quản lý dòng sản phẩm</a>
			<a href="#" class="list-group-item list-group-item-action">Quản lý nhóm sản phẩm</a>
			<a href="#" class="list-group-item list-group-item-action">Quản lý sản phẩm</a>
			<a href="${pageContext.request.contextPath}/QuanLyKhachHang" class="list-group-item list-group-item-action">Quản lý khách hàng</a>
			<a href="${pageContext.request.contextPath}/QuanLyDonHang" class="list-group-item list-group-item-action">Quản lý đơn hàng</a>
			<a href="${pageContext.request.contextPath}/ThongKe" class="list-group-item list-group-item-action">Thống kê</a>
		</div>
	</div>
</body>
</html>