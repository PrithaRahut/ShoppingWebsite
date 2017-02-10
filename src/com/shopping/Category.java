package com.shopping;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Category extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6068428851419797777L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		String category=request.getParameter("category");
		List<Clothing> list= Database.fetchProductbyCategory(category);
		
		request.setAttribute("list", list);
		RequestDispatcher dispatch=request.getRequestDispatcher("shirts.jsp");
		dispatch.forward(request, response);
		
	}

}
