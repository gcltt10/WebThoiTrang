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
		    	<h2>Chi tiết đề thi</h2>
		    	<hr>
		    	<!-- List question -->
		    	<p><b>Câu hỏi 1: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
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
				<hr>
				<p><b>Câu hỏi 2: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
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
				<hr>
				<p><b>Câu hỏi 3: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
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
				<hr>
				<p><b>Câu hỏi 4: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
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
				<hr>
				<!-- End List question -->
				<br>
				<a href="/ThiTracNghiem/view-test.jsp" role="button" class="btn btn-outline-secondary mt-2">&larr;Back</a>
		    	
				<nav aria-label="Page navigation example" class="float-right">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    </li>
				    <li class="page-item active"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    </li>
				  </ul>
				</nav>
		    </div>
		  </div>
		  <!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalCenterTitle">Delete</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        Bạn có chắc chắn muốn xóa câu hỏi?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
    </main>
</body>
</html>