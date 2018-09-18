<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored="false" %>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
a{text-decoration: none;
	font-family: century Gothic;
	font-size:15px;
	height: 40px;
	width: 200px;
	color: white;
	background: #DE2743;
	border: 1px solid #DE2743;
	}
	div{
	font-family: century Gothic;
	font-size:25px;
	height: 40px;
	width: 200px;
	color: white;
	background: #0DA9D3  ;
	border: 1px solid #0DA9D3 ;
	border-radius:5px;
	
	}


</style>
<body style="font-family:century Gothic">
<table boredr="1" cellpadding="8">
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
<th>Address</th>
<th>City</th>
<th>Delete</th>
</tr>

<c:forEach var="lib" items="${all }">
<tr>
<td>${lib.id }</td>
<td>${lib.name }</td>
<td>${lib.email }</td>
<td>${lib.contact_no }</td>
<td>${lib.address }</td>
<td>${lib.city }</td>
<c:url var="url" value="remove">
<c:param name="id" value="${lib.id }"/> </c:url>
<td><td><a href="${url}" >Delete</a></td>

</tr>
</c:forEach>
</table><br>
<a href="Regform">
<div>
New Librarian
</div>
</a>
</body>
</html>