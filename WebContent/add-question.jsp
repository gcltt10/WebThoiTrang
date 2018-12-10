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
		    	<h2>Tạo câu hỏi</h2>
		    	<hr>
		    	<form>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">Môn học</label>
				      <select class="form-control" id="exampleFormControlSelect1">
					      <option>Toán học</option>
					      <option>Tin học</option>
					      <option>Anh Văn</option>
					  </select>
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Phần học</label>
				      <select class="form-control" id="exampleFormControlSelect1">
					      <option>Đại số</option>
					      <option>Giải tích</option>
					      <option>Xác xuất</option>
					      <option>Thống kê</option>
					   </select>
				    </div>
				  </div>
				  <form>
					  <div class="form-group">
					    <label for="exampleFormControlFile1">Chọn hình ảnh đính kèm</label>
					    <input type="file" class="form-control-file" id="exampleFormControlFile1">
					  </div>
					</form>
				  <div class="form-group">
				    <label for="inputAddress">Nội dung câu hỏi</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress2">Câu trả lời đúng</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress2">Câu trả lời sai 1</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress2">Câu trả lời sai 2</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
				  </div>
				 <div class="form-group">
				    <label for="inputAddress2">Câu trả lời sai 3</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
				  </div>
				  <button type="submit" class="btn btn-primary btn-lg btn-block">Tạo câu hỏi</button>
				  <a class="btn btn-secondary btn-block" href="/ThiTracNghiem/list-question.jsp" role="button">Thoát</a>
				</form>
		    </div>
		  </div>
	</div>
    </main>
</body>
</html>