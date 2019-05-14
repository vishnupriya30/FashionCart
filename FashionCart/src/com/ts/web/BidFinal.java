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
import javax.servlet.http.HttpSession;

import com.dao.BidDao;
import com.dao.CustomerDao;
import com.db.HibernateTemplate;
import com.dto.Bid;
import com.dto.Customer;

@WebServlet("/BidFinal")
public class BidFinal extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		List<Bid> bid = BidDao.getAllBidItems();
		double max =0;
		for(Bid b:bid){
			if(b.getPrice() > max){
				max = b.getPrice();
			}
		}
		int id = 0;
		for(Bid b:bid){
			if(b.getPrice() == max){
				id = b.getCustId1();
				b.setStatus("yes");
			}else{
				b.setStatus("no");
			}
			    int x = HibernateTemplate.updateObject(b);
		}
		Customer winner = CustomerDao.getCustomer(id);
		session.setAttribute("customer", winner);
		System.out.println(" " + id + " " + winner.getFirstName());
		RequestDispatcher rd = request.getRequestDispatcher(
				"email.jsp");
		rd.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
