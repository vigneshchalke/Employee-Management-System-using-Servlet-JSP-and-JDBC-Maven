package com.emp.dao;

import java.sql.*;
import com.emp.util.DBUtil;

public class AdminDAO {

    public boolean checkLogin(String username, String password) throws Exception {

        Connection con = DBUtil.establishConnection();

        String query = "SELECT * FROM admin WHERE username=? AND password=?";
        PreparedStatement ps = con.prepareStatement(query);

        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();

        boolean result = rs.next();

        con.close();

        return result;
    }
}