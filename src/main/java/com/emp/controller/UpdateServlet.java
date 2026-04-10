package com.emp.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emp.dao.EmployeeDAO;
import com.emp.entity.Employee;


@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
	        throws IOException {
	    doPost(req, res);
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws IOException {

//	        System.out.println("Update POST called"); // 🔥 debug

	        try {
	            int id = Integer.parseInt(request.getParameter("id"));
	            String name = request.getParameter("name");
	            int sal = Integer.parseInt(request.getParameter("sal"));
	            String location = request.getParameter("location");

	            Employee emp = new Employee();
	            emp.setId(id);
	            emp.setName(name);
	            emp.setSal(sal);
	            emp.setLocation(location);

	            EmployeeDAO dao = new EmployeeDAO();
	            dao.updateEmployee(emp);

	            response.sendRedirect("reademployee.jsp");

	        } catch(Exception e){
	            e.printStackTrace();
	        }
	    }
	}