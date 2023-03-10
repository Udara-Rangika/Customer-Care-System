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
 * Servlet implementation class paymentUpdateServlet
 */
@WebServlet("/paymentUpdateServlet")
public class paymentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String paymentId = request.getParameter("id");
		String paymentMethod = request.getParameter("options");
		String service = request.getParameter("service");
		String amount = request.getParameter("amount");
		String cardNumber = request.getParameter("cardnumber");
		String mm = request.getParameter("mm");
		String yy = request.getParameter("yy");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = paymentDBUtil.updatepayment(paymentId, paymentMethod, service, amount, cardNumber, mm, yy, cvv);
		
		if (isTrue == true) {
			
			List<Payment> paymentDetails = paymentDBUtil.getPaymentDetails(paymentId);
			request.setAttribute("paymentDetails", paymentDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("payaccount.jsp");
			dis.forward(request, response);
			
		} else {
			
			List<Payment> paymentDetails = paymentDBUtil.getPaymentDetails(paymentId);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("payaccount.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
