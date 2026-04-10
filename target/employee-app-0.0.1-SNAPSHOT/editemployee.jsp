<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.emp.entity.Employee" %>

 <%
    
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<%
Employee emp = (Employee) request.getAttribute("emp");

if(emp == null){
    out.println("<h3 style='color:red;'>Employee not found</h3>");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>

<style>
    body {
        font-family: Arial;
        background: linear-gradient(to right, #ff9966, #ff5e62);
        text-align: center;
        margin: 0;
        padding: 0;
    }

    .container {
        margin-top: 80px;
        background-color: white;
        width: 350px;
        margin-left: auto;
        margin-right: auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px gray;
    }

    h2 {
        color: #333;
        margin-bottom: 20px;
    }

    input {
        width: 90%;
        padding: 10px;
        margin: 8px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .btn {
        background-color: #f39c12;
        color: white;
        border: none;
        padding: 10px;
        width: 95%;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .btn:hover {
        opacity: 0.9;
    }

    .back {
        display: block;
        margin-top: 15px;
        text-decoration: none;
        color: #3498db;
    }
</style>

</head>

<body>
    

<div class="container">

    <h2>Edit Employee</h2>

    <form action="update" method="post">

        <input type="number" name="id" value="<%= emp.getId() %>" readonly>

        <input type="text" name="name" value="<%= emp.getName() %>" required>

        <input type="number" name="sal" value="<%= emp.getSal() %>" required>

        <input type="text" name="location" value="<%= emp.getLocation() %>" required>

        <input type="submit" value="Update Employee" class="btn">
        
         <a class="back" href="reademployee.jsp">← Back to List</a>

    </form>
    
    
     <form action = "logout" method="post">
    
    <input type="submit" value="Logout" class="bt">
   
	</form>

    

</div>

</body>
</html>