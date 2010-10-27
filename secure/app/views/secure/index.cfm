This app demonstrates how you can secure resources using the Security plugin.

<cfoutput>
<br /><br />
<a href="#linkTo({action='guest'})#">Login as a Guest</a>
<br />
Guests can only see the "Home" tab. The "Widgets" and "Gadgets" tabs should be hidden.
<br />
<br />
<a href="#linkTo({action='basic'})#">Login as a Basic User</a>
<br />
Basic users have read-only access to the application. They should see 3 tabs above.
<br />
<br />
<a href="#linkTo({action='admin'})#">Login as a Super Admin</a>
<br />
Admin users have edit access to everything. They should see 3 tabs above.
<br />
<br />
<a href="#linkTo({controller='widget'})#">View Widgets</a>
<br />
Try to view widgets. If you're logged in as a guest, you should be redirected back to this page.
<br />
<br />
<cfif currentUser.hasAccess("widget", "list")>
	This message should only show up for users that can see the list of widgets. Basic users and super admins should see this message.
</cfif>
<br />
<br />
<cfif currentUser.hasAccess("widget", "edit")>
	This message should only show up for users that have access to edit widgets. Only super admins should see this message.
</cfif>
</cfoutput>