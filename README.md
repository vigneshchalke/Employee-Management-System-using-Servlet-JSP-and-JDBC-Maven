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
## 📸 Screenshots

### Login page

<img width="1918" height="991" alt="Screenshot 2026-04-12 080928" src="https://github.com/user-attachments/assets/3bfc027e-a5cb-4299-8dfb-a697283d2a5a" />


### 🏠 Home Page

<img width="1919" height="1004" alt="Screenshot 2026-04-12 080949" src="https://github.com/user-attachments/assets/d93ba050-5b9e-4b24-9563-c33ce1842652" />


### 📋 Employee List

<img width="1919" height="1004" alt="Screenshot 2026-04-12 081014" src="https://github.com/user-attachments/assets/860dcc5e-a3ee-4c2c-bc5b-c4a870cbae20" />



### ➕ Add Employee

<img width="1919" height="1001" alt="Screenshot 2026-04-12 081001" src="https://github.com/user-attachments/assets/f1350d28-350d-4fe2-ae1c-3d2026505ad7" />


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
