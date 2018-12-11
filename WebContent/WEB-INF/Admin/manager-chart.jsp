<%@page import="model.Value"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/css/admin.css"
	rel="stylesheet">
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script >
	// Load the Visualization API and the piechart package.
	google.load('visualization', '1', {
		'packages' : [ 'columnchart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.    
		var data = google.visualization.arrayToDataTable([
				[ 'Country', 'Area(square km)' ], 
				<% 
					ArrayList<Value> ls =(ArrayList<Value>)request.getAttribute("dsDoanhThu");
					if(ls !=null){
						for(Value v : ls){
				%>
					['<%=v.getName()%>',<%=v.getValue()%>],
				<%
				}
						}
				%>
				]);
		// Set chart options
		var options = {
			'title' : 'Biểu đồ doanh thu của từng dòng sản phẩm',
			is3D : true,
			pieSliceText : 'label',
			tooltip : {
				showColorCode : true
			},
			'width' : 700,
			'height' : 300
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.PieChart(document
				.getElementById('Chart'));
		chart.draw(data, options);
	}
</script>
</head>
<body>
	<jsp:include page="test-header.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid mt-dashbroad">
		<div class="row">
			<jsp:include page="test-dashboard.jsp"></jsp:include>
			<div class="col-md-9">
				<div class="row">
					<div class="col">
						<p style="text-align: center; font-size: 25px">
							<strong>Danh sách khách hàng</strong>
						</p>
					</div>
				</div>
				<hr>
				<form action="${pageContext.request.contextPath}/ThongKe" method="post">
					<div class="row">
						<div class="col">
							Từ : <input type="date"
								name="txtDate1" max="3000-12-31" min="1000-01-01"
								class="form-control" value="${date1}" >
						</div>
						<div class="col">
							Đến: <input type="date"
								name="txtDate2" max="3000-12-31" min="1000-01-01"
								class="form-control" value="${date2}">
						</div>
						<div class="col col-lg-2">
							<button type="submit">Thống kê</button>
						</div>
					</div>
				</form>
				<br>
				<div class = "row">
					<div class="col">
					<input type="text" class="form-control" value="Tổng doanh thu : ${TongDoanhThu}" disabled/>
					</div>
				</div>
				<div class="row">
				<div id="Chart">
					</div>
				</div>
				<br>
			</div>
		</div>
	</div>
	</main>
</body>
</html>