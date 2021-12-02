<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<div class="add-content">
		
	<c:if test="${ param.action=='edit' }">
		<h1 class="text-add-content">Edit Content</h1>
	</c:if>
	<c:if test="${ empty param.action }">
		<h1 class="text-add-content">Add Content</h1>
	</c:if>
	<hr>
	<c:if test="${ param.action=='edit' }">
		<form class="form-add-content" method="post" action="editcontent">
	</c:if>
	<c:if test="${ empty param.action }">
		<form class="form-add-content" method="post" action="addcontent">
	</c:if>
	
		<p class="title">Content Form Elements</p>
		<div class="row-form" style="display: none">
			<input type="text" class="textbox" 
				id="idcontent" name="idcontent"  value="${content.id}">
		</div>
		<div class="row-form">
			<label for="title">Title</label> 
			<input type="text" class="textbox"
				id="title" name="title" placeholder="Enter the title" value="${content.title}">
			<p id="mes1" class="mes">Required number of characters : 10 - 200</p>
		</div>
		<div class="row-form">
			<label for="brief">Brief</label>
			<textarea name="brief" id="brief" rows="3" class="textbox" >${content.brief}</textarea>
			<p id="mes2" class="mes">Required number of characters : 30 - 150 </p>
		</div>
		<div class="row-form">
			<label for="content">Content</label>
			<textarea name="content" id="content" rows="8" class="textbox" >${content.content}</textarea>
			<p id="mes3" class="mes">Required number of characters : 50 - 1000 </p>
		</div>
		<div class="row-form">
			<button type="submit" class="button"
				onclick="checkFormContent(event)">Submit Button</button>
			<button type="reset" class="button" 
				onclick="resetAll()">Reset Button</button>
		</div>
	</form>
</div>