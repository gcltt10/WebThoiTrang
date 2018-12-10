<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<jsp:include page="header.jsp"></jsp:include>
	<link href="./css/admin.css" rel="stylesheet">
	<script type="text/javascript" src="./js/countdown.js"></script>
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
							<p>Thời gian còn lại: <b id="timer">20:35</b></p>
							<p>Số câu hỏi: 10</p>
							<p>Thời gian bắt đầu: 20-10-2018 07:30</p>
							<p>Thời gian kết thúc: 20-10-2018 22:00</p>
							<h1 class="text-center" id="timer-main"></h1>
						</div>
					</div>
					<button type="button" class="btn btn-primary btn-lg btn-block">Nộp bài</button>
				</div>
				<div class="col-md-9" style="overflow-y: scroll;height:580px;">
					<h2>Đề thi Toán 1</h2>
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
							<input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng
							nhất.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị
							tự ta được phép đồng dạng.
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
							<input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng
							nhất.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị
							tự ta được phép đồng dạng.
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
							<input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng
							nhất.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị
							tự ta được phép đồng dạng.
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
							<input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng
							nhất.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label">
							<input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị
							tự ta được phép đồng dạng.
						</label>
					</div>
					<b>Câu trả lời đúng:&nbsp</b>Có một phép đối xứng trục là phép đồng nhất.
					<hr>
					<!-- End List question -->


					<br>
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
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
			 aria-hidden="true">
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
	<!-- countdown timer demo  -->
	<!--    
    <script>
	// Set the date we're counting down to
	var countDownDate = new Date("Jan 5, 2019 15:37:25").getTime();
	//countDownDate.setMinutes(countDownDate.getMinutes() + 15);
	
	// Update the count down every 1 second
	var x = setInterval(function() {
	
	    // Get todays date and time
	    var now = new Date().getTime();
	    
	    // Find the distance between now and the count down date
	    var distance = countDownDate - now;
	    
	    // Time calculations for days, hours, minutes and seconds
	    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	    
	    // Output the result in an element with id="demo"
	    document.getElementById("timer").innerHTML = hours + ":"
	    + minutes + ":" + seconds;
	    
	    // If the count down is over, write some text 
	    if (distance < 0) {
	        clearInterval(x);
	        document.getElementById("timer").innerHTML = "TIME LIMITED";
	    }
	}, 1000);
	</script>
-->
</body>

</html>