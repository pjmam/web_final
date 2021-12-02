<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resoure/style.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resoure/style1.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resoure/viewContent.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resoure/addContent.css"/>" />
<script src="<c:url value="jsFiles/addContent.js" />"></script>
<script src="<c:url value="jsFiles/edit.js" />"></script>
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	
	margin: 0;
}

header {
	text-align: center;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

aside {
	
	float: left;
	overflow:auto;
	display:block;
	
}

section {
	float: left;
	padding-left: 205px;
	width: 100%;
	height:100%;
}
</style>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>

	<div class="row">
		<aside>
			<tiles:insertAttribute name="menu" />
		</aside>
		<section>
			<tiles:insertAttribute name="body" />
		</section>
	</div>

	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="<c:url value="/assets/js/main.js" />">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script>
                var viewContentBar = document.querySelector('.nava');
                var viewContent = document.querySelector('section');
                viewContentBar.onclick = function(e) {
                    viewContent.innerHTML = 'Loading';
                    viewContent.style.fontSize = '28px';
                    viewContent.style.margin = '40px';
                    viewContent.style.lineHeight = '26px';
                    e.preventDefault();
                    var serviceURL = '/Web_app/ViewContentServlet';
                    var model = null;
                    setTimeout(function() {
                        $.ajax({
                            type: "GET",
                            url: serviceURL,
                            data: JSON.stringify(model),
                            contentType: "application/json; charset=utf-8",
                            dataType: 'html',
                            success: function(data) {
                                $('body').load(serviceURL);
                            },
                            error: function(data, errorThrown) {
                                alert(errorThrown);
                            }
                        });
                    }, 5000);
                }
            </script>
	
</body>
</html>