# Employee-Management-System-using-Servlet-JSP-and-JDBC-Maven

# 🚀 Employee Management System

## 📌 Overview

This is a **Java Web Application** developed using **Servlet, JSP, JDBC, and Maven**.
It allows users to perform CRUD operations on employee data with authentication and search functionality.

---

## 🛠️ Tech Stack

* ☕ Java (JDK 17)
* 🌐 Servlet & JSP
* 🔗 JDBC
* 🗄️ MySQL
* 🐱 Apache Tomcat 9
* 📦 Maven

---

## ✨ Features

* 🔐 Login Authentication
* ➕ Add Employee
* 📋 View Employees
* ✏️ Update Employee
* ❌ Delete Employee
* 🔍 Search by **ID or Name**
* ⚠️ “No Employee Found” message
* 🚪 Logout functionality

---

## 📁 Project Structure

EmployeeWebApp
│
├── src/main/java/com/emp
│   ├── controller
│   ├── dao
│   ├── entity
│   └── util
│
├── src/main/webapp
│   ├── WEB-INF
│   ├── index.jsp
│   ├── reademployee.jsp
│   ├── addemployee.jsp
│   ├── login.jsp
│
├── pom.xml
└── README.md


## ⚙️ Setup Instructions

### 1. Clone Repository

git clone https://github.com/vigneshchalke/Employee-Management-System-using-Servlet-JSP-and-JDBC-Maven.git


### 2. Import in Eclipse

* File → Import → Existing Maven Project

### 3. Configure Database


CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    salary DOUBLE,
    location VARCHAR(100)
);


### 4. Update DB Credentials

Update in your DBUtil.java:


jdbc:mysql://localhost:3306/employee_db
username: with your MySQL username
password: with your MySQL password

### 5. Run Project

* Deploy on Apache Tomcat
* Open:


http://localhost:8080/EmployeeWebApp/


---

## 🔍 Search Feature

* Enter ID → fetch specific employee
* Enter Name → fetch matching records
* Displays result dynamically

---

## 🚀 Deployment

* AWS EC2 (recommended)
* Apache Tomcat Server
* Localhost

---

## 📌 Future Improvements

* Convert to Spring Boot
* Add REST APIs
* Improve UI using Bootstrap
* Add validation & security

---

## 👨‍💻 Author

**Vignesh**

---

## ⭐ Support

If you like this project:

* ⭐ Star the repo
* 📢 Share it
