package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CartDao;
import com.dao.OrderDao;
import com.dao.OrderItemDao;
import com.dto.Cart;
import com.dto.Item;
import com.dto.Orders;
import com.dto.OrderItem;


@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
	    String custId = (String) session.getAttribute("custId");
	    System.out.println("hello hari");
	    System.out.println("hello" + custId);
	    int Id = Integer.parseUnsignedInt(custId);
	    DateFormat df = new SimpleDateFormat("dd/MM/yy");
	    Calendar calobj = Calendar.getInstance();
	    System.out.println("Date:"+df.format(calobj.getTime()));
	    if(Id > 0){
		out.print("<html>");
		System.out.println("Hi OrderItemservlet");
		CartDao cartdao = new CartDao();
		List<Cart> items = cartdao.getAllItemsByCustId(Id);
		System.out.println(items);
		Orders order = new Orders(Id, df.format(calobj.getTime()));
		int y = OrderDao.addOrder(order);
		System.out.println("adding order:" + y);
		System.out.println(Id);
		
		int id = order.getOrderId();
		for(Cart item:items){
			int i = item.getItemId1();
		    OrderItem orderItem = new OrderItem(id, i, item.getQuantity());
		    int z = OrderItemDao.add(orderItem);
		    System.out.println(orderItem + " " + i);
		}
		
		int x = CartDao.DeleteCartItemsByCustId(Id);
		System.out.println("Delete:" +x);
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"Address.jsp");
		rd.include(request, response);
	    }else{
	    	RequestDispatcher rd = request.getRequestDispatcher(
					"UserLogin.html");
			rd.include(request, response);
	    	
	    }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
