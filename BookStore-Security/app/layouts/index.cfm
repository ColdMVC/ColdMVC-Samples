<cfoutput>
<c:doctype />
<c:html>
	<c:head>
		<c:title>My Bookstore</c:title>
	</c:head>
	<c:body>
		<h1>My Bookstore</h1>
		Logged In: #yesNoFormat(isLoggedIn())# (<a href="#linkTo({controller='authentication', action='logout'})#">Logout</a>)
		<br />
		Current Role: #getUser().getRole()#
		<br />
		<br />
		<c:render />
	</c:body>
</c:html>
</cfoutput>