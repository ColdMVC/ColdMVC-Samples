<cfoutput>
<c:bind to="book">
	<c:text name="id" />
	<c:text name="title" />
	<c:text name="author" />
	<c:text name="description" />
</c:bind>

<a href="#linkTo({action='edit', id=book})#">Edit</a>
<a href="#linkTo({action='delete', id=book})#">Delete</a>
</cfoutput>