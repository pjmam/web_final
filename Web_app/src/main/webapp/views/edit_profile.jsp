<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style> 
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}
button{
  cursor: pointer;
}

/* Edit profile and Add content */

 .add-content{
    /* background-color: brown; */
    /* float: left; */
    flex: 5;  
}
 .add-content .text-add-content{
    margin: 16px 32px;
    padding: 8px 0px;
    border-bottom:1px solid rgb(238, 238, 238);
    font-weight: 540;
}
 .add-content .form-add-content{
    margin: 16px 32px;
    border: 1px solid rgb(221, 221, 221);
}
 .add-content .title{
    padding: 12px 16px;
    border-bottom: 1px solid rgb(221, 221, 221);
    background-color: rgb(245, 245, 245);
}
 .add-content .row-form{
    padding: 12px 16px;
}
 .add-content label{
    display: block;
    font-weight: 550 ;
    margin-bottom: 8px;
}
 .add-content .textbox{
    width: 75%;
    min-height: 32px;
    border: 1px solid rgb(204, 204,204);
    border-radius: 4px;
    padding: 4px 12px;
    
}
 .add-content .button{
    border: 1px solid rgb(204, 204,204);
    border-radius: 4px;
    background-color: white;
    padding: 8px 16px;
    margin-top: -8px;
    cursor: pointer;
}
.add-content .mes{
    color: red;
    margin : 4px 0px 0px 4px ;
    display: none;
} 
.add-content .mes.show{
    display: block;
}
label.error{
			color: red;
		}
	</style>

	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
	<script >
	    $().ready(function() {
	    	$("#edit_form").validate({
	    		onfocusout: false,
	    		onkeyup: false,
	    		onclick: false,
	    		rules: {
	    			"Firstname": {
	    				required: true,
	    				maxlength: 30
	    			},
	                "Lastname":{
	                    required: true,
	                    maxlength: 30
	                },
	    			"Phone": {
	    				required: true,
	    				minlength: 9,
	    				maxlength: 13
	    			},
	    			"Description": {
	    				required: true,
	    				minlength: 10,
	    				maxlength: 200
	    			}
	    		},
	            messages:{
	                Firstname: {
	                    required: "The field is required",
	                    maxlength: "maxlength is 30"
	                },
	                Lastname: {
	                    required : "The field is required",
	                    maxlength: "maxlength is 30"
	                },
	                Phone: {
	                    required: "The field is required",
	                    minlength: "must be 9 to 13 ",
	                    maxlength: "must be 9 to 13 "
	                },
	                Description: {
	                    required: "The field is required",
	                    minlength: "minlength is 10",
	                    maxlength: "maxlength is 200"
	                }
	            }
	    	});
	    });
	    </script>
	    
  
    <title>Edit Profile</title>
</head>
<body>
    <div id="main">
  
            <div class="add-content">
                <h1 class="text-add-content">Edit profile</h1>
                <form action = "edit_profile" method="post" class="form-add-content" id="edit_form">
                    <p class="title">Profile Form Elements</p>                  
					
					
                    <div class="row-form">                                      
                        <label for="fname">First Name</label>
                        <input type="text" class="textbox" id="fname" name="Firstname" placeholder="Enter the first name " maxlength="50" value="${member_edit.firstName}"/> 
                    	<p id="mes1" class="mes">Required characters : 3 - 30</p>
                    </div>
                    
                    <div class="row-form">
                        <label for="lname">Last Name</label>
                        <input type="text" class="textbox" id="lname" name="Lastname" placeholder="Enter the last name" maxlength = "50" value="${member_edit.lastName}"/>
                    	<p id="mes2" class="mes">Required characters : 3 - 30</p>
                    </div>
                    
                    <div class="row-form">
                        <label for="email">Email</label>
                        <p><% String name = (String) session.getAttribute("emailS"); out.print(name);%></p>
                    </div>
                    
                    <div class="row-form">
                        <label for="phone">Phone</label>
                        <input type="text" class="textbox" id="phone" name="Phone" placeholder="Enter your phone number" value="${member_edit.phone}"/>
                    	<p id="mes3" class="mes">must be : 9 - 13</p>
                    </div>
                    
                    <div class="row-form">
                        <label for="des">Description</label>
                        <textarea name="Description" id="des"  rows="3" class="textbox"/> ${member_edit.description} </textarea>
                    	<p id="mes4" class="mes">Required characters : 10 - 200</p>
                    </div>
                    
                    
                    <div class="row-form">
                        <input type="submit" onclick="checkEdit(event)" class="button" value="Submit Button">
                        <input type="reset" class="button" onclick="resetAll()" value="Reset Button">
                    </div>
                    
                </form>
            </div>
       
    </div>
</body>
</html>