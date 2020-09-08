<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Alpha Hotel Main </title>
</head>

<style>
body {
	background-color: #fae3f5;
	font-family: Arial;
	margin-top: 2%;
	border: 3px solid #570b46;
	height: 300px;
}

a {
	border: 1px solid black;
	background-color: #851e6e;
	padding: 10px;
	text-decoration: none;
	color: white;
	cursor: pointer;
}

a:hover {
	opacity: 0.8;
}

</style>
<body><center>
	
	<br><br><br><h2> Welcome to Alpha Hotel </h2><br>
    <a href="reservationForm.jsp">Reservation</a> <br><br><br>
    <a href="index.jsp">Logout</a>
	</center>
</body>
</html>