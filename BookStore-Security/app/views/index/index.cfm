<cfoutput>
Welcome to my bookstore!
<br />
Select a role:
<ul>
	<c:each in="admin,moderator,member" do="role">
		<li><a href="#linkTo({controller='authentication', action='login', username=role, password=role})#">#role#</a></li>
	</c:each>
	<li><a href="#linkTo({controller='authentication', action='logout'})#">guest</a></li>
</ul>

Current Permissions
<table>
	<thead>
		<tr>
			<th>Resource</th>
			<th>Permission</th>
			<th>Allowed</th>
		</tr>
	</thead>
	<tbody>
		<c:each in="list,view,add,edit,delete" do="permission">
			<tr>
				<td>Book</td>
				<td>#permission#</td>
				<td>#yesNoFormat(isAllowed("book", permission))#</td>
			</tr>
		</c:each>
	</tbody>
</table>

<cfoutput>
<cfif isAllowed("book", "add")>
	<a href="#linkTo({controller='book', action='add'})#">Add a Book</a>
</cfif>

<!--- you can also use a short form of resource.permission --->
<cfif isAllowed("book.list")>
	<a href="#linkTo({controller='book', action='list'})#">List All Books</a>
</cfif>
</cfoutput>
</cfoutput>