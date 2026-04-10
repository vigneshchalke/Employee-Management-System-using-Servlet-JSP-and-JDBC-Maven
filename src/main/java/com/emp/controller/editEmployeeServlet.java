package com.emp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.emp.dao.EmployeeDAO;
import com.emp.entity.Employee;

@WebServlet("/editurl")
public class editEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		        try {
		            int id = Integer.parseInt(request.getParameter("id"));

		            EmployeeDAO dao = new EmployeeDAO();
		            List<Employee> list = dao.readAllEmployees();

		            Employee emp = null;

		            for(Employee e : list){
		                if(e.getId() == id){
		                    emp = e;
		                    break;
		                }
		            }

		            request.setAttribute("emp", emp);

		            RequestDispatcher rd = request.getRequestDispatcher("editemployee.jsp");
		            rd.forward(request, response);

		        } catch(Exception e){
		            e.printStackTrace();
		        }
		    }
		
	}
