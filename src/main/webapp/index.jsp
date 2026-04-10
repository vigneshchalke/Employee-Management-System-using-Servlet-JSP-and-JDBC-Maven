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

/* BODY */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right,#dfe6e9,#b2bec3, #2c5364);
}

/* HEADER */
.header {
    display: grid;
    grid-template-columns: 1fr auto 1fr;
    align-items: center;
    padding: 15px 30px;
    background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
    color: white;
    box-shadow: 0 2px 10px rgba(0,0,0,0.3);
}

/* CENTER TITLE */
.title {
    text-align: center;
    margin: 0;
    font-size: 22px;
    font-weight: bold;
}

/* 🔥 MARQUEE EFFECT (MODERN) */
.marquee {
    overflow: hidden;
    white-space: nowrap;
}

.marquee h2 {
    display: inline-block;
    padding-left: 100%;
    animation: moveText 10s linear infinite;
}

/* Animation */
@keyframes moveText {
    from { transform: translateX(0); }
    to { transform: translateX(-100%); }
}

/* SEARCH RIGHT */
.search-box {
    justify-self: end;
    display: flex;
    background: white;
    border-radius: 25px;
    overflow: hidden;
}

.search-box input {
    border: none;
    padding: 8px 12px;
    outline: none;
}

.search-box button {
    border: none;
    background: #00c6ff;
    color: white;
    padding: 8px 12px;
    cursor: pointer;
}

.search-box button:hover {
    background: #0072ff;
}

/* CONTAINER */
.container {
    margin-top: 100px;
    background-color: white;
    width: 350px;
    margin-left: auto;
    margin-right: auto;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px gray;
    text-align: center;
}

/* BUTTONS */
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
    background-color: #00c853;
}

.view {
    background-color: #00b0ff;
}

a:hover {
    opacity: 0.8;
}

/* LOGOUT */
.logout-btn {
    margin-top: 15px;
    padding: 10px;
    width: 100%;
    border: none;
    background-color: #ff3d00;
    color: white;
    border-radius: 5px;
    cursor: pointer;
}

.logout-btn:hover {
    background-color: #c0392b;
}

/* FOOTER */
.footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    background-color: #1e3a5f;
    color: white;
    text-align: center;
    padding: 10px;
}

</style>

</head>

<body>

<!-- 🔷 HEADER -->
<div class="header">

    <div></div>

    <!-- 🔥 MOVING TITLE -->
    <div class="marquee">
        <h2>Employee Management System</h2>
    </div>

    <!-- 🔍 SEARCH -->
    <form action="search" method="get" class="search-box">
        <input type="text" name="keyword" placeholder="Search by ID or Name" required>
        <button type="submit">🔍</button>
    </form>

</div>

<!-- 📄 MAIN -->
<div class="container">

    <a class="add" href="addemployee.jsp">Add Employee</a>
    <a class="view" href="reademployee.jsp">View Employees</a>

    <form action="logout" method="post">
        <input type="submit" value="Logout" class="logout-btn">
    </form>

</div>

<!-- 🔻 FOOTER -->
<div class="footer">
    © 2026 Employee Management System
</div>

</body>
</html>