<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form action="saveBook" modelAttribute="newBook">
Name<form:input path="name"/><br>
Call_No <form:input path="call_no"/><br>
Author<form:input path="author"/><br>
Publisher <form:input path="publisher"/><br>
Quantity<form:input path="quantity"/><br>
<input type="submit"
					Style="border: 1px solid #E32472; border-radius: 5px; height: 40px; width: 230px; margin: 40px; background: #E32472; font-family: Century Gothic; font-size: 25px; color: white"
					value="SAVE">

</form:form>




</body>
</html>