<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
    return;
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*, com.emp.dao.*, com.emp.entity.*" %>


<head>
<meta charset="UTF-8">
<title>Employee List</title>

<style>
    body {
        font-family: Arial;
        background-color: #f4f6f8;
        text-align: center;
    }

    h2 {
        color: #333;
    }

    table {
        margin: auto;
        border-collapse: collapse;
        width: 80%;
        background-color: white;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: center;
    }

    th {
        background-color: #2c3e50;
        color: white;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a {
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 5px;
        color: white;
    }

    .edit {
        background-color: #3498db;
    }

    .delete {
        background-color: #e74c3c;
    }

    .add-btn {
        display: inline-block;
        margin-top: 20px;
        background-color: #2ecc71;
        padding: 10px 15px;
        color: white;
        border-radius: 5px;
    }

    .form-box {
        margin-top: 30px;
    }

    input {
        padding: 8px;
        margin: 5px;
    }
    
    .bt{
    background-color: white;
    color:red;
    }

    .delete-btn {
        background-color: red;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 5px;
    }
</style>

</head>

<body>

<h2>Employee Management System</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Salary</th>
    <th>Location</th>
    <th colspan='2'>Edit AND Delete</th>
</tr>

<%
EmployeeDAO dao = new EmployeeDAO();
List<Employee> list = dao.readAllEmployees();

for(Employee e : list) {
%>
<tr>
    <td><%= e.getId() %></td>
    <td><%= e.getName() %></td>
    <td><%= e.getSal() %></td>
    <td><%= e.getLocation() %></td>
    
    <td>
        <a class="edit" href="<%= request.getContextPath() %>/editurl?id=<%= e.getId() %>" 
         onclick= "return confirm('However edit')">
            Edit
        </a>
    </td>
    <td>   <a class="delete" href="<%= request.getContextPath() %>/delete?id=<%= e.getId() %>"
           onclick="return confirm('Are you sure to delete this employee?')">
            Delete
        </a>
    </td>
</tr>
<%
}
%>

</table>

<br>

<a class="add-btn" href="addemployee.jsp">Add Employee</a>

 

 <form action = "logout" method="post">
    
    <input type="submit" value="Logout" class="bt" >
   
	</form>
   

</body>
</html>