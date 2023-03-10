package com.contactus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateContactusServlet")
public class UpdateContactusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("contid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String subject = request.getParameter("subj");
		String district = request.getParameter("distc");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = ContactusDBUtil.updatecontactus(id, name, email, phone, username, subject, district, password);
		
		if(isTrue == true) {
			
			List<Contactus> contDetails = ContactusDBUtil.getcontactusDetails(id);
			request.setAttribute("contDetails", contDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactuspage.jsp");
			dis.forward(request, response);
		}
		else {
			List<Contactus> contDetails = ContactusDBUtil.getcontactusDetails(id);
			request.setAttribute("contDetails", contDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactuspage.jsp");
			dis.forward(request, response);
		}
	}

}
