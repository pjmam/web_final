<div class="sidebar">
	<form action="<%=request.getContextPath()%>/SearchController" method="post">
		<div class="search-container">

			<input type="text" id="mySearch" placeholder="Search.." name="search" >
			<button class="btnsearch" type="submit"><i class="fa fa-search"></i>
			</button>

		</div>
	</form>
	<a href="/Web_app/ViewContentServlet" class="nava"><i class="fa fa-table">View contents</i></a> 
	<a href="addContent.tiles"><i class="fa fa-edit">Form content</i></a>

</div>