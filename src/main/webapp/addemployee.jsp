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
<title>Add Employee</title>

<style>
    body {
        font-family: Arial;
        background: linear-gradient(to right, #43cea2, #185a9d);
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
        background-color: #2ecc71;
        color: white;
        border: none;
        padding: 10px;
        width: 95%;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    
    .bt{
    background-color:red;
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

    <h2>Add Employee</h2>

    <form action="addEmployee" method="post">
        
        <input type="number" name="id" placeholder="Enter ID" required>
        
        <input type="text" name="name" placeholder="Enter Name" required>
        
        <input type="number" name="sal" placeholder="Enter Salary" required>
        
        <input type="text" name="location" placeholder="Enter Location" required>

        <input type="submit" value="Add Employee" class="btn"><br>

    </form>
    

    <a class="back" href="index.jsp">← Back to Home</a>
   
    
    <form action = "logout" method="post">
    
    <input type="submit" value="Logout" class="bt">
   
	</form>
</div>

</body>
</html>