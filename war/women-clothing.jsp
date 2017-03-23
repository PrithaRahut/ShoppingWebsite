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
				<a href="clothProducts.jsp?category=kurti"><img src="../resources/images/kurti.jpg" class="img-responsive" style="width:100%; height:232px;" alt="Image" ></a>
				<p><a href="clothProducts.jsp?category=kurti">Kurtis</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/tops.jpeg" class="img-responsive" style="width:100%" alt="Image">
				<p><a href="clothProducts.jsp?category=tops">Tops</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/jeansw.jpg" class="img-responsive" style="width:100%" alt="Image">
				<p><a href="clothProducts.jsp?category=denim">Denims</a></p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-4">
				<img src="../resources/images/dress1.jpg" class="img-responsive" style="width:100%; height:300px" alt="Image">
				<p><a href="clothProducts.jsp?category=dress">Dresses</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/skirt.jpeg" class="img-responsive" style="width:100%; height:300px" alt="Image">
				<p><a href="clothProducts.jsp?category=skirt">Skirts</a></p>
			</div>
			<div class="col-sm-4">
				<img src="../resources/images/shrugs.jpg" class="img-responsive" style="width:100%; height:300px" alt="Image">
				<p><a href="clothProducts.jsp?category=jacket">Jackets</a></p>
			</div>
		</div>
	</div>