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

<c:forEach items="${allEmployees}" var="employee" >
<center>
<table>
	<tr>
	<td><b>Id</b></td>
	<td><b>Name</b></td>
	<td><b>Organization</b></td>
	<td><b>Designation</b></td>
	<td><b>City</b></td>
	<td><b>Country</b></td>
	</tr>
    <tr>
    <td>${employee.id}</td>
    <td>${employee.name }</td>
    <td>${employee.organization }</td>
    <td>${employee.city }</td>
    <td>${employee.country}</td>
    <td>${employee.designation}</td>
    </tr>
    </table>
 </center>
</c:forEach>
</body>
</html>