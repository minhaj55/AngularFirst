<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<form:form action="save" modelAttribute="newLibrarian">
Name<form:input path="name"/><br>
Email <form:input path="email"/><br>
Password<form:input path="password" type="Password"/><br>
Address <form:input path="address"/><br>
City <form:input path="city"/><br>
Contact <form:input path="contact_no"/><br>

<input type="submit"
					Style="border: 1px solid #48C9B0; border-radius: 5px; height: 40px; width: 230px; margin: 40px; background: #48C9B0; font-family: Century Gothic; font-size: 20px; color: white"
					value="Register">

</form:form>
</body>
</html>