<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Login</title>
        <%
        	Cookie arr[] = request.getCookies();
        	if(arr != null)
        	{
        		for (Cookie o:arr)
            	{
            		if (o.getName().equals("emailC"))
            			{request.setAttribute("Email",o.getValue());}
            		if (o.getName().equals("passC"))
            			{request.setAttribute("Password",o.getValue());}
            	}
        	}
        %>
        <link rel="stylesheet" type="text/css" href="login.css">
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
	    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
	    <script >
	    $().ready(function() {
	        $("#validate").css('color', 'red');
	    	$("#validate").validate({
	    		onfocusout: false,
	    		onkeyup: false,
	    		onclick: false,
	    		rules: {
	                "Email":{
	                    required: true,
	                    email:true,
	                    maxlength: 50
	                },
	    			"Password": {
	    				required: true,
	    				minlength: 6,
	    				maxlength: 50
	    			}
	    		},
	            messages:{
	                Email: {
	                    required : "The field is required",
	                    email: "Email is invalid",
	                    maxlength: "maxlength is 50"
	                },
	                Password: {
	                    required: "The field is required",
	                    minlength: "Minlength is 6",
	                    maxlength: "maxlength is 50"
	                }
	            }
	    	});
	    });
	    	
	    	
	    </script>
    </head>
    <body>
        <div class="center">
            <div class="header">Please Sign In</div>
            <form class="Menu" action="LoginController"  method="post"  id="validate">
            
            	<p><input type="hidden">${error}</p>           	            	
                <p><input type="email" placeholder="E-mail" name="Email" size="50" minlength="6" maxlength="50" id="email" value="${Email}"></p> 
                <p><input type="password" placeholder="Password" name="Password" size="50"  maxlength="50" id="password" value="${Password}"></p> 
                <p><input type="checkbox" size="1" id="checkbox" name="Remember" ><font color="black"> Remember Me</p>
                
                <p><button type ="submit" id ="btnLogin">Login</button>
                <p><a href="register.jsp">Click here to Register</a></p>
            </form>
        </div>
    </body>
</html>