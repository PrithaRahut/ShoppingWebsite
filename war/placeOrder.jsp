<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shopping.Clothing" %> 
<%
	/* String size=request.getParameter("size"); */
	/* int qty=Integer.parseInt(request.getParameter("number")); */ 
	Clothing cloth=(Clothing)request.getAttribute("cloth");
	String size=(String)request.getAttribute("size");
/* 	String str = (String)request.getAttribute("qty"); */
	/* typeof((String)request.getAttribute("qty"));
	int qty=Integer.parseInt();  */ 
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Place Order!</title>
</head>
<body>
	<%=cloth.getName() %><br>
	<img src="<%=cloth.getImg() %>" style="width:40px; height:50px;"><br> --%>
	<%if(size==null){ %>
		<div class="alert alert-warning">
  			size not found!
		</div>
	<%} %>
	<%-- <%if(qty==0){ %>
		<div class="alert alert-warning">
  			quantity not found!
		</div>
	<%} %> --%>
	
</body>
</html>