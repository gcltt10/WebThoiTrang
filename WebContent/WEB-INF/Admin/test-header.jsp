<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet">
</head>
<body>
	<header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Trang quản lý</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
           <li class="nav-item active">
              <a class="nav-link" href="#"><i class="fa fa-home"></i>Home<span class="sr-only">(current)</span></a>
            </li>
            <!-- Dropdown -->
			<li class="nav-item dropdown">
			      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
			        <i class="fa fa-user"></i>
			      </a>
			      <div class="dropdown-menu">
			      	<a class="dropdown-item" href="#">Profile</a>
			        <a class="dropdown-item" href="#" >Logout</a>
			      </div>
			</li>
          </ul>
        </div>
      </nav>
    </header>
</body>
</html>