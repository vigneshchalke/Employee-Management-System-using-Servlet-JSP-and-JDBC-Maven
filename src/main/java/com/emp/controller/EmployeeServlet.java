package com.emp.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.emp.dao.EmployeeDAO;
import com.emp.entity.Employee;

@WebServlet("/addEmployee")
public class EmployeeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
            dao.InsertEmpData(emp);

            response.sendRedirect("reademployee.jsp");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}