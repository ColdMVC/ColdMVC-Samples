<cfoutput>
<c:each in="#posts#" value="post">
	<cfinclude template="_post.cfm" />
</c:each>

<cfif arrayIsEmpty(posts)>
	There are no posts
</cfif>

<br />

</cfoutput>