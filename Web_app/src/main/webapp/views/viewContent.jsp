<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
</head>
<body>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

<div class="view-body">
	<div class="title">
		<h1>View Content</h1>
	</div>
	<hr>
	<fieldset class="view">
		<div class="list">View Content List</div>
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
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="id" value="${(currentPage-1)*10+1}" />
					<c:forEach var="content" items="${viewcontentList}">
						<tr>
							<td>${id}</td>
							<td>${content.title}</td>
							<td>${content.brief}</td>
							<td>${content.createDate}</td>
							<td><a href="editcontent?action=edit&id=${content.id}">Edit</a>
								<a href="removecontent?action=remove&id=${content.id}">Delete</a></td>
							<c:set var="id" value="${id+1}" />
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<!-- Nut Previous-->
			<c:if test="${currentPage != 1}">
				<td><a href="ViewContentServlet?page=${currentPage - 1}">Previous</a></td>
			</c:if>

			<br>
			<table class="page" border="1">
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

			<%-- Nut Next --%>
			<c:if test="${currentPage lt noOfPages}">
				<td><a href="ViewContentServlet?page=${currentPage + 1}">Next</a></td>
			</c:if>
		</div>
	</fieldset>
</div>

