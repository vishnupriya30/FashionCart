package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ItemDao;
import com.dto.Item;


@WebServlet("/ItemServlet")
public class ItemServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		ItemDao itemdao = new ItemDao();
		Item item = itemdao.getItem(itemId);
		request.setAttribute("item",item);
		RequestDispatcher rd = request.getRequestDispatcher(
				"ItemDisplay.jsp");
		rd.include(request, response);	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
