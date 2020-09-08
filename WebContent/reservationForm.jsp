<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Form</title>
</head>

<style>
body { 
	background-color:#fae3f5;
	font-family:Arial;
	font-size: 15px;
	margin-top: 2%;
	border: 3px solid #570b46;
	padding: 55px;
}

input[type=submit] {
  background-color: #851e6e;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 4px;
  cursor: pointer;
  margin-left: 120%;
  margin-top: 30%;
}

.back {
	 background-color: #851e6e;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 4px;
  cursor: pointer;
  margin-left: 120%;
  margin-top: 30%;
}


img {
  
  transition: transform .3s;
  margin: 0 auto;
}

img:hover {
  -ms-transform: scale(2.5); 
  -webkit-transform: scale(2.5);
  transform: scale(2.5);
}

</style>

<body>

<form action="reservationReceipt.jsp" method="post">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<center><h1>Hotel Reservation</h1>

<table>
	<tr>
		<td>Reserved By</td>
		<td><input type="text" name="name">
		</td>	
	</tr>
<tr>
<script>
  $( function() {
    var dateFormat = "mm/dd/yy",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1d",
          changeMonth: true,
          minDate: +0,
          numberOfMonths: 2
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1d",
        changeMonth: true,
        minDate: +0,
        numberOfMonths: 2
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  </script>

<td>Check-in Date </td>
<td><input type="text" id="from" name="from"></td>
<td>Check-out Date </td>
<td><input type="text" id="to" name="to"></td></tr>

	<tr>
		<td>Room Type</td>
		<td><select name="floor">
			<option value="1">Single</option>
			<option value="2">Double</option>
			<option value="3">Queen</option>
			<option value="4">Master-Suite</option>
			</select></td>
		<td>Room No</td>
		<td><select name="roomNo">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			</select>
		</td>
	</tr>

<tr>
<td> <br><br><br><img src="C:\Users\User\eclipse-workspace\Hotel\single.jpg" width="160" height="100" alt="Single bed room"/></td>
<td> <br><br><br><img src="C:\Users\User\eclipse-workspace\Hotel\double.jpg" width="160" height="100" alt="Double bed room"/></td>
<td> <br><br><br><img src="C:\Users\User\eclipse-workspace\Hotel\queen.jpg" width="160" height="100" alt="Queen bed room"/></td>
<td> <br><br><br><img src="C:\Users\User\eclipse-workspace\Hotel\master.jpg" width="160" height="100" alt="Master suite bed room"/></td>
</tr>

<tr>
<td>&emsp;Single Bed Room</td>
<td>&emsp;Double Bed Room</td>
<td>&emsp;Queen Bed Room</td>
<td>Master-Suite Bed Room</td>
</tr>

<tr>
<td>&emsp;&emsp;RM 80 / night</td>
<td>&emsp;&emsp;RM 150 / night</td>
<td>&emsp;&emsp;RM 200 / night</td>
<td>&emsp;&emsp;RM 280 / night</td>
</tr>

<tr>
<td><input type="submit" value="Add reservation" name="reserve"></td>
<td> <a href="mainHotel.jsp" class="back">Back</a></td>

</tr>

</center>
</table>
</form>
</body>
</html>