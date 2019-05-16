package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ItemDao;
import com.dao.SubDao;
import com.dto.Item;
import com.dto.SubCategory;


@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		//int SubId =1
	    int SubId = Integer.parseInt(request.getParameter("subId"));
	    //System.out.println(SubId);
		System.out.println("hello servlet");
		List<Item> itemsList =(List)ItemDao.getAllItems(SubId);
		Item temp;
		for(int i = 0;i < itemsList.size();i++){
			for(int j =0;j < itemsList.size() - i - 1;j++){
				if(itemsList.get(i).getPrice() > itemsList.get(j).getPrice()){
					temp = itemsList.get(j);
					itemsList.set(j, itemsList.get(j +1));
					itemsList.set(j + 1, temp);
				}
			}
		}
		System.out.println("hello"+itemsList);
		request.setAttribute("itemsList",itemsList);
		RequestDispatcher rd = request.getRequestDispatcher(
				"SelectItem.jsp");
		rd.include(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
