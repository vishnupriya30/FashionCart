package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ItemDao;
import com.dao.OrderDao;
import com.dao.OrderItemDao;
import com.dto.Item;
import com.dto.OrderItem;
import com.dto.Orders;


@WebServlet("/MyOrdersServlet")
public class MyOrdersServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
	    String custId = (String) session.getAttribute("custId");
	    System.out.println("hello" + custId);
	    int Id = Integer.parseUnsignedInt(custId);
		out.print("<html>");
		List<Orders> orders = OrderDao.getAllOrderItemsByCustId(Id);
		List<Item> items = new ArrayList<Item>();
		request.setAttribute("orders", orders);
		System.out.println(orders);
		RequestDispatcher rd = request.getRequestDispatcher(
				"Order.jsp");
		rd.include(request, response);
		}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
