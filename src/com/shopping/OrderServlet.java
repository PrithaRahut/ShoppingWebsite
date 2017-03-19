package com.shopping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OrderServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1933832370889322117L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		User user=(User)request.getSession().getAttribute("user");
		String code=request.getParameter("code");
		String size=request.getParameter("size");
		int qty=Integer.parseInt(request.getParameter("qty"));
		Clothing cloth=Database.fetchProductbyCode(code);
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		String msg=null;
		if(user!=null && address!=null && state!=null && pin!=null && city!=null){
			Order order=new Order();
			order.setUserName(user.getName());
			order.setUserEmail(user.getEmail());
			order.setClothCode(code);
			order.setClothPrice(cloth.getPrice());
			order.setCity(city);
			order.setAddress(address);
			order.setState(state);
			order.setPin(pin);
		
			order.setSize(size);
			order.setQty(qty);
			
			int quant=cloth.getQty()-qty;
			if(quant<0){
				msg="Product out of stock";
			}else{
				msg="Order placed successfully!";
				cloth.setQty(quant);
				Database.saveOrder(order);
				Database.saveClothProduct(cloth);
			}
			request.setAttribute("msg", msg);
			RequestDispatcher dispatch=request.getRequestDispatcher("orderConfirm.jsp");
			dispatch.forward(request,response);
		}
	}
	
}
