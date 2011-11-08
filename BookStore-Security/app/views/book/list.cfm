<cfoutput>
<table>
	<thead>
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Author</th>
			<th>Created By</th>
			<th>View</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
	</thead>
	<tbody>
		<c:each in="#books#" do="book">
			<tr>
				<td>#book.id()#</td>
				<td>#escape(book.title())#</td>
				<td>#escape(book.author())#</td>
				<td>#escape(book.createdBy().name())#</td>
				<td>
					<cfif isAllowed(book, "view")>
						<a href="#linkTo({action='show', id=book})#">View</a>
					</cfif>
				</td>
				<td>
					<cfif isAllowed(book, "edit")>
						<a href="#linkTo({action='edit', id=book})#">Edit</a>
					</cfif>
				</td>
				<td>
					<cfif isAllowed(book, "delete")>
						<a href="#linkTo({action='delete', id=book})#">Delete</a>
					</cfif>
				</td>
			</tr>
		</c:each>
	</tbody>
</table>

<cfif isAllowed("book.add")>
	<a href="#linkTo({action='add'})#">Add a Book</a>
</cfif>
</cfoutput>