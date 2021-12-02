
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
	                    email:true
	                },
	    			"Password": {
	    				required: true,
	    				minlength: 6
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
	                    email: "Email is invalid"
	                },
	                Password: {
	                    required: "The field is required",
	                    minlength: "Minlength is 6"
	                },
	                repassword: {
	                    minlength: "Minlength is 6",
	                    equalTo: "Must be same password"
	                }
	            }
	    	});

	    });







