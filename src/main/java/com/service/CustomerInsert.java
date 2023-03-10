package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String date =request.getParameter("date");
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		


		
		boolean isTrue;
		
		 isTrue = CustomerDButil.insertCustomer(date,name, mobile, email);
		
		if(isTrue == true) {
			

			try {
				List<Customer> customerDetails = CustomerDButil.validate(name, mobile,email);
				request.setAttribute("cusDetails", customerDetails);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			dis.forward(request, response);
			
			
		
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	
	}

}
