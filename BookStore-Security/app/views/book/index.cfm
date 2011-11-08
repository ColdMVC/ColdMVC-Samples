<cfoutput>
<!--- isAllowed(resource, permission) --->
<cfif isAllowed("book", "add")>
	<a href="#linkTo({action='add'})#">Add a Book</a>
</cfif>

<!--- you can also use a short form of resource.permission --->
<cfif isAllowed("book.list")>
	<a href="#linkTo({action='list'})#">List All Books</a>
</cfif>
</cfoutput>