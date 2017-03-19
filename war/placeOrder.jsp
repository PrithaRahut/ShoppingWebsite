<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shopping.Clothing" %> 
<%@ page import="com.shopping.Database" %>
<%
	String size=request.getParameter("size");
	String code=request.getParameter("code");
	int qty=Integer.parseInt(request.getParameter("qty"));
	Clothing cloth=Database.fetchProductbyCode(code);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Place order</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Proza+Libre:500,700" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Muli|Lobster|Arvo|Droid+Serif:700" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<div class="page-header">
		<h4 class='elegantshadow'>Elegant Shop</h4>
	</div>
	
	
	<div class="row container well" style="margin-left: 10px; width: 730px;">
			<div class="col-sm-4 text-center" style="border: 1px solid #e7e7e7; ">
				<img  class="product" src="<%=cloth.getImg() %>" style="width:100px; height:200px;">
			</div>
			<div class="col-sm-4">
				<p><%=cloth.getName() %></p>
				<p>Size:<%=size %></p>
				<p>Quantity:<%=qty %></p>
				<p>Total:<%=cloth.getPrice() %></p>
			</div>
	</div>
	<div class="row container" style="padding-left: 10px; padding-bottom: 20px;">
		<div class="col-sm-8">
			<form role="form" action="OrderServlet" method="post">
				<h3>Contact Details</h3>
				<div class="form-group">
					<label for="address">Address</label>
					<input type="text" class="form-control" id="address" name="address" required>
				</div>
				<div class="form-group">
					<label for="city">City</label>
					<input type="text" class="form-control" id="city" name="city" required>
				</div>
				<div class="form-group">
					<label for="state">State</label>
					<input type="text" class="form-control" id="state" name="state" required>
				</div>
				<div class="form-group">
					<label for="pin">Pin Code</label>
					<input type="text" class="form-control" id="pin" name="pin" required>
				</div> 
				<input type="hidden" name="code" value="<%=cloth.getCode() %>">
				<input type="hidden" name="size" value="<%=size %>">
				<input type="hidden" name="qty" value="<%=qty %>">
				<button type="submit" class="btn btn-success btn-block" style="border-radius: 0px;">Place Order</button>
			</form>
		</div>
	</div>

</body>
</html>