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

import com.dao.CartDao;
import com.dao.ItemDao;
import com.dto.Cart;
import com.dto.Item;


@WebServlet("/MyCartServlet")
public class MyCartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
	    String custId = (String) session.getAttribute("custId");
	    System.out.println("hello" + custId);
	    int Id = Integer.parseUnsignedInt(custId);
		out.print("<html>");
		int Id1 = Integer.parseUnsignedInt(custId);
		CartDao cartdao = new CartDao();
		ItemDao itemdao = new ItemDao();
		List<Cart> cartlist = cartdao.getAllItemsByCustId(Id1);
		List<Item> itemList = new ArrayList();
		System.out.println(cartlist.size() + "    " + itemList.isEmpty());
		if(cartlist.size() > 0){
		int i;
		for(Cart cart:cartlist){
			i = cart.getItemId1();
			System.out.println(i);
			itemList.add(itemdao.getItem(i));
		}
		session.setAttribute("itemList",itemList);
		RequestDispatcher rd = request.getRequestDispatcher(
				"MyCart.jsp");
		rd.include(request, response);	
	}else{
		RequestDispatcher rd = request.getRequestDispatcher(
				"EmptyCart.jsp");
		rd.include(request, response);	
	}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
