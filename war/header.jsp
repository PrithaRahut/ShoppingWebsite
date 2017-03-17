	<h4 class='elegantshadow'>Elegant Shop</h4>
	<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" >
		<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">HOME</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav">
			<!-- <li ><a href="#">HOME</a></li> -->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">MEN<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="men-clothing.jsp">Clothing</a></li>
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
		</div>
	</nav>
	<!-- <div id=search class="collapse">
		<form role="form">
			<div class="form-group col-sm-4" style="left: 440px; padding-bottom: 10px; ">
				<input type="text" class="form-control" placeholder="Search" style="border-radius: 0px">
			</div>
		</form>
	</div> -->
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="text-center"><h3 class="modal-title">Login</h3></div>
				</div>
				<div class="modal-body">
					<form role="form" action="LoginUser" method="post">
						<div class="form-group">
							<label for="mail">Email </label>
							<input type="email" class="form-control" id="email" style="border-radius: 0px;" name="email">
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
					<form role="form" action="SignupUser" method="post">
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
							<input type="password" class="form-control" id="confirm" style="border-radius: 0px;" name="confirm" required>
						</div>
						<div class="form-group">
							<label for="pwd">Contact Number </label>
							<input type="text" class="form-control" id="cnum" style="border-radius: 0px;" name="cnum">
						</div>
						<button type="submit" class="btn btn-success btn-block" style="border-radius: 0px;">Sign up</button>
					</form>
				</div>
				
			</div>
			
		</div>
		
	</div>