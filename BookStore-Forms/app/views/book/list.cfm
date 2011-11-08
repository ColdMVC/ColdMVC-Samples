<cfoutput>
<table>
	<thead>
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Author</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
		</tr>
	</thead>
	<tbody>
		<c:each in="#books#" do="book">
			<tr>
				<td><a href="#linkTo({action='show', id=book})#">#book.id()#</a></td>
				<td>#escape(book.title())#</td>
				<td>#escape(book.author())#</td>
				<td><a href="#linkTo({action='edit', id=book})#">Edit</a></td>
				<td><a href="#linkTo({action='delete', id=book})#">Delete</a></td>
			</tr>
		</c:each>
	</tbody>
</table>

<a href="#linkTo({action='add'})#">Add a Book</a>
</cfoutput>