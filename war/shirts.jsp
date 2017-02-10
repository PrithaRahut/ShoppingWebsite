<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.shopping.Clothing" %>
<%@ page import="com.shopping.Database" %>
<%
	String category=request.getParameter("category");
	List<Clothing> list= Database.fetchProductbyCategory(category);
	/*for(Clothing cloth : list){
		System.out.println(cloth.getName());
	}
	List<Clothing> list=(List<Clothing>)request.getAttribute("list");*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>font</title>
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
  <div class="container-fluid">
      <div class="row content">
        <div class="col-sm-3 well">
          <h5>Categories</h5>
          <p><a href="#" class="text-center">Polos/tees</a></p>
          <p><a href="#" class="text-center">Casual Shirts</a></p>
          <p><a href="#" class="text-center">Formal Shirts</a></p>
          <p><a href="#" class="text-center">Denims</a></p>
        </div>
        <div class="col-sm-9">
        <% if(list.isEmpty()) { %>
        	
        		<strong>Oops! No Match Found</strong>
       
        <%}  else { 
        	
        	for (Clothing cloth : list) {
        %>
        
          <div class="row">
            <div class="col-sm-4" >
                <img src="<%=cloth.getImg() %>" class="img-responsive" style="width:100%" alt="Image">
                <p><%=cloth.getName() %></p>
                <p><%=cloth.getPrice() %></p>
            </div>
            
          </div>
          <%} %>
         <%} %>
        
          
        </div>
      </div>
  </div>
</body>
</html>