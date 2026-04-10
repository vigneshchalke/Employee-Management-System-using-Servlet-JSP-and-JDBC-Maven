package com.emp.dao;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.emp.entity.*;

import com.emp.util.*;

public class EmployeeDAO {
	
	public void InsertEmpData(Employee emp)  throws Exception{
		
		Connection con = DBUtil.establishConnection();
		
		String insertQuery = "INSERT INTO EMPLOYEE(ID, NAME, SALARY, LOCATION) VALUES (?, ?, ?, ?)";
		
		PreparedStatement ps = con.prepareStatement(insertQuery);
		
		ps.setInt(1, emp.getId());
		ps.setString(2, emp.getName());
		ps.setInt(3, emp.getSal());
		ps.setString(4,emp.getLocation());
		
		ps.executeUpdate();
		
		ps.close();
		con.close();
		
	}
	
	public List<Employee> readAllEmployees() throws Exception {

	    List<Employee> list = new ArrayList<>();

	    Connection con = DBUtil.establishConnection();

	    String readQuery = "SELECT * FROM EMPLOYEE";

	    Statement st = con.createStatement();

	    ResultSet rst = st.executeQuery(readQuery);

	    while (rst.next()) {

	        int id = rst.getInt(1);
	        String name = rst.getString(2);
	        int sal = rst.getInt(3);
	        String location = rst.getString(4);

//	        Employee emp = new Employee(id, name, sal, location);
	        Employee emp = new Employee();
//
	        emp.setId(id);
	        emp.setName(name);
	        emp.setSal(sal);
	        emp.setLocation(location);

	        list.add(emp);
	    }

	    return list;
	}
	
	public void updateEmployee(Employee emp) throws Exception {

	    Connection con = DBUtil.establishConnection();

	    String updateQuery =
	        "UPDATE EMPLOYEE SET NAME=?, SALARY=?, LOCATION=? WHERE ID=?";

	    PreparedStatement pst = con.prepareStatement(updateQuery);

	    pst.setString(1, emp.getName());
	    pst.setInt(2, emp.getSal());
	    pst.setString(3, emp.getLocation());
	    pst.setInt(4, emp.getId());

	    pst.executeUpdate();

	    pst.close();
	    con.close();
	}
	
	public void deleteEmployee(int id) throws Exception {

	    Connection con = DBUtil.establishConnection();

	    String deleteQuery = "DELETE FROM EMPLOYEE WHERE ID=?";

	    PreparedStatement pst = con.prepareStatement(deleteQuery);

	    pst.setInt(1, id);

	    pst.executeUpdate();

	    pst.close();
	    con.close();
	}
	
	public List<Employee> searchById(int id) {
	    List<Employee> list = new ArrayList<>();

	    try {
	        Connection con = DBUtil.establishConnection();
	        String sql = "SELECT * FROM employee WHERE id=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setInt(1, id);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            Employee e = new Employee();
	            e.setId(rs.getInt("id"));
	            e.setName(rs.getString("name"));
	            e.setSal(rs.getInt("salary"));
	            e.setLocation(rs.getString("location"));
	            list.add(e);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
	public List<Employee> searchByName(String keyword) {
	    List<Employee> list = new ArrayList<>();

	    try {
	        Connection con = DBUtil.establishConnection();
	        String sql = "SELECT * FROM employee WHERE name LIKE ?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, "%" + keyword + "%");

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {
	            Employee e = new Employee();
	            e.setId(rs.getInt("id"));
	            e.setName(rs.getString("name"));
	            e.setSal(rs.getInt("salary"));
	            e.setLocation(rs.getString("location"));
	            list.add(e);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
	

}
