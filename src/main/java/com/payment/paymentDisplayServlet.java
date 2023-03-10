package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class paymentDisplayServlet
 */
@WebServlet("/paymentDisplayServlet")
public class paymentDisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cardNumber = request.getParameter("cardnumber");
		String mm = request.getParameter("mm");
		String yy = request.getParameter("yy");
		String cvv = request.getParameter("cvv");
		
		
		
		try {
			
			List<Payment> paymentDetails = paymentDBUtil.validate(cardNumber, mm, yy, cvv);
			request.setAttribute("paymentDetails", paymentDetails);
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("payaccount.jsp");
		dis.forward(request, response);
		
	
		
	}

}
