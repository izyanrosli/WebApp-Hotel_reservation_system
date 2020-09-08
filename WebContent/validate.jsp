<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "MyNewPass");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("mainHotel.jsp");
    } 
    else {
        out.println("Invalid username and password! ");
    %>
    	<br>
        <a href="index.jsp">Try Again</a>
     
    <% 
    }
    
%>

<style>
	body {
		color:red;
		font-family: Ariall, Helvetica, sans-serif;
		font-size: 24px;
		text-align: center;
		margin-top:10%;
	}
	
	a {
		padding-top: 10%;
		font-size: 20px;
	}
</style>