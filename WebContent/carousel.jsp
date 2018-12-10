<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="css/carousel.css" rel="stylesheet">
</head>
<body>
	<div id="myCarousel" class="carousel slide " data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide bg-opacity" src="images/math1.png" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Toán học</h1>
                <p></p>
                <p><a class="btn btn-lg btn-primary" href="/ThiTracNghiem/signin.jsp" role="button">Sign in today</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide bg-opacity" src="images/english3.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Anh văn</h1>
                <p></p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide bg-opacity" src="images/cntt5.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>Tin học</h1>
                <p></p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
</body>
</html>