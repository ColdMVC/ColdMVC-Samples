<cfoutput>
<c:each in="#paginator#" value="post">
	<cfinclude template="_post.cfm" />
</c:each>

<cfif paginator.getRecordCount() eq 0>
	There are no posts
</cfif>

<br />

<cfset page = paginator.getPage() />
<cfif page lt paginator.getPageCount()>
	<cfset next = page + 1 />	<a href="?page=#next#">Older Posts</a></cfif><cfif page gt 1>
	<cfset previous = page - 1 />	<a href="?page=#previous#">Newer Posts</a></cfif>
</cfoutput>