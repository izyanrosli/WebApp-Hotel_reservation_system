<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");    
	String from = request.getParameter("from"); 
    String to = request.getParameter("to");
    String floor = request.getParameter("floor"); 
   // String type = request.getParameter("type"); 
    String roomNo = request.getParameter("roomNo"); 
  //  String night = request.getParameter("night");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "MyNewPass");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into booking(name, checkin, checkout, floor, roomNo, regdate) values ('" + name + "','" + from + "','" + to + "','" + floor + "', '" + floor + "', CURDATE())");
    if (i > 0) {
    	out.println("Booking is Successful. Booking details");
    	session.setAttribute("name", name);
    	session.setAttribute("from", from);
    	session.setAttribute("to", to);
    	session.setAttribute("floor", floor);
    //	session.setAttribute("type", type);
    	session.setAttribute("roomNo", roomNo);
    	//session.setAttribute("night", night);
  		
    	out.println("Reserved by: " + name);
  
    %>
    	<a href="payment.jsp">Proceed to Payment</a>
    <%
    } 
    
    else {
        response.sendRedirect("reservationForm.jsp");
    }
%>