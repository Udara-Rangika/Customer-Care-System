package com.contactus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/contactusInsert")
public class ContactusInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String subject = request.getParameter("subj");
		String district = request.getParameter("distc");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = ContactusDBUtil.insertcontactus(name, email, phone, username, subject, district, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successfully.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessfully.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
