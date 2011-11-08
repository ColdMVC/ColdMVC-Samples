<cfoutput>
<c:bind to="book">
	<c:text name="id" />
	<c:text name="title" />
	<c:text name="author" />
	<c:text name="description" />
</c:bind>

<cfif isAllowed(book, "edit")>
	<a href="#linkTo({action='edit', id=book})#">Edit</a>
</cfif>
<cfif isAllowed(book, "delete")>
	<a href="#linkTo({action='delete', id=book})#">Delete</a>
</cfif>
<a href="#linkTo({action='list'})#">Back to List</a>
</cfoutput>