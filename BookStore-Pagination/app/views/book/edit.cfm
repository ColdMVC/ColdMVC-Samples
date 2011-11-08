<cfoutput>
<c:form action="update" bind="book">
	<c:hidden name="id" />
	<c:input name="title" />
	<c:input name="author" />
	<c:textarea name="description" />
	<c:submit label="Update Book" />
	<a href="#linkTo({action='show', id=book})#">Cancel</a>
	<a href="#linkTo({action='list'})#">Back to List</a>
</c:form>
</cfoutput>