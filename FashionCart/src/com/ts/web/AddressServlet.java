package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDao;
import com.dto.Customer;


@WebServlet("/AddressServlet")
public class AddressServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
	    String custId = (String) session.getAttribute("custId");
	    System.out.println("hello" + custId);
	    int id = Integer.parseUnsignedInt(custId);
		out.print("<html>");
		Customer customer;
		CustomerDao cust = new CustomerDao();
		customer = cust.getCustomer(id);
		System.out.println(customer.getPhoneNum());
		String city = request.getParameter("city");
		String street = request.getParameter("street");
		String doorNum = request.getParameter("DoorNo");
		String state = request.getParameter("state");
		//String fullName = request.getParameter("Full name");
		System.out.println(city);
		System.out.println(state);
		System.out.println(street);
		System.out.println(doorNum);
		customer.setCity(city);
		customer.setState(state);
		customer.setStreet(street);
		customer.setDoorNum(doorNum);
		int x = cust.editCustomer(customer);
		RequestDispatcher rd = request.getRequestDispatcher(
				"Transaction.jsp");
		rd.include(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
