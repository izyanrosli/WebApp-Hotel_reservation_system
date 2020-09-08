<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*, javax.servlet.*, java.text.SimpleDateFormat, java.util.Date" %>
<%@ page import="HotelData.Hotel" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Receipt</title>
</head>
<style>
body { 
	background-color:#fae3f5;
	font-family:Arial, Helvetica, sans-serif;
	font-size: 15px;
	margin-top: 2%;
	border: 3px solid #570b46;
	padding: 55px;
}

.red {
	height:15px;
	width:15px;
	background-color:red;
	border-radius:40%;
	display:inline-block;
}

.blue {
	height:15px;
	width:15px;
	background-color:blue;
	border-radius:40%;
	display:inline-block;
}

</style>

<body>
<center><h3>Reservation Receipt</h3>

    <jsp:useBean id="userinput" class="HotelData.Hotel"></jsp:useBean> 
    
    <%
    String datez1 = request.getParameter("to");
    String datez2 = request.getParameter("from");
    
    SimpleDateFormat formatter = new SimpleDateFormat ("mm/dd/yy");
    
	Date d1 = formatter.parse(datez1);
	Date d2 = formatter.parse(datez2);
	
	int roomNo1 = Integer.parseInt(request.getParameter("roomNo"));
	int floor1 = Integer.parseInt(request.getParameter("floor"));

    
     Hotel myClass = new Hotel();
     if (myClass.checkClash(d1,d2) == true){
    	 out.println("Sorry the date is not available.");
    	 if (myClass.checkRoom(floor1, roomNo1) == true){
    		 out.println("Sorry the room is not available");
    	 }
     }
     else if (myClass.checkRoom(floor1, roomNo1) == true){
    		 out.println("Sorry the room is not available");
     	}
     else {
     
    	 
    
    %>
	<jsp:setProperty property="*" name="userinput"/> 
	<h1>Reservation succeed!</h1></center>
	<tr>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	You have entered details as below:<br> </td>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	1) Name: <jsp:getProperty property="name" name="userinput"/><br> </td>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	2) Check-in: <jsp:getProperty property="from" name="userinput"/><br> </td>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	3) Check-out: <jsp:getProperty property="to" name="userinput"/><br> </td>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	4) Level: <jsp:getProperty property="floor" name="userinput" /><br></td>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	5) Room No: <jsp:getProperty property="roomNo" name="userinput" /><br></td>
	<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	6) Room Type: <jsp:getProperty property="type" name="userinput" /><br></td>
	
	</tr>

	
	
	
	<center>	
		<% 
		
		int levelArray[][] = new int[10][20];
		int temp[][] = new int[4][10];
		
		
		for (int level=1; level<5; level++){
			for (int room=1; room<11; room++){
				if (level == floor1 && room == roomNo1){
					levelArray[level][room] = 1;
				}
				
				else 
					levelArray[level][room] = 0;
			}
		}

		//booked room
				levelArray[1][3]=1;
				levelArray[1][4]=1;
				levelArray[2][8]=1;
				
		out.println("<h2>Room Availability</h2>");
		%><div class="red"></div><%
		out.println(" = occupied   "); 
		%><div class="blue"></div><%
		out.print(" = vacant<br><br>");
		for(int level=1; level<5; level++) {
			
			out.print("Floor " + level + " : ");
			
			for(int room=1; room<11; room++) {
				
				if (levelArray[level][room] == 1){
					out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
					%> 
					<div class="red"></div>
					<%
				} 
			
				else {
					out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
					%> 
					<div class="blue"></div>
					<%
					} 
				
				out.println(room);
				} out.println("<br>");
			} 
     }
		%>
		<br><br>
	<center><a href="mainHotel.jsp">Go to Main Page</a>
	</center><br>
		
</body>
</html>