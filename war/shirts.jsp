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
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<%@ include file="header.jsp" %>
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
       
        <%}  else {%> 
        	<div class="row">
        	 <%  for (Clothing cloth : list) {
        %>
        
          
            <div class="col-sm-4" >
                <a href="product.jsp?code=<%=cloth.getCode() %>"><img src="<%=cloth.getImg() %>" class="img-responsive" style="width:100%" alt="Image"></a>
                <p><%=cloth.getName() %></p>
                <p> &#8377;<%=cloth.getPrice() %></p>
            </div>
            
          
          <%} %>
          </div>
         <%} %>
        
          
        </div>
      </div>
  </div>
</body>
</html>