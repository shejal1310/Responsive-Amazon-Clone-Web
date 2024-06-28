package com.amazon.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ValidateAdmin")
public class ValidateAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        
            if (id.equals("12345") && pass.equals("12345")) {
               
            	String userName = "Admin" ;
            	request.setAttribute("userName", userName);
            	RequestDispatcher dispatcher = request.getRequestDispatcher("Admin.html");
            	dispatcher.forward(request, response);
            } else {
               
                response.sendRedirect("AdminLogin.html?error=true");
            }
     
    }
}
