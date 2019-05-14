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
import javax.websocket.Session;

import com.dao.CartDao;
import com.dao.CustomerDao;
import com.dao.ItemDao;
import com.dto.Cart;
import com.dto.Customer;
import com.dto.Item;



@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
	    String custId = (String) session.getAttribute("custId");
	    System.out.println("hello" + custId);
	    int Id = Integer.parseUnsignedInt(custId);
	    int quantity = Integer.parseInt(request.getParameter("quantity"));
	    System.out.println(quantity);
		out.print("<html>");
		System.out.println("Hi CartSrevlet");
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		//System.out.println(itemId);
		//Item item = new Item();
		//item.setItemId(itemId);
		// session.setAttribute("item", item);
		Customer customer = CustomerDao.getCustomer(Id);
		Cart cart =new Cart();
		cart.setCustomer(customer);
		cart.setItemId1(itemId);
		cart.setQuantity(quantity);
		CartDao cartdao = new CartDao();
	    int x = cartdao.addItem(cart);
	    System.out.println(x);
	    ItemDao itemdao = new ItemDao();
	    Item item = itemdao.getItem(itemId);
		request.setAttribute("item",item);
		RequestDispatcher rd = request.getRequestDispatcher(
				"ItemDisplay.jsp");
		rd.include(request, response);	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
