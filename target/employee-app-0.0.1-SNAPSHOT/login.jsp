 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2,orange);
        margin: 0;
        padding: 0;
    }

    .login-container {
        width: 350px;
        margin: 120px auto;
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    input {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .btn {
        width: 95%;
        padding: 10px;
        background-color: #667eea;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    .btn:hover {
        background-color: #5a67d8;
    }

    .error {
        color: red;
        margin-top: 10px;
        font-size: 14px;
    }

    .title {
        font-size: 22px;
        font-weight: bold;
        margin-bottom: 10px;
        color: #555;
    }
  
</style>

</head>

<body>

<div class="login-container">

    <div class="title">Employee Management System</div>

    <form action="login" method="post">
        <input type="text" id="name" name="username" placeholder="Enter Username" required><br>
        <input type="password" name="password" placeholder="Enter Password" required><br>
        <input type="submit" value="Login" class="btn">
    </form>

    <%
    String error = request.getParameter("error");
    if(error != null){
    %>
        <div class="error">Invalid Username or Password</div>
    <%
    }
    %>

</div>

</body>
</html>