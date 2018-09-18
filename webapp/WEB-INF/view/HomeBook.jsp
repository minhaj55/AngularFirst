<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<style>
.nav{
font-family: century Gothic;
	font-size:20px;
	height: 40px;
	width: 200px;
	color: white;
	background: #F54F6B ;
	border: 1px solid #F54F6B ;
	border-radius:5px;
	padding: 5px;


}
div{
	
	}
	a{
	text-decoration: none;
	font-family: century Gothic;
	font-size:20px;
	height: 40px;
	
	color: white;
	background: #12AB74;
	border: 1px solid #12AB74;
	border-radius:3px;
	
	
	}
</style>



<body style="font-family:century Gothic">
<table cellpadding="1">
<tr>
<th>ID</th>
<th>Name</th>
<th>Call_No</th>
<th>Publisher</th>
<th>Author</th>
<th>Quantity</th>
<th>Added Date</th>
<th>Issue Book</th>
</tr>

<c:forEach items="${books}"  var="book" >
<tr>
<td>${book.id }</td>
<td>${book.name }</td>
<td>${book.call_no }</td>
<td>${book.publisher }</td>
<td>${book.author }</td>
<td>${book.quantity }</td>
<td>${book.added }</td>
<c:url var="url" value="issue">
<c:param name="id" value="${book.id }"/>
<c:param name="name" value="${book.name }"/> 
 </c:url>
<td><td><a href="${url}" >Issue</a></td>
</tr>
</c:forEach>
</table><br>
<div style="height:80px; width:500px">

<a href="addBook">
<div class="nav" >
Add New Book
</div>
</a>
<a href="return">
<div  class="nav" style="float: right; ">
Return Book
</div>
</a>


</div>

</body>
</html>