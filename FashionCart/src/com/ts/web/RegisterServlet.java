package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.CustomerDao;
import com.dto.Customer;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("username");
		String FirstName = request.getParameter("firstname");
		String LastName = request.getParameter("lastname");
		String Gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String PhoneNum = request.getParameter("phoneno");
		Customer customer = new Customer(userName, password, FirstName, LastName, Gender, email, PhoneNum, " ", " ", " ", " "); 
		CustomerDao cust = new CustomerDao();
		int x = cust.register(customer);
		if(x > 0){
		RequestDispatcher rd = request.getRequestDispatcher("Login.html");
		rd.include(request, response);
	  out.println("<h3><CENTER>Registration Success .."+x+" Rows inserted...</CENTER></H3>");
	}
		else{
			RequestDispatcher rd = request.getRequestDispatcher("SignUpPage.html");
			rd.include(request, response);
		  out.println("<h3><CENTER>Oops!Please give correct credentials</CENTER></H3>");
		}
			
		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
