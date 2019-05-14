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

import com.dao.BidDao;
import com.dao.CustomerDao;
import com.dto.Bid;
import com.dto.Customer;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hi Lahari");
		response.setContentType("text/html");
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();
		//Customer winner = (Customer) session.getAttribute("winner");
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		Customer customer= new Customer();
		try{
		customer = CustomerDao.getCustomer(user);
		session.setAttribute("custId", String.valueOf(customer.getCustId()));
		session.setAttribute("customer", customer);
		}catch(NullPointerException e){
			RequestDispatcher rd = request.getRequestDispatcher("SignUpPage.html");
			rd.include(request, response);	
		}try{
		if(customer!=null && (customer.getPassword().equals(pass))){
			session.setAttribute("user", user);
			session.setAttribute("pass", pass);
			int id = customer.getCustId();
			Bid bid = BidDao.getBidByCustId(id);
			System.out.println(bid.getStatus());
			if(bid.getStatus().equals("yes")){
				int x = BidDao.DeleteBid();
				RequestDispatcher rd = request.getRequestDispatcher("Winner.jsp");
				rd.include(request, response);	
			}else{
			RequestDispatcher rd = request.getRequestDispatcher("AfterLoginHomePage.jsp");
			rd.include(request, response);
			}
		}
		else
			{
				RequestDispatcher rd = request.getRequestDispatcher("WrongPswd.jsp");
				rd.forward(request, response);
			}
		}catch(Exception e){
			RequestDispatcher rd = request.getRequestDispatcher("AfterLoginHomePage.jsp");
			rd.include(request, response);	
		}
			
		out.println("</html>");		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
