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
					<p>Tên đề thi:</p>
					<p>Thời lượng</p>
					<p>Số câu hỏi:</p>
					<p>Thời gian bắt đầu:</p>
					<p>Thời gian kết thúc:</p>
					<p>Số SV đã thi:</p>
					</div>
				</div>
			</div>
		    <div class="col-md-9">
		    	<h2>Danh sách sinh viên đã thi</h2>
		    	<hr>
		    	<div class="form-group col-md-3">
				      <label for="inputEmail4">Lớp học</label>
				      <select class="form-control" id="exampleFormControlSelect1">
					      <option>Toán 1</option>
					      <option>Toán 2</option>
					      <option>Anh Văn 1</option>
					      <option>Anh Văn 2</option>
					      <option>Anh Văn 3</option>
					  </select>
				</div>
		    	<table class="table table-striped">
				  <thead class="thead-light">
				    <tr>
				      <th scope="col">STT</th>
				      <th scope="col">MSSV</th>
				      <th scope="col">Họ tên</th>
				      <th scope="col">Điểm</th>
				      <th scope="col">Thời gian kết thúc thi</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn A</td>
				      <td>8</td>
				      <td>21-10-2018 14:15</td>
				    </tr>
					<tr>
				      <th scope="row">2</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn B</td>
				      <td>6</td>
				      <td>21-10-2018 14:15</td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn C</td>
				      <td>9</td>
				      <td>21-10-2018 14:15</td>
				    </tr>
				  </tbody>
				</table><br>
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
				<a href="/ThiTracNghiem/view-test.jsp" role="button" class="btn btn-outline-secondary mt-2">&larr;Back</a>
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