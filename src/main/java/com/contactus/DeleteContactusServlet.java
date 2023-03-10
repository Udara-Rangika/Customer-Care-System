package com.contactus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteContactusServlet")
public class DeleteContactusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("contid");
		boolean isTrue;
		
		isTrue = ContactusDBUtil.deletecontactus(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("contactusinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Contactus> contDetails = ContactusDBUtil.getcontactusDetails(id);
			request.setAttribute("contDetails", contDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("contactuspage.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
