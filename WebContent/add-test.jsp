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
		    	<h2>Tạo đề thi</h2>
		    	<hr>
		    	<form>
				  <div class="form-row">
				  	<div class="form-group col-md-4">
				      <label for="inputEmail4">Lớp học</label>
				      <select class="form-control" id="exampleFormControlSelect1">
					      <option>Toán 1</option>
					      <option>Toán 2</option>
					      <option>Anh Văn 1</option>
					      <option>Anh Văn 2</option>
					      <option>Anh Văn 3</option>
					  </select>
				    </div>
				    <div class="form-group col-md-4">
				      <label for="inputPassword4">Phần học</label>
				      <select class="form-control" id="exampleFormControlSelect1">
					      <option>Đại số</option>
					      <option>Giải tích</option>
					      <option>Xác xuất</option>
					      <option>Thống kê</option>
					   </select>
				    </div>
				    <div class="form-group col-md-4">
				      <label for="inputPassword4">Thêm phần học</label>
				     <button type="button" class="btn btn-primary btn-block">Thêm</button>
				    </div>
				  </div>
				  <table class="table table-striped">
				  <thead class="thead-light">
				    <tr>
				      <th scope="col">STT</th>
				      <th scope="col">Tên Phần</th>
				      <th scope="col">Số câu</th>
				      <th scope="col">Xóa</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>Đại số</td>
				      <td><input type="number" name="numQuestion" step="1"  min="1" max="500" value="1"></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-trash-alt"></i></a></td>
				    </tr>
				  </tbody>
				  </table>
				  <form>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Tên đề thi:</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="inputEmail3">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Thời lượng thi (phút):</label>
					    <div class="col-sm-10">
					      <input type="number" class="form-control" id="inputEmail3" min="10" value="10">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Thời gian bắt đầu:</label>
					    <div class="col-sm-10">
					      <input type="date" name="bday" max="3000-12-31" min="1000-01-01" class="form-control">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="inputEmail3" class="col-sm-2 col-form-label">Thời gian kết thúc:</label>
					    <div class="col-sm-10">
					      <input type="date" name="bday" max="3000-12-31" min="1000-01-01" class="form-control">
					    </div>
					  </div>
					  <button type="submit" class="btn btn-primary btn-block">Tạo đề thi</button>
					  <a class="btn btn-secondary btn-block" href="/ThiTracNghiem/list-test.jsp" role="button">Thoát</a>
				</form>
		    </div>
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
			        Bạn có chắc chắn muốn xóa phần câu hỏi?
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