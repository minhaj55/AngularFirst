<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library</title>
</head>
<body style="font-family:century Gothic">
<table cellpadding="1">
<tr>
<th>Issue ID</th>
<th>Book ID</th>
<th>Student ID</th>
<th>Student Name</th>
<th>Issue Date</th>
</tr>

<c:forEach items="${issued}"  var="iss" >
<tr>
<td>${iss.id }</td>
<td>${iss.book_id }</td>
<td>${iss.student_id }</td>
<td>${iss.student_name }</td>
<td>${iss.issue_date }</td>
</tr>
</c:forEach>
</table><br>

</body>
</html>