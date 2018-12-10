<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<div class="col-md-3 mh-dashbroad">
					<div class="list-group">
						<div class="list-group-item list-group-item-action active">Mã đề thi</div>
						<div class="list-group-item list-group-item-action">
							<p>Môn: Toán học</p>
							<p>Tên đề thi: Kiểm tra hình học lần 1 </p>
							<p>Thời lượng: 30:00</p>
							<p>Số câu hỏi: 10</p>
							<p>Thời gian bắt đầu: 20-10-2018 07:30</p>
							<p>Thời gian kết thúc: 20-10-2018 22:00</p>
							<h1 class="text-center" id="timer-main"></h1>
						</div>
					</div>
					<a role="button" href="/ThiTracNghiem" class="btn btn-primary btn-lg btn-block">Trở về</a>
				</div>
				<div class="col-md-9" style="overflow-y: scroll;height:580px;">
					<h2>Đề thi Toán 1</h2>
					<hr>
					
					<h3 class="text-justify text-center" >Bạn đã kết thúc bài thi </h3>
					<center><img src="images/congratulations1.png" alt="congratulation" width="550" height="200"></center><br>
					<table class="table table-striped">
					  <thead class="thead-light">
					    <tr>
					      <th scope="col">STT</th>
					      <th scope="col">Mã đề thi</th>
					      <th scope="col">Tên đề thi</th>
					      <th scope="col">Điểm/10</th>
					      <th scope="col">Thời gian nộp</th>
					      <th scope="col">Thời lượng</th>
					      <th scope="col">Xem đề thi</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>MATH_TEST01</td>
					      <td>Kiển tra Hình học lần 1</td>
					      <td>8</td>
					      <td>17:30</td>
					      <td>30 phút</td>
					      <td class="text-center"><a href="#"><i class="far fa-eye"></i></a></td>
					    </tr>
					  </tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
</body>

</html>