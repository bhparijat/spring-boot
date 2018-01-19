
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
 <center>
   <form:form action="/employee/deleted" method='post' modelAttribute="employee">
		
  <table>
  <tr>
  <td>Enter Id Of User To be deleted</td>
  <td> <form:input type='text' path='id' /></td>
  </tr>
  
  
   <tr>
   <td>
    <input type='submit' value='Delete User'>
   </td>
   </tr>
    </table>
   </form:form>
   </center>
</body>
</html>