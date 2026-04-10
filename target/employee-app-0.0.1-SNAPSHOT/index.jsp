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
<title>Employee Management System</title>

<style>
    body {
        font-family: Arial;
        background: linear-gradient(to left, #4facfe, #00f2fe,grey,white,orange,black,pink,red,yellow,green);
        text-align: center;
        margin: 0;
        padding: 0;
    }

    .container {
        margin-top: 100px;
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

    a {
        display: block;
        margin: 10px 0;
        padding: 12px;
        text-decoration: none;
        color: white;
        border-radius: 5px;
        font-weight: bold;
    }

    .add {
        background-color: #2ecc71;
    }

    .view {
        background-color: #3498db;
    }
    .bt{
    background-color: White;
    color:orange;}

    .btn:hover {
        opacity: 0.8;
    }

    input {
        padding: 8px;
        margin: 5px;
        width: 80%;
    }
</style>

</head>

<body>


    

<div class="container">

    <h2>Employee Management System</h2>

    <!-- Add -->
    <a class="add btn" href="addemployee.jsp">Add Employee</a>

    <!-- View -->
    <a class="view btn" href="reademployee.jsp">View Employees</a>
    
    
     <form action = "logout" method="post">
    
    <input type="submit" value="Logout" class="bt">
   
	</form>

</div>

</body>
</html>