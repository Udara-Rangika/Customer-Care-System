package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomer")
public class UpdateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = CustomerDButil.updatecustomer(id, name, mobile, email,date);
			
		if(isTrue == true) {
		
			List<Customer> cusDetails = CustomerDButil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			dis.forward(request, response);
			
		}
		else {

			List<Customer> cusDetails = CustomerDButil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
