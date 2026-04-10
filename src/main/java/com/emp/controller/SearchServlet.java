package com.emp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import com.emp.dao.EmployeeDAO;
import com.emp.entity.Employee;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String keyword = request.getParameter("keyword");

        EmployeeDAO dao = new EmployeeDAO();
        List<Employee> list;

        if (keyword.matches("\\d+")) {
            list = dao.searchById(Integer.parseInt(keyword));
        } else {
            list = dao.searchByName(keyword);
        }

        request.setAttribute("list", list);
        request.getRequestDispatcher("reademployee.jsp").forward(request, response);
    }
}