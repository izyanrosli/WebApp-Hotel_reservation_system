<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "MyNewPass");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into members(email, uname, pass, regdate) values ('" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
    	out.println("Registration is Successful.");
    %>
    	<br>
    	<a href="index.jsp">Go to Login Page</a>
    <%
    
    } 
    
    else {
        response.sendRedirect("index.jsp");
    }
	%>

<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		font-size: 24px;
		text-align: center;
		margin-top:10%;
	}
	
	a {
		padding-top: 10%;
		font-size: 20px;
	}
</style>