package com.emp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emp.dao.EmployeeDAO;


@WebServlet("/delete")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            int id = Integer.parseInt(request.getParameter("id"));

	            EmployeeDAO dao = new EmployeeDAO();
	            dao.deleteEmployee(id);

	            response.sendRedirect("reademployee.jsp");

	        } catch(Exception e){
	            e.printStackTrace();
	        }
	    }
	}
