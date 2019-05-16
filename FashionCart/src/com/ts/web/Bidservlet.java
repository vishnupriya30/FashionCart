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
import com.dto.Bid;


@WebServlet("/Bidservlet")
public class Bidservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
	    String custId = (String) session.getAttribute("custId");
	    System.out.println("hello" + custId);
	    int id = Integer.parseUnsignedInt(custId);
	    int price = Integer.parseInt(request.getParameter("price"));
	    System.out.println(price);
	    if(price<1900){
	    	out.print("<html>");
	    	out.print("<body color=\"white\">");
	    	out.print("<b>Please enter correct amount</b>");
	    	out.print("</body>");
	    	out.print("</html>");
	    	RequestDispatcher rd = request.getRequestDispatcher(
					"timer.jsp");
	    	rd.include(request, response);
	    }
	    else{
	    Bid bid = new Bid(id,price);
	    int x = BidDao.addBid(bid);
	    RequestDispatcher rd = request.getRequestDispatcher(
				"AfterLoginHomePage.jsp");
		rd.include(request, response);
	    }
	    
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
