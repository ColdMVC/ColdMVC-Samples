<cfoutput>
<c:form action="save" bind="book">
	<c:input name="title" />
	<c:input name="author" />
	<c:textarea name="description" />
	<c:submit label="Add Book" />
	<a href="#linkTo({action='list'})#">Back to List</a>
</c:form>
</cfoutput>