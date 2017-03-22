<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Shop Online for Men</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
</html>
	<%@include file="header.jsp" %>
	<div class="container text-center" id="block">
		
		<div class="row">
			<div class="col-sm-4">
				<a href="shirts.jsp?category=Shirt"><img src="../resources/images/shirt.jpg" class="img-responsive" style="width:100%; height:240px;" alt="Image" ></a>
				<p><a href="shirts.jsp?category=Shirt">Shirts</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/tshirt.jpeg" class="img-responsive" style="width:100%" alt="Image">
				<p><a href="#">T-Shirts</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/jeans.jpg" class="img-responsive" style="width:100%" alt="Image">
				<p><a href="#">Denims</a></p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-4">
				<img src="../resources/images/casualshirt.jpg" class="img-responsive" style="width:100%" alt="Image">
				<p><a href="#">Casual Shirts</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/shorts.jpg" class="img-responsive" style="width:100%; height:240px" alt="Image">
				<p><a href="#">Shorts</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/jacket.jpeg" class="img-responsive" style="width:100%" alt="Image">
				<p><a href="#">Jackets</a></p>
			</div>
		</div>
	</div>