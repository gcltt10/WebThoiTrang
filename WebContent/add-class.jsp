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
		    <jsp:include page="test-dashboard.jsp"></jsp:include>
		    <div class="col-sm-9">
		    	<h2>Tạo lớp</h2>
		    	<hr>
		    	<form>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">Tên lớp học</label>
				      <input type="text" class="form-control">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Mã lớp học</label>
				      <input type="text" class="form-control">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">Tên giáo viên</label>
				      <input type="text" class="form-control">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Số lượng sinh viên</label>
				      <input type="number" min="10" max="1000" class="form-control">
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">Thời gian bắt đầu</label>
				      <input type="date" name="bday" max="3000-12-31" min="1000-01-01" class="form-control">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Thời gian kết thúc</label>
				      <input type="date" name="bday" max="3000-12-31" min="1000-01-01" class="form-control">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress">Mô tả lớp học</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
				  </div>
				  <button type="submit" class="btn btn-primary btn-lg btn-block">Tạo lớp học</button>
				  <a class="btn btn-secondary btn-block" href="/ThiTracNghiem/list-class.jsp" role="button">Thoát</a>
				</form>
		    </div>
		  </div>
	</div>
    </main>
</body>
</html>