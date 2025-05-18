package com.marshmallowhaven.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.marshmallowhaven.DAO.UserDetailsDAO;
import com.marshmallowhaven.Model.User;

/**
 * Servlet implementation class UserProfileServlet
 */
@WebServlet("/UserProfileServlet")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession(false);
	     User user = (User) session.getAttribute("currentUser");

	     if (user == null) {
	     	request.getRequestDispatcher("/Pages/login.jsp").forward(request, response);
	         return;
	     }

	     int userId = user.getUserId();

	     UserDetailsDAO userDetailsDAO;
		try {


		     userDetailsDAO = new UserDetailsDAO();
		     ArrayList<User> userDetails = userDetailsDAO.getUserById(userId);
		     
		     for (User user1 : userDetails) {
		    	    System.out.println("User ID: " + user1.getUserId());
		    	    System.out.println("Full Name: " + user1.getFullName());
		    	    System.out.println("Gender: " + user1.getGender());
		    	    System.out.println("Email: " + user1.getEmail());
		    	    System.out.println("Contact Number: " + user1.getContactNumber());
		    	    System.out.println("Address: " + user1.getAddress());
		    	    System.out.println("Date of Birth: " + user1.getDateOfBirth());
		    	    System.out.println("---------");  // Just a separator for readability
		    	}
			 request.setAttribute("user", userDetails);
	
		     
			 String displayPath = request.getContextPath() + "/photos/" ;
		        request.setAttribute("imgURL",displayPath);
		       
		        request.getRequestDispatcher("/Pages/UserPages/student-dashboard.jsp").forward(request, response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // or get it via dependency/context if you're using frameworks
	     

	     // Set user details in request scope and forward to JSP
	    
	}



}
