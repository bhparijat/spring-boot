
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center> <h2>Following  employee details saved/edited/deleted</h2></center>
    <center>
    
    <table>
    <tr>
    <td>Id:</td>
    <td>${employee.id}</td>
    </tr>
    <tr>
    <tr>
    <td>Name:</td>
    <td>${employee.name }</td>
    </tr>
    <tr>
    <td>Organization:</td>
    <td>${employee.organization }</td>
    </tr>
    <tr>
    <td>City</td>
    <td>${employee.city }</td>
    </tr>
    <tr>
    <td>Country</td>
    <td>${employee.country}</td>
    </tr>
    <tr>
    <td>Designation</td>
    <td>${employee.designation}</td>
    </tr>
    </table>
   
    
   </center>
</body>
</html>