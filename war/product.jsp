<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.shopping.Clothing" %>
<%@ page import="com.shopping.Database" %>
<%@ page import="com.shopping.User" %>
<%
	String code=request.getParameter("code");
	Clothing cloth=Database.fetchProductbyCode(code);
	User user=(User)request.getSession().getAttribute("user");
	boolean isUserLoggedIn;
	if(user!=null){
		 isUserLoggedIn=true;
	}else{
		isUserLoggedIn=false;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Product</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Proza+Libre:500,700" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=Muli|Lobster|Arvo|Droid+Serif:700" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="resources/css/style_prod.css">
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<%-- <%if(user!=null){ %>
		<div alert alert-success>
			Hello! <strong><%=user.getName() %></strong>
		</div>
	<%} %> --%>
	<div id="first">
	<%@ include file="header.jsp" %>
	<div class="row container-fluid" style="padding-left: 100px;">
		<div class="col-sm-6 text-center" style="border: 0.5px solid #F4ECEC; ">
			 <img  class="product" src="<%=cloth.getImg() %>" style="width:400px; height:500px;">
		</div>
		<div class="col-sm-6">
			<p><%=cloth.getName() %></p>
			<p>&#8377;<%=cloth.getPrice() %></p>
			<form method="post" id="orderForm" onsubmit="return checkLogin()" action="placeOrder.jsp">
				<p>Select Size:
					<select id="size" name="size">
						<option value="S">S</option>
						<option value="M">M</option>
						<option value="L">L</option>
						<option value="XL">XL</option>
					</select>
					<!-- <button type="submit" class="sbutton1" name="size">S</button>
					<button type="submit" class="sbutton1" name="size">M</button>
					<button type="submit" class="sbutton1" name="size">L</button> -->
				</p>
				<p>Quantity:
					<select id="qty" name="qty">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</select>
				</p>
				<p><%=cloth.getDescription() %></p>
				<p><input type="hidden" name="code" value="<%=cloth.getCode() %>"></p>
				<div class="row">
					<div class="col-sm-4">
						<button type="submit" class="button1">Add To Cart</button>
					</div>
					<div class="col-sm-4">
						<input type="submit" value="Buy Now" class="button2" id="buyNow">
					</div>
				</div>
			</form>
		
		</div>
	</div>
	</div>
	<script type="text/javascript">
		var isUserLoggedIn=<%=isUserLoggedIn %>;
	</script>
	<script type="text/javascript">
		function checkLogin(){
			console.log("Receached checkLogin function");
			console.log(isUserLoggedIn);
			if(isUserLoggedIn){
				var size=document.getElementById("size").value;
				var qty=document.getElementById("qty").value;
				
				document.getElementById("orderForm").submit();
				return true;
			}else{
				console.log("open modal");
				$(document).ready(function(){
				    
				        $("#loginModal").modal();
				    });
				return false;
			}  
			
		}
	</script>

</body>
</html>
