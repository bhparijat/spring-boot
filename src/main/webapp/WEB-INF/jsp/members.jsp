
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <center> <h2>Enter employee details</h2></center>
    <center>
    <form:form method="post" action="/employee/saved" modelAttribute="employee">
    <table>
    <tr>
    <td>Name</td>
    <td><form:input  path='name'/></td>
    </tr>
    <tr>
    <td>Organization</td>
    <td><form:input  path='organization'/></td>
    </tr>
    <tr>
    <td>City</td>
    <td><form:input  path='city'/></td>
    </tr>
    <tr>
    <td>Country</td>
    <td><form:input  path='country'/></td>
    </tr>
    <tr>
    <td>Designation</td>
    <td><form:input  path='designation'/></td>
    </tr>
    </table>
    <input type='submit'>
    </form:form>
   </center>
</body>
</html>