<cfoutput>
<c:form action="update" bind="post" label="Edit Post">
	<c:hidden name="id" />
	<c:input name="title" />
	<c:textarea name="body" />
	<c:input name="categories" value="#post.categoryList()#" />
	<c:buttons>
		<c:submit />
		<a href="#linkTo({action='index'})#">Cancel</a>
	</c:buttons>
</c:form>
</cfoutput>