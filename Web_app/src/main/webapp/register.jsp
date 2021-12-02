<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="ISO-8859-1">
    
        <title> register </title>
	
		<style>
.field{
    width: 350px; 
    margin-left: 35%;
    border: 2px solid #DDDDDD; 
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    border-top-width: 2px;
}
.form{
    margin-top: 10px;
}
.form input {
    height: 25px;
    border: 2px solid #DDDDDD	;
    border-radius: 5px;
    padding-left: 15px;
}
.but{
    text-align: center;
    color: white;
    background-color: #5cb85c;
    width: 340px;
    height: 50px;
    font-size: 17x;
    border-radius: 5px;
    border: 2px solid #EEEEEE;
}

.re{
    width: 345px; 
    margin-left: 35%;
    border: 2px solid #DDDDDD; 
    margin-top: 8%; 
    background-color:#f5f5f5;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom-width: 0px;
    height:none;
    font-size: 20px;
}
		</style>
		
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
	    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
	    <script >
	    $().ready(function() {
	        $("#demoForm").css('color', 'red');
	    	$("#demoForm").validate({
	    		onfocusout: false,
	    		onkeyup: false,
	    		onclick: false,
	    		rules: {
	    			"Username": {
	    				required: true,
	    				maxlength: 50
	    			},
	                "Email":{
	                    required: true,
	                    email:true,
	                    maxlength: 50
	                },
	    			"Password": {
	    				required: true,
	    				minlength: 6,
	    				maxlength: 50
	    			},
	    			"repassword": {
	    				equalTo: "#pass",
	    				minlength: 6
	    				
	    			}
	    		},
	            messages:{
	                Username: {
	                    required: "The field is required",
	                    maxlength: "maxlength is 50"
	                },
	                Email: {
	                    required : "The field is required",
	                    email: "Email is invalid",
	                    maxlength: "maxlength is 50"
	                },
	                Password: {
	                    required: "The field is required",
	                    minlength: "Minlength is 6",
	                    maxlength: "maxlength is 50"
	                },
	                repassword: {
	                    minlength: "Minlength is 6",
	                    equalTo: "Must be same password"
	                }
	            }
	    	});
	    });
	    </script>

    </head>
    <body>
 
            <fieldset class="re">
                <div> Register </div>
            </fieldset>
        <form action="RegisterController" method="post" id="demoForm">
            <fieldset class="field">
                <div class="form">
                    <input type="text" size="50" placeholder="User name" name="Username" maxlength="50"  > </p>
                    <input type="email" size="50" placeholder="E-mail" name="Email" maxlength="50"> </p>
                    <input type="password" size="50" placeholder="Password" name="Password" id="pass" maxlength="50"> </p>
                    <input type="password" size="50" placeholder="Re Password" name="repassword"> </p>

                    <button type="submit" class="but"> Register </button> </p>

                    <a href="login.jsp" style="text-decoration-line:none;"> Click here to Login </a> <br/> <br/>
                </div>
            </fieldset>
        </form>
    </body>
</htmlt>