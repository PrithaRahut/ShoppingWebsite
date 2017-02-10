<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shopping.Clothing" %>
<%@ page import="com.shopping.Database" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String code=request.getParameter("code");
	String name=request.getParameter("pname");
	String category=request.getParameter("category");
	String gender=request.getParameter("gender");
	String size=request.getParameter("size");
	String desc=request.getParameter("desc");
	String price=request.getParameter("price");
	String img=request.getParameter("img");
	String msg=null;
	if(code!=null && name!=null && category!=null && gender!=null && price!=null){
		Clothing cloth=new Clothing();
		cloth.setCode(code);
		cloth.setName(name);
		cloth.setCategory(category);
		cloth.setGender(gender);
		cloth.setSize(size);
		cloth.setDescription(desc);
		cloth.setPrice(price);
		cloth.setImg(img);
		
		Database.saveClothProduct(cloth);
	}
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
</head>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>

<body>
	<h3>Save Products</h3>
	<form action="admin.jsp">
		<label for="code">Product Code</label>
		<input type="text" id="code" name="code">
		
		<label for="pname">Product Name</label>
		<input type="text" id="pname" name="pname">
		
		<label for="category">Product Category</label>
		<input type="text" id="category" name="category">
		
		<label for="gender">Product gender</label>
		<input type="text" id="category" name="gender">
		
		<label for="size">Product size</label>
		<input type="text" id="size" name="size">
		
		<label for="desc">Product Description</label>
		<input type="text" id="desc" name="desc">
		
		<label for="price">Product price</label>
		<input type="text" id="price" name="price">
		
		<label for="img">Product Image</label>
		<input type="text" id="img" name="img">
		
		<input type="submit" value="Submit">
		
	</form>

</body>
</html>