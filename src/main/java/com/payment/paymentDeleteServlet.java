package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paymentDeleteServlet
 */
@WebServlet("/paymentDeleteServlet")
public class paymentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String paymentId = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = paymentDBUtil.deletepayment(paymentId);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("service.html");
			dispatcher.forward(request, response);
		} else {
			
			List<Payment> paymentDetails = paymentDBUtil.getPaymentDetails(paymentId);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("payaccount.jsp");
			dispatcher1.forward(request, response);
		}
	}

}
