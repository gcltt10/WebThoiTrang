<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/css/admin.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="test-header.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid mt-dashbroad">
		<div class="row">
			<jsp:include page="test-dashboard.jsp"></jsp:include>
			<div class="col-md-9">
				<div class="row">
					<div class="col">
						<p style="text-align: center; font-size: 25px">
							<strong>Danh sách đơn hàng</strong>
						</p>
					</div>
				</div>
				<hr>

				<table class="table table-striped">
					<thead class="thead-light">
						<tr>
							<th scope="col">STT</th>
							<th scope="col">Mã đơn hàng</th>
							<th scope="col">Tên khách hàng</th>
							<th scope="col">Giá trị đơn hàng</th>
							<th scope="col">Ngày đặt hàng</th>
							<th scope="col">Chi tiết đơn hàng</th>
							<th scope="col">Xóa</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dsKhachHang}" var="kh" varStatus="status">
							<tr>
								<th scope="row">${status.index+1 }</th>
								<td>${kh.idcustomer}</td>
								<td>${kh.customer_name}</td>
								<td>
								<c:if test="${kh.sex == true}">Nam</c:if>
								<c:if test="${kh.sex == false}">Nữ</c:if>
								</td>
								
								<td> <fmt:formatDate pattern="dd-MM-yyyy" value="${kh.birthday}" /></td>
								<td>${kh.email}</td>
								<td>${kh.phone}</td>
								<td><a href="${pageContext.request.contextPath}/QuanLyDonHang/ChiTietDonHang?BillID=${kh.idcustomer}">
									<i	class="fas fa-eye"></i></a></td>
								<td><a href="#" onclick="btnXoa(${kh.idcustomer})"><i class="fas fa-trash-alt"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<nav aria-label="Page navigation example" class="float-right">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<script >
	function btnXoa(CustomerID) {
		var t = window.confirm("Bạn có chắc chắn xóa không ?\nKhi xóa sẽ xóa mọi thí sinh thuộc lớp học");
		if (t == true)
			window.location.href = "${pageContext.request.contextPath}/QuanLyKhachHang/XoaKhachHang?CustomerID="+CustomerID;

	}
	</script>
	</main>
	
</body>
</html>