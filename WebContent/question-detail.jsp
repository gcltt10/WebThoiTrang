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
				<div class="float-right">
					<a href="/ThiTracNghiem/edit-question.jsp"><i class="fa fa-edit  mr-3"></i></a>
				    <a href="#"><i class="fa fa-trash-alt"></i></a>
				</div>
				<br>
				<a href="/ThiTracNghiem/view-question.jsp" role="button" class="btn btn-outline-secondary mt-2">&larr;Back</a>
		    </div>
		  </div>
		</div>

    </main>
</body>
</html>