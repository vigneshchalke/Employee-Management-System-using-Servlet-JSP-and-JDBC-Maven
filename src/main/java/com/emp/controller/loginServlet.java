package com.emp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.emp.dao.AdminDAO;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            AdminDAO dao = new AdminDAO();

            if(dao.checkLogin(username, password)) {
                HttpSession session = request.getSession();
                session.setAttribute("user", username);

                response.sendRedirect("index.jsp"); 
            } else {
               
               response.sendRedirect("login.jsp?error=1");
            }

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}