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
		    	<a class="btn btn-primary float-right" href="/ThiTracNghiem/add-test.jsp" role="button">Tạo đề thi</a>
		    	<h2>Danh sách đề thi</h2>
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
				      <th scope="col">Mã đề thi</th>
				      <th scope="col">Tên đề thi</th>
				      <th scope="col">Thời lượng</th>
				      <th scope="col">Thời gian bắt đầu</th>
				      <th scope="col">Thời gian kết thúc</th>
				      <th scope="col">Xem</th>
				      <th scope="col">Thi</th>
				      <th scope="col">Sửa</th>
				      <th scope="col">Xóa</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>MATH_TEST01</td>
				      <td>Kiển tra Hình học lần 1</td>
				      <td>30 phút</td>
				      <td>20-10-2018 14:15</td>
				      <td>22-10-2018 14:15</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/test-student.jsp"><i class="fas fa-users"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-test.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
					<tr>
				      <th scope="row">2</th>
				      <td>MATH_TEST02</td>
				      <td>Kiển tra Hình học lần 2</td>
				      <td>20 phút</td>
				      <td>20-10-2018 14:15</td>
				      <td>22-10-2018 14:15</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/test-student.jsp"><i class="fas fa-users"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-test.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>MATH_TEST03</td>
				      <td>Kiển tra Hình học lần 3</td>
				      <td>20 phút</td>
				      <td>20-10-2018 14:15</td>
				      <td>22-10-2018 14:15</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/test-student.jsp"><i class="fas fa-users"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-test.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
				    <tr>
				      <th scope="row">4</th>
				      <td>MATH_TEST04</td>
				      <td>Kiển tra Đại số lần 1</td>
				      <td>20 phút</td>
				      <td>20-10-2018 14:15</td>
				      <td>22-10-2018 14:15</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/test-student.jsp"><i class="fas fa-users"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-test.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
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
			        Bạn có chắc chắn muốn xóa đề thi?
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