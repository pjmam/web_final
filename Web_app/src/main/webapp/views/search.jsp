<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search</title>
<style>
hr {
	width: 95%;
}

.view-body .title {
	margin-left: 2.5%;
}

.field {
	margin: 0 2.5% 0 2.5%;
	border: 2px solid #DDDDDD;
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	border-top-width: 2px;
}

.form {
	margin-top: 10px;
}

.view-body {
	display: block;
}

.view-body .view {
	margin: 0 2.5% 0 2.5%;
	margin-top: 20px;
	border: 2px solid #DDDDDD;
	background-color: #f5f5f5;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-width: 0px;
}

.form table {
	border-collapse: collapse;
	border: 2px solid #DDDDDD;
	width: 100%;
}

.field table tr {
	text-align: left;
}

.field table th, td {
	padding: 7px;
	border: 2px solid #DDDDDD;
}

.view .list {
	padding-top: 5px;
}

table tbody tr:nth-child(odd) {
	background-color: #f9f9f9;
}

table tbody {
	word-break: break-word;
}
</style>
</head>
<body>
	<div class="view-body">
		<div class="title">
			<h1>Search Content</h1>
		</div>
		<hr>
		<h2>${mess}</h2>
		<fieldset class="view">
			<div class="list">Search Content List</div>
		</fieldset>
		<fieldset class="field">
			<div class="form">
				<table class="view-content" border="1">
					<thead>
						<tr>
							<th>#</th>
							<th>Title</th>
							<th>Brief</th>
							<th>Created Date</th>
						</tr>
					</thead>

					<c:forEach var="row" items="${listSearch}">
						<tbody>
							<tr>
								<td><c:out value="${row.id}" /></td>
								<td><c:out value="${row.title}" /></td>
								<td><c:out value="${row.brief}" /></td>
								<td><c:out value="${row.createDate}" /></td>
								<td><a href="editcontent?action=edit&id=${row.id}">Edit</a>
									<a href="removecontent?action=remove&id=${row.id}">Delete</a></td>
							</tr>
						</tbody>
					</c:forEach>
				</table>

				<c:if test="${currentPage != 1}">
					<td><a href="ViewContentServlet?page=${currentPage - 1}">Previous</a></td>
				</c:if>

				<%--For displaying Page numbers. 
    The when condition does not display a link for the current page--%>
				<table class="page" style="border: 2px solid #DDDDDD" border="1">
					<tr>
						<c:forEach begin="1" end="${noOfPages}" var="i">
							<c:choose>
								<c:when test="${currentPage eq i}">
									<td>${i}</td>
								</c:when>
								<c:otherwise>
									<td><a href="ViewContentServlet?page=${i}">${i}</a></td>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tr>
				</table>

				<%--For displaying Next link --%>
				<c:if test="${currentPage lt noOfPages}">
					<td><a href="ViewContentServlet?page=${currentPage + 1}">Next</a></td>
				</c:if>
			</div>

		</fieldset>
	</div>
</body>
</html>