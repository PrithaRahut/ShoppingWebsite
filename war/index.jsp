<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>

	<h4 class='elegantshadow'>Elegant Shop</h4>
	<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" >
		<div class="container-fluid">
		
		<ul class="nav navbar-nav">
			<li ><a href="#">HOME</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">MEN<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Clothing</a></li>
					<li><a href="#">Shoes</a></li>
					<li><a href="#">Accessories</a></li>
					
				</ul>
			</li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">WOMEN<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Clothing</a></li>
					<li><a href="#">Shoes</a></li>
					<li><a href="#">Accessories</a></li>
					<li><a href="">Bags</a></li>
				</ul>
			</li>
			<li><a href="#">NEW</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#search" data-toggle="collapse"><span class="glyphicon glyphicon-search"></span></a></li>
				
			<li><a href="#loginModal" data-toggle="modal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="#signupModal" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> cart</a></li>
		</ul>
		
		</div>
	</nav>
	<div id=search class="collapse">
		<form role="form">
			<div class="form-group col-sm-4" style="left: 440px; padding-bottom: 10px; ">
				<input type="text" class="form-control" placeholder="Search" style="border-radius: 0px">
			</div>
		</form>
	</div>
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="text-center"><h3 class="modal-title">Login</h3></div>
				</div>
				<div class="modal-body">
					<form role="form">
						<div class="form-group">
							<label for="mail">Email </label>
							<input type="email" class="form-control" id="mail" style="border-radius: 0px;" name="mail">
						</div>
						<div class="form-group">
							<label for="pwd">Password </label>
							<input type="password" class="form-control" id="pwd" style="border-radius: 0px;" name="pwd">
						</div>
						<button type="submit" class="btn btn-success btn-block" style="border-radius: 0px;">Sign in</button>
					</form>
				</div>
				
			</div>
			
		</div>
		
	</div>
	<div id="signupModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="text-center"><h3 class="modal-title">Sign Up</h3></div>
				</div>
				<div class="modal-body">
					<form role="form">
						<div class="form-group">
							<label for="name"> Name </label>
							<input type="text" class="form-control" id="name" style="border-radius: 0px;" name="name" required>
						</div>
						
						<div class="form-group">
							<label for="email">Email </label>
							<input type="email" class="form-control" id="email" style="border-radius: 0px;" name="email" required>
						</div>
						<div class="form-group">
							<label for="pwd">Password </label>
							<input type="password" class="form-control" id="pwd" style="border-radius: 0px;" name="pwd" required>
						</div>
						<div class="form-group">
							<label for="pwd">Confirm Password </label>
							<input type="confirm" class="form-control" id="confirm" style="border-radius: 0px;" name="confirm" required>
						</div>
						<div class="form-group">
							<label for="pwd">Contact Number </label>
							<input type="number" class="form-control" id="cnum" style="border-radius: 0px;" name="cnum">
						</div>
						<button type="submit" class="btn btn-success btn-block" style="border-radius: 0px;">Sign up</button>
					</form>
				</div>
				
			</div>
			
		</div>
		
	</div>
	<div class="container-fluid">
	<div class="row">
		<div class="col-sm-8">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="myCarousel" data-slide-to="1"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="http://placehold.it/1200x400?text=IMAGE" alt="Image">
					</div>
					<div class="item">
						<img src="http://placehold.it/1200x400?text=IMAGE" alt="Image">
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
		<div class="col-sm-4" style="top: 60px;">
			<div class="well">
				<p>Some text..</p>
			</div>
			<div class="well" style="top: 60px;">
				<p>some other text..</p>
			</div>
			
		</div>
	</div>
	</div>
	<div class="container text-center" id="block">
		<h3>Latest trends</h3>
		<div class="row">
			<div class="col-sm-4">
				<img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
			</div>
		</div>
		<h3>Shop By Brands</h3>
		<div class="row">
			<div class="col-sm-4">
				<img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
			</div>
		</div>
	</div>
	<div>
		
	</div>		
	

</body>
</html>