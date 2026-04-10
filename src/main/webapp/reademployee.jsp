<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*, com.emp.dao.*, com.emp.entity.*" %>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

if(session.getAttribute("user") == null){
    response.sendRedirect("login.jsp");
    return;
}

/* 🔥 Get search result OR load all */
@SuppressWarnings("unchecked")
List<Employee> list = (List<Employee>) request.getAttribute("list");


if(list == null){
    EmployeeDAO dao = new EmployeeDAO();
    list = dao.readAllEmployees();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(to right, #dfe6e9, #b2bec3);
    text-align: center;
}

h2 {
    color: #2c3e50;
}

/* TABLE */
table {
    margin: auto;
    border-collapse: collapse;
    width: 80%;
    background-color: white;
    box-shadow: 0px 0px 10px gray;
}

th, td {
    padding: 10px;
    border: 1px solid #ccc;
}

th {
    background-color: #2c3e50;
    color: white;
}

tr:hover {
    background-color: #f1f1f1;
}

/* BUTTONS */
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

.logout-btn {
    margin-top: 10px;
    padding: 10px;
    background-color: red;
    color: white;
    border: none;
    border-radius: 5px;
}

/* BACK BUTTON */
.back-btn {
    display: inline-block;
    margin-top: 10px;
    padding: 8px 12px;
    background-color: #555;
    color: white;
    border-radius: 5px;
}
</style>

</head>

<body>

<h2>Employee Management System</h2>

<%
if(list.isEmpty()){
%>
    <h3 style="color:red;">No Employee Found</h3>
<%
}
%>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Salary</th>
    <th>Location</th>
    <th colspan="2">Edit / Delete</th>
</tr>

<%
for(Employee e : list) {
%>
<tr>
    <td><%= e.getId() %></td>
    <td><%= e.getName() %></td>
    <td><%= e.getSal() %></td>
    <td><%= e.getLocation() %></td>

    <td>
        <a class="edit" href="<%= request.getContextPath() %>/editurl?id=<%= e.getId() %>"
        onclick="return confirm('Edit this employee?')">
            Edit
        </a>
    </td>

    <td>
        <a class="delete" href="<%= request.getContextPath() %>/delete?id=<%= e.getId() %>"
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
<br>

<a class="back-btn" href="index.jsp">⬅ Back</a>

<form action="logout" method="post">
    <input type="submit" value="Logout" class="logout-btn">
</form>

</body>
</html>