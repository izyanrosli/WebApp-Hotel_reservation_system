<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    
     <style>
    	body {
    		font-family: Ariall, Helvetica, sans-serif;
    		background-color: #fae3f5;
    	}
    	
    	h1 {
    		text-align:center;
    		margin-top:10%;
    		background-color: yellow;
    	}
    	
    	form {
 			border: 5px solid #851e6e;
  			padding:50px;
		}
    	
    	
    	table {
    		margin-left:37%;
    	}
    	
    	input[type=submit], input[type=reset] {
			 background-color: #851e6e;
			 font-size:16px;
			 padding: 10px; 
			 border: 1px solid black;
			 cursor: pointer;
			 width: 100%;
			 display: inline-block;
			 margin-top:1%;
			 color: white;
			 text-decoration: none;
		}
    	
    	input[type=text], input[type=password] {
    		 width: 100%;
		  	 font-size: 16px;
		  	 padding: 12px 20px;
		 	 margin: 8px 0;
		 	 border: 1px solid #ccc;
		  	 box-sizing: border-box;
    	}
    	
    	input[type=submit], input[type=reset] :hover {
 			 opacity: 0.8;
		}
		
		a {
			color: gray;
		}
    	
    </style>
    <body>
        <form method="post" action="connection.jsp">
           
            <table>
                <thead>
                    <tr>
                        <th><h3>Sign Up</h3></th>
                    </tr>
                   
                </thead>
                <tbody>
                	<tr>
                        <td><strong>Username</strong></td>
                   
                    </tr>
                    
                    <tr>
                    	 <td><input type="text" name="uname" value="" required></td>
                    <tr><td><td></tr>
                    
                    <tr>
                   
                    <tr>
                        <td><strong>Email</strong></td>
                        
                    </tr>
                    
                    <tr>
                    	<td><input type="text" name="email" value="" required></td>
                    <tr><td><td></tr>
                    
                    <tr>
                   
                    <tr>
                        <td><strong>Password</strong></td>
                        
                    </tr>
                    
                    <tr>
                    	<td><input type="password" name="pass" value="" required></td>
                    <tr><td><td></tr>
                    
                    <tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                    
                    <tr>
                    	 <td><input type="reset" value="Reset"></td>
                    </tr>
        			
        			<tr><td><br><td></tr>
        			
                    <tr>
                        <td>Already registered? <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            
        </form>
    </body>
</html>