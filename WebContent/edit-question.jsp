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
		    <div class="col-md-9">
		    	<h2>Chi tiết câu hỏi</h2>
		    	<hr>
		    	<p><b>Câu hỏi: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
		    	<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="optradio"><b>A.</b> Phép vị tự là một phép dời hình.
				  </label>
				</div>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng nhất.
				  </label>
				</div>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
				  </label>
				</div>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị tự ta được phép đồng dạng.	
				  </label>
				</div>
				<b>Câu trả lời đúng:&nbsp</b>Có một phép đối xứng trục là phép đồng nhất.
				<hr><h4>Sửa câu hỏi</h4>
				<form>
					  <div class="form-group">
					    <label for="exampleFormControlFile1">Chọn hình ảnh đính kèm</label>
					    <input type="file" class="form-control-file" id="exampleFormControlFile1">
					  </div>
					</form>
				  <div class="form-group">
				    <label for="inputAddress">Nội dung câu hỏi</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3">Trong các mệnh đề sau đây, mệnh đề nào đúng?</textarea>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress2">Câu trả lời đúng</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2">Có một phép đối xứng trục là phép đồng nhất.</textarea>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress2">Câu trả lời sai 1</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2">Phép vị tự là một phép dời hình.</textarea>
				  </div>
				  <div class="form-group">
				    <label for="inputAddress2">Câu trả lời sai 2</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2">Phép đồng dạng là một phép dời hình.</textarea>
				  </div>
				 <div class="form-group">
				    <label for="inputAddress2">Câu trả lời sai 3</label>
				    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2">Thực hiện liên tiếp phép quay và phép vị tự ta được phép đồng dạng.</textarea>
				  </div>
				  <button type="submit" class="btn btn-primary btn-lg btn-block">Sửa câu hỏi</button>
				  <a href="/ThiTracNghiem/view-question.jsp" role="button" class="btn btn-secondary btn-lg btn-block">Thoát</a>
				</form>
		    </div>
		  </div>
	</div>
    </main>
</body>
</html>