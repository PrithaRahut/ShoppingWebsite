package com.shopping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupUser extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		String uname= request.getParameter("name");
		String email= request.getParameter("email");
		String pwd= request.getParameter("pwd");
		String confirmPass= request.getParameter("confirm");
		String contact= request.getParameter("cnum");
		
		if(pwd.equals(confirmPass)){
			User user=new User();
			user.setName(uname);
			user.setEmail(email);
			user.setPassword(pwd);
			user.setNumber(contact);
		}
		
	}

}
