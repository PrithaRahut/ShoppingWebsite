<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String msg=(String)request.getAttribute("msg");
%>
<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
  	<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Sansita:900" rel="stylesheet">
</head>
<body>
	<%if(msg!=null){ %>
		<div class="alert alert-success">
			<button class="close" data-dismiss="alert">&times;</button>
			<strong><%=msg %></strong>
		</div>
	<%} %>
	<%@ include file="header.jsp" %>
	<div class="container-fluid">
	<div class="row">
		<div class="col-sm-8">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="myCarousel" data-slide-to="1"></li>
					<li data-target="myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="../resources/images/men1.jpg" alt="men1">
					</div>
					<div class="item">
						<img src="../resources/images/beach.jpg" alt="beach">
					</div>
					<div class="item">
						<img src="../resources/images/index.jpeg" alt="umbrella">
					</div>
				</div>
				<a href="#myCarousel" class="left carousel-control" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a href="#myCarousel" class="right carousel-control" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
		
			</div>
		</div>
		<div class="col-sm-4 text-center" style="font-family: 'Sansita', sans-serif; font-size:70px; text-shadow:1px 1px #F4ECEC;">
			<a>New<br> Summer<br> Collection</a>
			<!-- <img alt="bag2" src="../resources/images/bag4.jpg" style="width:100%;"> -->
			
			
		</div>
	</div>
	</div>
	<div class="container text-center" id="block">
		<h3>Latest trends</h3 style="font-family: 'Bree Serif', serif;">
		<div class="row">
			<div class="col-sm-4">
				<img src="../resources/images/summer2.jpg" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/summer3.jpg" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/summer4.jpg" class="img-responsive" style="width:100%" alt="Image">
			</div>
		</div>
		<h3>Shop By Brands</h3 style="font-family: 'Bree Serif', serif;">
		<div class="row">
			<div class="col-sm-4">
				<img src="../resources/images/vero-moda1.jpg" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/onlynew.jpg" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/biba1.jpg" class="img-responsive" style="width:100%" alt="Image">
			</div>
		</div>
	</div>
	<div>
		
	</div>		
	

</body>
</html>