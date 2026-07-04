package com.emp.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	
	public static Connection establishConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://employee-db.ch4o4a4aitg8.ap-southeast-2.rds.amazonaws.com:3306/CSRDB","admin","Employee123!");
		
		return con;
	}

}
