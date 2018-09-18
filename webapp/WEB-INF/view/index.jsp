<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body Style="height: 100%; width: 1000px; margin: 80px auto 0px auto;">
<label style="font-size:40px;color:#48C9B0;font-family:Century Gothic;margin-top:5px;">
Sign In Here
</label>
<p style="font-size:20px;color:black;font-family:Century Gothic;margin-top:5px;">${msg}</p>


<form action="veifyUser" method="post">
<div
			Style="border: 1px solid #48C9B0; border-radius: 5px; height: 330px; width: 350px; margin: 80px auto 0px auto;">
			<select
					Style="border: 1px solid #48C9B0;
					border-radius: 5px; 
					height: 50px; 
					width: 280px; 
					margin-top: 30px;
					margin-left: 30px; 
					padding-left: 15px"
					name="role" required>
			<option>Admin</option>
			<option>Librarian</option>
			</select><br>

			<input
				Style="border: 1px solid #48C9B0; border-radius: 5px; height: 50px; width: 280px; margin-top: 30px; margin-left: 30px; padding-left: 15px"
				placeholder="Username" name="username" required><br>
				
				 <input
				type="password"
				Style="border: 1px solid #48C9B0; border-radius: 5px; height: 50px; width: 280px; margin-left: 30px; margin-top: 30px; padding-left: 15px"
				name="pwd" placeholder="Password"  required><br>

			<center>
				<input type="submit"
					Style="border: 1px solid #48C9B0; border-radius: 5px; height: 40px; width: 230px; margin: 30px; background: #48C9B0; font-family: Century Gothic; font-size: 20px; color: white"
					value="SIGN IN">
			</center>



		</div>


	</form>

<label
			style="font-size: 23px; color: #48C9B0; font-family: Century Gothic; margin-top: 5px;">

			New User <a href="addUser">Join Us Here</a>
		</label>







<a href="Regform"> Add Librarian</a>
<a href="showAll"> ViewAll</a>
<a href="addBook"> Add Book</a>
<a href="viewBooks"> Show All Books</a>
</body>
</html>
